package org.billinghack

import com.google.gson.Gson

class PackagePurchaseData(
    // contains the product id
    val inappPurchaseItemList: ArrayList<String> = ArrayList(),

    //
    val inappPurchaseDataList: ArrayList<PurchaseDetail> = ArrayList(),
    val inappDataSignatureList: ArrayList<String> = ArrayList(),
) {


    fun addPurchase(purchaseDetail: PurchaseDetail, purchaseSignature: String) {
        inappPurchaseItemList.add(purchaseDetail.productId)
        inappPurchaseDataList.add(purchaseDetail)
        inappDataSignatureList.add(purchaseSignature)
    }

    fun removePurchaseByPurchaseToken(purchaseToken: String) {
        val indexToRemove = inappPurchaseDataList.indexOfFirst {
            it.purchaseToken == purchaseToken
        }
        inappPurchaseItemList.removeAt(indexToRemove)
        inappPurchaseDataList.removeAt(indexToRemove)
        inappDataSignatureList.removeAt(indexToRemove)
    }

}