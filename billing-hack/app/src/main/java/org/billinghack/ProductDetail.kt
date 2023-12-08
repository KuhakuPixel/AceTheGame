package org.billinghack

/**
 * variable name must not be changed, so the expected variable name in the json won't change
 * */
class ProductDetail(
    val productId: String,
    val type: String,
    val price: String,
    val price_amount_micros: Double,
    val price_currency_code: String,
    val title: String,
    val description: String,
) {
}