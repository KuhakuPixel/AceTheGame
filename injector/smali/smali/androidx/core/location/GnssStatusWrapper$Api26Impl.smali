.class Landroidx/core/location/GnssStatusWrapper$Api26Impl;
.super Ljava/lang/Object;
.source "GnssStatusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/GnssStatusWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method static getCarrierFrequencyHz(Landroid/location/GnssStatus;I)F
    .locals 1
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "satelliteIndex"    # I

    .line 147
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v0

    return v0
.end method

.method static hasCarrierFrequencyHz(Landroid/location/GnssStatus;I)Z
    .locals 1
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "satelliteIndex"    # I

    .line 152
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v0

    return v0
.end method
