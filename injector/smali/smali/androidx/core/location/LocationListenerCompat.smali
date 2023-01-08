.class public interface abstract Landroidx/core/location/LocationListenerCompat;
.super Ljava/lang/Object;
.source "LocationListenerCompat.java"

# interfaces
.implements Landroid/location/LocationListener;


# virtual methods
.method public abstract onFlushComplete(I)V
.end method

.method public abstract onLocationChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProviderDisabled(Ljava/lang/String;)V
.end method

.method public abstract onProviderEnabled(Ljava/lang/String;)V
.end method

.method public abstract onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method
