.class Landroidx/core/database/sqlite/SQLiteCursorCompat$Api28Impl;
.super Ljava/lang/Object;
.source "SQLiteCursorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/database/sqlite/SQLiteCursorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static setFillWindowForwardOnly(Landroid/database/sqlite/SQLiteCursor;Z)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/sqlite/SQLiteCursor;
    .param p1, "fillWindowForwardOnly"    # Z

    .line 61
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteCursor;->setFillWindowForwardOnly(Z)V

    .line 62
    return-void
.end method
