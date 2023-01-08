.class public final Landroidx/core/view/accessibility/AccessibilityManagerCompat;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$Api19Impl;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;,
        Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    return-void
.end method

.method public static addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    if-nez p1, :cond_0

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;

    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;-><init>(Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .locals 2
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 171
    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$Api19Impl;->addTouchExplorationStateChangeListenerWrapper(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    move-result v0

    return v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .locals 1
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .locals 1
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public static removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    if-nez p1, :cond_0

    .line 70
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;

    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper;-><init>(Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
    .locals 2
    .param p0, "manager"    # Landroid/view/accessibility/AccessibilityManager;
    .param p1, "listener"    # Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 187
    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$Api19Impl;->removeTouchExplorationStateChangeListenerWrapper(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    move-result v0

    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
