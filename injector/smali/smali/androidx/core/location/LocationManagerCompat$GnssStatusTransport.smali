.class Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;
.super Landroid/location/GnssStatus$Callback;
.source "LocationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssStatusTransport"
.end annotation


# instance fields
.field final mCallback:Landroidx/core/location/GnssStatusCompat$Callback;


# direct methods
.method constructor <init>(Landroidx/core/location/GnssStatusCompat$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;

    .line 665
    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    .line 666
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 667
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    .line 668
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 1
    .param p1, "ttffMillis"    # I

    .line 682
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0, p1}, Landroidx/core/location/GnssStatusCompat$Callback;->onFirstFix(I)V

    .line 683
    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 2
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 687
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-static {p1}, Landroidx/core/location/GnssStatusCompat;->wrap(Landroid/location/GnssStatus;)Landroidx/core/location/GnssStatusCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/location/GnssStatusCompat$Callback;->onSatelliteStatusChanged(Landroidx/core/location/GnssStatusCompat;)V

    .line 688
    return-void
.end method

.method public onStarted()V
    .locals 1

    .line 672
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0}, Landroidx/core/location/GnssStatusCompat$Callback;->onStarted()V

    .line 673
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 677
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    invoke-virtual {v0}, Landroidx/core/location/GnssStatusCompat$Callback;->onStopped()V

    .line 678
    return-void
.end method
