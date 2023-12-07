package org.billinghack

import android.content.Context
import android.util.Log
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import java.io.File

/**
 * to store past purchases into JSON
 * */
class BillingStorage(val context: Context) {

    private val packageNameToPackagePurchaseDataMapType: TypeToken<MutableMap<String, PackagePurchaseData>> =
        object : TypeToken<MutableMap<String, PackagePurchaseData>>() {}

    var packageNameToPackagePurchaseDataMap: MutableMap<String, PackagePurchaseData> =
        HashMap<String, PackagePurchaseData>()


    fun save(jsonFileName: String) {

        val internalStoragePath: File = context.filesDir
        val jsonFile: File = File(internalStoragePath, jsonFileName)

        Log.d(BillingService.TAG, "saving purchases to ${jsonFile.toString()}")
        val jsonStr = Gson().toJson(this.packageNameToPackagePurchaseDataMap)
        jsonFile.writeText(jsonStr)
    }

    fun load(jsonFileName: String) {
        val internalStoragePath: File = context.filesDir
        val jsonFile: File = File(internalStoragePath, jsonFileName)

        Log.d(BillingService.TAG, "loading purchases from ${jsonFile.toString()}")
        val jsonStr: String = jsonFile.readText()

        packageNameToPackagePurchaseDataMap =
            Gson().fromJson(jsonStr, packageNameToPackagePurchaseDataMapType)

    }

}