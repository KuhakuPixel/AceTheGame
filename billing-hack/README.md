# Billing Hack
local android purchase server for supporting billing hack

updated version of [billing-hack](https://github.com/dschuermann/billing-hack) licensed under [Apache 2](https://github.com/dschuermann/billing-hack/issues/1#issuecomment-67127884)

so it will work on newer version of [billing client](https://developer.android.com/reference/com/android/billingclient/api/BillingClient)
with improvements such as 

- Updated AIDL to be compatable with newer billing client's version
  
- implement `getPurchases` to store history of purchases

- set transaction code explicitly in AIDL to remain compatable with  
  newer version of `com.android.vending` (google playstore)
  

## Reference

![Billing Client AIDL Reference](./billingReferenceEnglish.pdf)
