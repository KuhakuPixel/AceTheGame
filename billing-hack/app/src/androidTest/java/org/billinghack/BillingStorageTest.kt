package org.billinghack

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see [Testing documentation](http://d.android.com/tools/testing)
 */
@RunWith(AndroidJUnit4::class)
class BillingStorageTest {
    val jsonTestFileName = "testFile.json"
    val dummyPackageName = "com.myapp.dummy"

    @Test
    fun useAppContext() {
        // Context of the app under test.
        val appContext = InstrumentationRegistry.getInstrumentation().targetContext
        Assert.assertEquals("org.billinghack", appContext.packageName)
    }

    @Test
    fun loadSaveTest() {
        // Context of the app under test.
        val context = InstrumentationRegistry.getInstrumentation().targetContext

        // make sure we start clean
        val internalStoragePath: File = context.filesDir
        val jsonFile: File = File(internalStoragePath, jsonTestFileName)
        jsonFile.delete()
        // save data
        val billingStorage = BillingStorage(context)
        billingStorage.packageNameToPackagePurchaseDataMap.put(
            key = dummyPackageName,
            value = PackagePurchaseData(
                inappPurchaseDataList = arrayListOf(
                    PurchaseDetail(
                        orderId = "orderId",
                        packageName = "com.example.testonly",
                        productId = "coin666",
                        purchaseTime = 1000,
                        purchaseToken = "somePurchaseToken",
                        purchaseState = PurchaseDetail.ITEM_BOUGHT,
                        developerPayload = null,
                    ),
                ),
                inappDataSignatureList = arrayListOf("myItemSignature"),
                inappPurchaseItemList = arrayListOf("myItemSku"),
            )
        )
        billingStorage.save(jsonTestFileName)
        // load data again
        val billingStorageLoaded = BillingStorage(context)
        Assert.assertFalse(
            billingStorageLoaded.packageNameToPackagePurchaseDataMap.containsKey(
                dummyPackageName
            )
        )
        billingStorageLoaded.load(jsonTestFileName)

        Assert.assertTrue(
            billingStorageLoaded.packageNameToPackagePurchaseDataMap.containsKey(
                dummyPackageName
            )
        )
        val purchaseData: PackagePurchaseData =
            billingStorageLoaded.packageNameToPackagePurchaseDataMap.get(dummyPackageName)!!

        Assert.assertEquals(1, purchaseData.inappPurchaseDataList.size)
        Assert.assertEquals("coin666", purchaseData.inappPurchaseDataList[0].productId)

        Assert.assertEquals(1, purchaseData.inappDataSignatureList.size)
        Assert.assertEquals("myItemSignature", purchaseData.inappDataSignatureList[0])

        Assert.assertEquals(1, purchaseData.inappPurchaseItemList.size)
        Assert.assertEquals("myItemSku", purchaseData.inappPurchaseItemList[0])


    }
}