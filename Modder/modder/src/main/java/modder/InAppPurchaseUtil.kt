package modder

import apktool.kotlin.lib.Apktool
import java.io.File

class InAppPurchaseUtil {
    companion object {
        val ORIGINAL_BILLING_CLIENT_FOLDER_PATH = "com/android/billingclient/api/"
        val ORIGINAL_PACKAGE_NAME = "\"com.android.vending\""
        val ORIGINAL_SERVICE_TO_CONNECT_TO_NAME = "\"com.android.vending.billing.InAppBillingService.BIND\""

        val BILLING_HACK_PACKAGE_NAME: String = "\"org.billinghack\""
        val BILLING_HACK_SERVICE_TO_CONNECT_TO_NAME = "\"org.billinghack.BillingService.BIND\""

        val PERMISSION_QUERY_ALL_PACKAGE: String = "android.permission.QUERY_ALL_PACKAGES"

        fun patchStringContent(content: String, redirectToLuckyPatcher: Boolean = false): String {
            // replace the string
            var newPackageName = ""

            val originalServiceToConnectToName = "\"com.android.vending.billing.InAppBillingService.BIND\""
            var newServiceToConnectToName = ""
            if (redirectToLuckyPatcher) {
                newPackageName = "\"com.android.vending.billing.InAppBillingService.BINN\""
                newServiceToConnectToName = "\"com.android.vending.billing.InAppBillingService.BINN\""
            } else {
                // redirect purchases to our own
                newPackageName = BILLING_HACK_PACKAGE_NAME
                newServiceToConnectToName = BILLING_HACK_SERVICE_TO_CONNECT_TO_NAME

            }

            var newText = content.replace(ORIGINAL_PACKAGE_NAME, newPackageName)
            newText = newText.replace(originalServiceToConnectToName, newServiceToConnectToName)
            return newText
        }

        fun findBillingClientEntryFile(apktool: Apktool): File? {

            var billingClientPurchaseFile: File? = null
            val decompiledFiles: Array<File> = apktool.decompilationFolder!!.listFiles()!!
            // ============== begin the patch process ================
            // make sure we found billing client library
            apktool.IterateSmaliClassesFolder {

                val currentFolder = File(it.toString(), ORIGINAL_BILLING_CLIENT_FOLDER_PATH)
                // make sure folder  exist
                if (currentFolder.exists()) {
                    val billingClientFiles: Array<File> = currentFolder!!.listFiles()!!
                    // for folder, find the exact and replace
                    for (f in billingClientFiles) {
                        // write
                        val text: String = f.readText()
                        // if it contains the playstore package and service, then it is the code
                        // where billing client start connections to connect to playstore
                        if (text.contains(ORIGINAL_PACKAGE_NAME) && text.contains(ORIGINAL_SERVICE_TO_CONNECT_TO_NAME)) {
                            billingClientPurchaseFile = f
                            // exit early
                            return@IterateSmaliClassesFolder
                        }
                    }
                }
            }

            // still haven't found file to patch in default location
            // try all files to check all files in case  the name is obfuscated
            if (billingClientPurchaseFile == null) {
                println("${ORIGINAL_BILLING_CLIENT_FOLDER_PATH} not found, billing client seems to be obfuscated, trying another way ... ")
                apktool.IterateSmaliClassesFolder {
                    File(it.toString()).walkTopDown().forEach { f: File ->
                        if (f.isFile) {
                            println("checking: ....${f}")
                            val text: String = f.readText()
                            if (text.contains(ORIGINAL_PACKAGE_NAME) && text.contains(ORIGINAL_SERVICE_TO_CONNECT_TO_NAME)) {
                                billingClientPurchaseFile = f
                                // exit early
                                return@IterateSmaliClassesFolder
                            }
                        }

                    }
                }
            }
            return billingClientPurchaseFile

        }

        fun patchApk(apktool: Apktool, redirectToLuckyPatcher: Boolean = false): Boolean {
            val billingClientEntryFile = findBillingClientEntryFile(apktool)
            if (billingClientEntryFile == null) {
                return false
            }
            val text: String = billingClientEntryFile.readText()
            var newText = patchStringContent(text, redirectToLuckyPatcher)
            // write back changes when succsess
            if (text != newText) {
                println("writing to ${billingClientEntryFile.absolutePath}")
                billingClientEntryFile.printWriter().use { out ->
                    out.print(newText)
                }
            } else {
                println("nothing is patched :(")
                return false
            }

            println("injecting permission")
            // inject permission so our patched apk can make requests to purchase server
            // https://stackoverflow.com/questions/17316232/how-to-start-android-service-from-another-android-app
            // https://stackoverflow.com/questions/65629268/queryintentactivities-returning-empty-list-in-android-11

            apktool.injectPermissionName(PERMISSION_QUERY_ALL_PACKAGE)
            return true

        }
    }

}