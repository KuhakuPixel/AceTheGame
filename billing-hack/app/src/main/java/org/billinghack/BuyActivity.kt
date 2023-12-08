package org.billinghack

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.Button
import com.google.gson.Gson
import org.billinghack.google.util.IabHelper

class BuyActivity : Activity() {

    fun onClickYes(packageName: String, productId: String, devPayload: String?) {
        // generate inapp purchase data :)
        val purchaseDetail = PurchaseDetail(
            productId = productId,
            orderId = Util.randomString(25),
            packageName = packageName,
            purchaseTime = System.currentTimeMillis().toInt(),
            purchaseToken = Util.randomString(25),
            purchaseState = PurchaseDetail.ITEM_BOUGHT,
            developerPayload = devPayload,
        )
        val purchaseDetailJsonString: String = Gson().toJson(purchaseDetail)
        Log.d(TAG, "INAPP_PURCHASE_DATA:\n ${purchaseDetailJsonString}")
        // ========================== store result =========================

        // initialize if previously doesn't exist
        if (!BillingService.billingStorage!!.packageNameToPackagePurchaseDataMap.containsKey(
                packageName
            )
        ) {
            BillingService.billingStorage!!.packageNameToPackagePurchaseDataMap[packageName] =
                PackagePurchaseData()
        }
        // add purchase
        BillingService.billingStorage!!.packageNameToPackagePurchaseDataMap[packageName]!!.addPurchase(
            purchaseDetail = purchaseDetail,
            purchaseSignature = Util.randomString(25),
        )

        BillingService.billingStorage!!.save(BillingService.savedFileJsonName)

        // send back the result
        val data = Intent()
        val extras = Bundle()
        extras.putInt(IabHelper.RESPONSE_CODE, IabHelper.BILLING_RESPONSE_RESULT_OK)
        extras.putString(IabHelper.RESPONSE_INAPP_PURCHASE_DATA, purchaseDetailJsonString)
        extras.putString(IabHelper.RESPONSE_INAPP_SIGNATURE, "")
        data.putExtras(extras)
        setResult(RESULT_OK, data)
        finish()

    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (BUY_INTENT == intent.action) {
            Log.d(TAG, "Buy intent!")
            setContentView(R.layout.buy_dialog)
            // get params
            val packageName = intent.extras!!.getString(EXTRA_PACKAGENAME)
            val productId = intent.extras!!.getString(EXTRA_PRODUCT_ID)
            val devPayload = intent.extras!!.getString(EXTRA_DEV_PAYLOAD)
            //
            Log.d(TAG, "packageName: $packageName")
            Log.d(TAG, "productId: $productId")
            Log.d(TAG, "devPayload: $devPayload")
            val btnYes = findViewById<View>(R.id.button_yes) as Button
            val btnNo = findViewById<View>(R.id.button_no) as Button
            btnYes.setOnClickListener {
                onClickYes(
                    packageName = packageName!!,
                    productId = productId!!,
                    devPayload = devPayload,
                )
            }
            btnNo.setOnClickListener {
                val data = Intent()
                val extras = Bundle()
                extras.putInt(
                    IabHelper.RESPONSE_CODE,
                    IabHelper.BILLING_RESPONSE_RESULT_USER_CANCELED
                )
                data.putExtras(extras)
                setResult(RESULT_CANCELED, data)
                finish()
            }
        } else {
            finish()
        }
    }

    companion object {
        const val TAG = "BillingHack"
        const val BUY_INTENT = "org.billinghack.BUY"
        const val EXTRA_PACKAGENAME = "packageName"
        const val EXTRA_PRODUCT_ID = "product"
        const val EXTRA_DEV_PAYLOAD = "payload"
    }
}