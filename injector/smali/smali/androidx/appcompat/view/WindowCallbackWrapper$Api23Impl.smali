.class Landroidx/appcompat/view/WindowCallbackWrapper$Api23Impl;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/WindowCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method static onSearchRequested(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z
    .locals 1
    .param p0, "callback"    # Landroid/view/Window$Callback;
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 200
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v0

    return v0
.end method

.method static onWindowStartingActionMode(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p0, "windowCallback"    # Landroid/view/Window$Callback;
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;
    .param p2, "i"    # I

    .line 206
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
