package org.billinghack

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.google.gson.Gson
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File

@RunWith(AndroidJUnit4::class)
class PackagePurchaseDataTest {

    @Test
    fun loadSaveTest() {
        val packagePurchaseData = PackagePurchaseData()
        packagePurchaseData.addPurchase(
            purchaseDetail = PurchaseDetail(
                orderId = "orderId",
                packageName = "com.example.testonly",
                productId = "gem666",
                purchaseTime = 1000,
                purchaseToken = "somePurchaseToken",
                purchaseState = PurchaseDetail.ITEM_BOUGHT,
                developerPayload = null,
            ),
            purchaseSignature = "purchaseSignature"
        )

        packagePurchaseData.addPurchase(
            purchaseDetail = PurchaseDetail(
                orderId = "orderId",
                packageName = "com.example.testonly",
                productId = "coin666",
                purchaseTime = 1000,
                purchaseToken = "somePurchaseToken2",
                purchaseState = PurchaseDetail.ITEM_BOUGHT,
                developerPayload = null,
            ),
            purchaseSignature = "purchaseSignature"
        )
        // ==============================================
        Assert.assertEquals(2, packagePurchaseData.inappPurchaseDataList.size)
        Assert.assertEquals(2, packagePurchaseData.inappDataSignatureList.size)
        Assert.assertEquals(2, packagePurchaseData.inappPurchaseItemList.size)
        // ==============================================

        Assert.assertEquals("gem666", packagePurchaseData.inappPurchaseItemList[0])

        Assert.assertEquals("gem666", packagePurchaseData.inappPurchaseDataList[0].productId)
        Assert.assertEquals(1000, packagePurchaseData.inappPurchaseDataList[0].purchaseTime)

        // ================================= test remove =======================
        packagePurchaseData.removePurchaseByPurchaseToken("somePurchaseToken")
        Assert.assertEquals(1, packagePurchaseData.inappPurchaseDataList.size)
        Assert.assertEquals(1, packagePurchaseData.inappDataSignatureList.size)
        Assert.assertEquals(1, packagePurchaseData.inappPurchaseItemList.size)
        Assert.assertEquals("coin666", packagePurchaseData.inappPurchaseItemList[0])


    }
}