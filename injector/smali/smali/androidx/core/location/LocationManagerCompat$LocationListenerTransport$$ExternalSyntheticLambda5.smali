.class public final synthetic Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;->f$0:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput p3, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;->f$0:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget v2, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;->f$2:I

    iget-object v3, p0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport$$ExternalSyntheticLambda5;->f$3:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->lambda$onStatusChanged$3$androidx-core-location-LocationManagerCompat$LocationListenerTransport(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
