.class public Landroidx/appcompat/resources/Compatibility$Api15Impl;
.super Ljava/lang/Object;
.source "Compatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/resources/Compatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api15Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public static getValueForDensity(Landroid/content/res/Resources;IILandroid/util/TypedValue;Z)V
    .locals 0
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z

    .line 96
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 97
    return-void
.end method
