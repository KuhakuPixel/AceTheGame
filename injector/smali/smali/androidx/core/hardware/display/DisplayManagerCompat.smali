.class public final Landroidx/core/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/hardware/display/DisplayManagerCompat$Api17Impl;
    }
.end annotation


# static fields
.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field private static final sInstances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/core/hardware/display/DisplayManagerCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/core/hardware/display/DisplayManagerCompat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    sget-object v0, Landroidx/core/hardware/display/DisplayManagerCompat;->sInstances:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/hardware/display/DisplayManagerCompat;

    .line 67
    .local v1, "instance":Landroidx/core/hardware/display/DisplayManagerCompat;
    if-nez v1, :cond_0

    .line 68
    new-instance v2, Landroidx/core/hardware/display/DisplayManagerCompat;

    invoke-direct {v2, p0}, Landroidx/core/hardware/display/DisplayManagerCompat;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 69
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    monitor-exit v0

    return-object v1

    .line 72
    .end local v1    # "instance":Landroidx/core/hardware/display/DisplayManagerCompat;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    .line 89
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 88
    invoke-static {v0, p1}, Landroidx/core/hardware/display/DisplayManagerCompat$Api17Impl;->getDisplay(Landroid/hardware/display/DisplayManager;I)Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 93
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 94
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 95
    return-object v0

    .line 97
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 3

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    .line 110
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 109
    invoke-static {v0}, Landroidx/core/hardware/display/DisplayManagerCompat$Api17Impl;->getDisplays(Landroid/hardware/display/DisplayManager;)[Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 114
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 115
    .local v0, "display":Landroid/view/Display;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/Display;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    .line 139
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 138
    invoke-static {v0}, Landroidx/core/hardware/display/DisplayManagerCompat$Api17Impl;->getDisplays(Landroid/hardware/display/DisplayManager;)[Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 142
    new-array v0, v0, [Landroid/view/Display;

    return-object v0

    .line 145
    :cond_1
    iget-object v1, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 146
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 147
    .local v1, "display":Landroid/view/Display;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/Display;

    aput-object v1, v2, v0

    return-object v2
.end method
