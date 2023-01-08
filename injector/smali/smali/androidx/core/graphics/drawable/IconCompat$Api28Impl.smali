.class Landroidx/core/graphics/drawable/IconCompat$Api28Impl;
.super Ljava/lang/Object;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    return-void
.end method

.method static getResId(Ljava/lang/Object;)I
    .locals 1
    .param p0, "icon"    # Ljava/lang/Object;

    .line 1079
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    return v0
.end method

.method static getResPackage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "icon"    # Ljava/lang/Object;

    .line 1069
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getType(Ljava/lang/Object;)I
    .locals 1
    .param p0, "icon"    # Ljava/lang/Object;

    .line 1074
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    return v0
.end method

.method static getUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p0, "icon"    # Ljava/lang/Object;

    .line 1084
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
