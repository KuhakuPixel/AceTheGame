.class Landroidx/core/view/PointerIconCompat$Api24Impl;
.super Ljava/lang/Object;
.source "PointerIconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/PointerIconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    return-void
.end method

.method static create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hotSpotX"    # F
    .param p2, "hotSpotY"    # F

    .line 204
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 199
    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .line 209
    invoke-static {p0, p1}, Landroid/view/PointerIcon;->load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method
