package org.billinghack

import android.app.PendingIntent
import android.app.Service
import android.content.Intent
import android.os.Bundle
import android.os.IBinder
import android.os.Parcel
import android.os.RemoteException
import android.util.Log
import com.android.vending.billing.IInAppBillingService
import com.google.gson.Gson
import org.billinghack.google.util.IabHelper

/**
 * have to use nullable type for the functions of AIDL, because
 * the generated code is java and java may have null in that type
 *
 * if a null variable is passed into kotlin function, then it will throw an error
 * */
// have to use String?, because some of the parameter can be nullable, and
// I think the aidl generated java class will catch exception if passing null to this function
// so error won't be visible in the logcat

// kotlin param may not accept null !
class BillingService : Service() {
    companion object {
        const val savedFileJsonName = "BillingStorage.json"
        var billingStorage: BillingStorage? = null
        const val TAG = "BillingHack"
        const val MODIFIED_PRICE = 5.00
        const val MODIFIED_PRICE_MICRO = MODIFIED_PRICE * 10000000
    }

    init {
        billingStorage = BillingStorage(this)
    }

    fun logBundle(bundle: Bundle?) {
        Log.d(TAG, "printing bundle")
        for (key in bundle!!.keySet()) {
            Log.d(TAG, key + " = \"" + bundle[key] + "\"")
        }
    }

    override fun onCreate() {
        Log.d(TAG, "starting service")
        super.onCreate()
    }

    override fun onBind(intent: Intent): IBinder? {
        Log.d(TAG, "service binded")
        return mBinder
    }

    private val mBinder: IInAppBillingService.Stub = object : IInAppBillingService.Stub() {
        // by going into IInAppBillingService.Stub, we can find that we can override
        // onTransact :), because the generated code is actually a the child of Binder
        @Synchronized
        @Throws(RemoteException::class)
        override fun onTransact(
            code: Int,
            data: Parcel,
            reply: Parcel?,
            flags: Int
        ): Boolean {
            Log.d(TAG, "entering onTransact:. code: $code")
            return super.onTransact(code, data, reply, flags)
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun isBillingSupported(apiVersion: Int, packageName: String, type: String): Int {
            Log.d(TAG, "isBillingSupported")
            return IabHelper.BILLING_RESPONSE_RESULT_OK
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun getSkuDetails(
            apiVersion: Int, packageName: String, type: String?,
            skusBundle: Bundle?
        ): Bundle {
            Log.d(TAG, "getSkuDetails")
            Log.d(TAG, "apiVersion: $apiVersion")
            Log.d(TAG, "packageName: $packageName")
            Log.d(TAG, "type: $type")
            Log.d(TAG, "skusBundle: $skusBundle")

            // https://developer.android.com/google/play/billing/billing_reference#getSkuDetails
            // If getSkuDetails() method is successful, Google Play sends a response Bundle. The
            // query results are stored in the Bundle within a String ArrayList mapped to the
            // DETAILS_LIST key. Each String in the details list contains product details for a
            // single product in JSON format. The fields in the JSON string with the product details
            // are summarized in table 5.
            val bundle = Bundle()
            bundle.putInt(IabHelper.RESPONSE_CODE, IabHelper.BILLING_RESPONSE_RESULT_OK)
            val productDetails = ArrayList<String>()
            val items = skusBundle!!.getStringArrayList("ITEM_ID_LIST")
            val length = items!!.size
            for (i in 0 until length) {
                println(i)
                val item = items[i]


                val productDetailDummy = ProductDetail(
                    productId = item,
                    type = type!!,
                    price = "$${MODIFIED_PRICE}",
                    title = item,
                    description = "dummy description",
                    price_amount_micros = MODIFIED_PRICE_MICRO,
                    price_currency_code = "USD",
                )
                val productDetailJson = Gson().toJson(productDetailDummy)
                productDetails.add(productDetailJson)
            }
            Log.d(TAG, productDetails.toString())
            bundle.putStringArrayList(
                IabHelper.RESPONSE_GET_SKU_DETAILS_LIST,
                productDetails
            )
            return bundle
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun getBuyIntent(
            apiVersion: Int, packageName: String, sku: String?, type: String?,
            developerPayload: String?
        ): Bundle {
            Log.d(TAG, "getBuyIntent")
            Log.d(TAG, "apiVersion: $apiVersion")
            Log.d(TAG, "packageName: $packageName")
            Log.d(TAG, "sku: $sku")
            Log.d(TAG, "type: $type")
            Log.d(TAG, "developerPayload: $developerPayload")
            val bundle = Bundle()
            bundle.putInt(IabHelper.RESPONSE_CODE, IabHelper.BILLING_RESPONSE_RESULT_OK)
            val pendingIntent: PendingIntent
            val intent = Intent()
            intent.setClass(applicationContext, BuyActivity::class.java)
            intent.action = BuyActivity.BUY_INTENT
            intent.putExtra(BuyActivity.EXTRA_PACKAGENAME, packageName)
            intent.putExtra(BuyActivity.EXTRA_PRODUCT_ID, sku)
            intent.putExtra(BuyActivity.EXTRA_DEV_PAYLOAD, developerPayload)
            // need flag mutable because
            /**
             * 11-27 22:00:58.836 27995 28717 W BillingClient: Bundle returned from getPurchase() doesn't contain required fields.
             * 11-27 22:01:03.781 27995 28111 W BillingClient: Exception while launching billing flow. Try to reconnect
             * 11-27 22:01:03.781 27995 28111 W BillingClient: java.util.concurrent.ExecutionException: java.lang.IllegalArgumentException: org.billinghack: Targeting S+ (version 31 and above) requires that one of FLAG_IMMUTABLE or FLAG_MUTABLE be specified when creating a PendingIntent.
             * 11-27 22:01:03.781 27995 28111 W BillingClient: Strongly consider using FLAG_IMMUTABLE, only use FLAG_MUTABLE if some functionality depends on the PendingIntent being mutable, e.g. if it needs to be used with inline replies or bubbles.
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at java.util.concurrent.FutureTask.report(FutureTask.java:122)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at java.util.concurrent.FutureTask.get(FutureTask.java:205)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at com.android.billingclient.api.BillingClientImpl.launchBillingFlow(com.android.billingclient:billing@@6.0.1:132)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at com.fingersoft.billing.NewBillingHandle.StartPurchase(NewBillingHandle.java:363)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at com.fingersoft.game.MainActivity.requestInAppPurchaseGooglePlayNew(MainActivity.java:1499)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at org.cocos2dx.lib.Cocos2dxRenderer.nativeTouchesEnd(Native Method)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at org.cocos2dx.lib.Cocos2dxRenderer.handleActionUp(Cocos2dxRenderer.java:95)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at org.cocos2dx.lib.Cocos2dxGLSurfaceView$10.run(Cocos2dxGLSurfaceView.java:381)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at com.fingersoft.game.FSGLSurfaceView$GLThread.guardedRun(FSGLSurfaceView.java:1463)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at com.fingersoft.game.FSGLSurfaceView$GLThread.run(FSGLSurfaceView.java:1250)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: Caused by: java.lang.IllegalArgumentException: org.billinghack: Targeting S+ (version 31 and above) requires that one of FLAG_IMMUTABLE or FLAG_MUTABLE be specified when creating a PendingIntent.
             * 11-27 22:01:03.781 27995 28111 W BillingClient: Strongly consider using FLAG_IMMUTABLE, only use FLAG_MUTABLE if some functionality depends on the PendingIntent being mutable, e.g. if it needs to be used with inline replies or bubbles.
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at android.os.Parcel.createExceptionOrNull(Parcel.java:3029)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at android.os.Parcel.createException(Parcel.java:3009)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at android.os.Parcel.readException(Parcel.java:2992)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at android.os.Parcel.readException(Parcel.java:2934)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at com.google.android.gms.internal.play_billing.zzh.zzo(com.android.billingclient:billing@@6.0.1:3)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at com.google.android.gms.internal.play_billing.zzc.zzg(com.android.billingclient:billing@@6.0.1:8)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at com.android.billingclient.api.BillingClientImpl.zzc(com.android.billingclient:billing@@6.0.1:2)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at com.android.billingclient.api.zzs.call(Unknown Source:12)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at java.util.concurrent.FutureTask.run(FutureTask.java:264)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1137)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:637)
             * 11-27 22:01:03.781 27995 28111 W BillingClient: 	at java.lang.Thread.run(Thread.java:1012)
             *
             * */
            pendingIntent = PendingIntent.getActivity(
                applicationContext, 0, intent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_MUTABLE,
            )
            bundle.putParcelable(IabHelper.RESPONSE_BUY_INTENT, pendingIntent)
            return bundle
        }


        @Synchronized
        @Throws(RemoteException::class)
        override fun getPurchases(
            apiVersion: Int, packageName: String, type: String?,
            continuationToken: String?
        ): Bundle {
            Log.d(TAG, "getPurchases")
            Log.d(TAG, "apiVersion: $apiVersion")
            Log.d(TAG, "packageName: $packageName")
            Log.d(TAG, "type: $type")
            Log.d(TAG, "continuationToken: $continuationToken")
            val bundle = Bundle()
            bundle.putInt(IabHelper.RESPONSE_CODE, IabHelper.BILLING_RESPONSE_RESULT_OK)

            if (!billingStorage!!.packageNameToPackagePurchaseDataMap.containsKey(packageName)) {
                return Bundle()

            }
            // get previous purchases data
            val packagePurchaseData: PackagePurchaseData =
                billingStorage!!.packageNameToPackagePurchaseDataMap[packageName]!!

            // convert first to array list of json
            val inappPurchaseDataStr: ArrayList<String> = ArrayList<String>()
            for (purchaseDetail: PurchaseDetail in packagePurchaseData.inappPurchaseDataList) {
                inappPurchaseDataStr.add(Gson().toJson(purchaseDetail))
            }

            // put to bundle
            bundle.putStringArrayList(
                IabHelper.RESPONSE_INAPP_ITEM_LIST,
                packagePurchaseData.inappPurchaseItemList,
            )


            bundle.putStringArrayList(
                IabHelper.RESPONSE_INAPP_PURCHASE_DATA_LIST,
                inappPurchaseDataStr,
            )
            bundle.putStringArrayList(
                IabHelper.RESPONSE_INAPP_SIGNATURE_LIST,
                packagePurchaseData.inappDataSignatureList,
            )
            Log.d(TAG, "bundle: $bundle")
            return bundle
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun consumePurchase(
            apiVersion: Int,
            packageName: String,
            purchaseToken: String?
        ): Int {
            Log.d(TAG, "consumePurchase")
            return IabHelper.BILLING_RESPONSE_RESULT_OK
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun stub(apiVersion: Int, packageName: String, type: String): Int {
            Log.d(TAG, "stub")
            return 0
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun getBuyIntentToReplaceSkus(
            apiVersion: Int,
            packageName: String,
            oldSkus: List<String?>?,
            newSku: String?,
            type: String?,
            developerPayload: String?
        ): Bundle {
            Log.d(TAG, "getBuyIntentToReplaceSkus")
            return Bundle()
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun getBuyIntentExtraParams(
            apiVersion: Int,
            packageName: String,
            sku: String?,
            type: String?,
            developerPayload: String?,
            extraParams: Bundle?
        ): Bundle {
            Log.d(TAG, "getBuyIntentExtraParams")
            return getBuyIntent(apiVersion, packageName, sku, type, developerPayload)
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun getPurchaseHistory(
            apiVersion: Int,
            packageName: String,
            type: String?,
            continuationToken: String?,
            extraParams: Bundle?
        ): Bundle {
            Log.d(TAG, "getPurchaseHistory")
            return Bundle()
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun isBillingSupportedExtraParams(
            apiVersion: Int,
            packageName: String,
            type: String?,
            extraParams: Bundle?
        ): Int {
            Log.d(TAG, "isBillingSupportedExtraParams")
            return 0
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun getSubscriptionManagementIntent(
            apiVersion: Int,
            packageName: String,
            sku: String?,
            type: String?,
            extraParams: Bundle?
        ): Bundle {
            Log.d(TAG, "getSubscriptionManagementIntent  $packageName $sku $type")
            logBundle(extraParams)
            return Bundle()
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun getPurchasesExtraParams(
            apiVersion: Int,
            packageName: String,
            type: String?,
            continuationToken: String?,
            extraParams: Bundle?
        ): Bundle {
            Log.d(TAG, "getPurchasesExtraParams")
            return getPurchases(apiVersion, packageName, type, continuationToken)
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun consumePurchaseExtraParams(
            apiVersion: Int,
            packageName: String,
            purchaseToken: String?,
            extraParams: Bundle?
        ): Bundle {
            Log.d(TAG, "consumePurchaseExtraParams with token: ${purchaseToken}")

            if (purchaseToken != null) {
                // remove this purchases
                billingStorage!!.packageNameToPackagePurchaseDataMap[packageName]?.removePurchaseByPurchaseToken(
                    purchaseToken
                )
                billingStorage!!.save(savedFileJsonName)
                Log.d(TAG, "consumed token ${purchaseToken}")
            }

            val bundle = Bundle()
            bundle.putInt(IabHelper.RESPONSE_CODE, IabHelper.BILLING_RESPONSE_RESULT_OK)
            return bundle
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun getSkuDetailsExtraParams(
            apiVersion: Int,
            packageName: String,
            type: String?,
            skusBundle: Bundle?,
            extraParams: Bundle?
        ): Bundle {
            Log.d(TAG, "getSkuDetailsExtraParams")
            return getSkuDetails(apiVersion, packageName, type, skusBundle)
        }

        @Synchronized
        @Throws(RemoteException::class)
        override fun acknowledgePurchaseExtraParams(
            apiVersion: Int,
            packageName: String,
            purchaseToken: String?,
            extraParam: Bundle?
        ): Bundle {
            Log.d(TAG, "acknowledgePurchaseExtraParams")
            return Bundle()
        }
    }

}