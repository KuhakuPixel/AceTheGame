.class public Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;,
        Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;,
        Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
    }
.end annotation


# static fields
.field public static final HOST_VIEW_ID:I = -0x1


# instance fields
.field private final mProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 122
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;-><init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 124
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;-><init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 126
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;-><init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    .line 130
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/Object;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    .line 140
    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p3, "extraDataKey"    # Ljava/lang/String;
    .param p4, "arguments"    # Landroid/os/Bundle;

    .line 254
    return-void
.end method

.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "focus"    # I

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvider()Ljava/lang/Object;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->mProvider:Ljava/lang/Object;

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 192
    const/4 v0, 0x0

    return v0
.end method
