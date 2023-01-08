.class public final synthetic Landroidx/lifecycle/LifecycleRegistryOwner$-CC;
.super Ljava/lang/Object;
.source "LifecycleRegistryOwner.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$getLifecycle(Landroidx/lifecycle/LifecycleRegistryOwner;)Landroidx/lifecycle/Lifecycle;
    .locals 1
    .param p0, "_this"    # Landroidx/lifecycle/LifecycleRegistryOwner;

    .line 25
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v0

    return-object v0
.end method
