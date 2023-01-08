.class Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$Api23Impl;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    return-void
.end method

.method static authenticate(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/CancellationSignal;ILjava/lang/Object;Landroid/os/Handler;)V
    .locals 6
    .param p0, "fingerprintManager"    # Ljava/lang/Object;
    .param p1, "crypto"    # Ljava/lang/Object;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Ljava/lang/Object;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 294
    move-object v0, p0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    move-object v1, p1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-object v4, p4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 297
    return-void
.end method

.method static getCryptoObject(Ljava/lang/Object;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 1
    .param p0, "authenticationResult"    # Ljava/lang/Object;

    .line 301
    move-object v0, p0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 302
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v0

    .line 301
    return-object v0
.end method

.method public static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 308
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0

    .line 309
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 310
    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0

    .line 313
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static hasEnrolledFingerprints(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "fingerprintManager"    # Ljava/lang/Object;

    .line 281
    move-object v0, p0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method static isHardwareDetected(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "fingerprintManager"    # Ljava/lang/Object;

    .line 287
    move-object v0, p0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method public static unwrapCryptoObject(Ljava/lang/Object;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 3
    .param p0, "cryptoObjectObj"    # Ljava/lang/Object;

    .line 334
    move-object v0, p0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 336
    .local v0, "cryptoObject":Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 337
    return-object v1

    .line 338
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 339
    new-instance v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v1

    .line 340
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 341
    new-instance v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v1

    .line 342
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 343
    new-instance v1, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    return-object v1

    .line 345
    :cond_3
    return-object v1
.end method

.method public static wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 2
    .param p0, "cryptoObject"    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 319
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 320
    return-object v0

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 322
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 323
    :cond_1
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 324
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 325
    :cond_2
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 326
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    return-object v0

    .line 328
    :cond_3
    return-object v0
.end method
