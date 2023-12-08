package org.billinghack

/**
 * variable name must not be changed, so the expected variable name in the json won't change
 * */
class PurchaseDetail(
    val orderId: String,
    val packageName: String,
    val productId: String,
    val purchaseTime: Int,
    val purchaseToken: String,
    val purchaseState: Int,
    val developerPayload: String?,
) {
    companion object {
        val ITEM_BOUGHT = 0
    }
}