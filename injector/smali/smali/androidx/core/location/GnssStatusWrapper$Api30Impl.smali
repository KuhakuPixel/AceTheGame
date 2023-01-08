.class Landroidx/core/location/GnssStatusWrapper$Api30Impl;
.super Ljava/lang/Object;
.source "GnssStatusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/GnssStatusWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method static getBasebandCn0DbHz(Landroid/location/GnssStatus;I)F
    .locals 1
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "satelliteIndex"    # I

    .line 169
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getBasebandCn0DbHz(I)F

    move-result v0

    return v0
.end method

.method static hasBasebandCn0DbHz(Landroid/location/GnssStatus;I)Z
    .locals 1
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "satelliteIndex"    # I

    .line 164
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->hasBasebandCn0DbHz(I)Z

    move-result v0

    return v0
.end method
