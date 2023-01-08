.class Landroidx/appcompat/view/WindowCallbackWrapper$Api24Impl;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/WindowCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method

.method static onProvideKeyboardShortcuts(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V
    .locals 0
    .param p0, "callback"    # Landroid/view/Window$Callback;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window$Callback;",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 219
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    invoke-interface {p0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 220
    return-void
.end method
