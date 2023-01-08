.class public abstract Landroidx/core/content/pm/ShortcutInfoChangeListener;
.super Ljava/lang/Object;
.source "ShortcutInfoChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllShortcutsRemoved()V
    .locals 0

    .line 45
    return-void
.end method

.method public onShortcutAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroidx/core/content/pm/ShortcutInfoCompat;>;"
    return-void
.end method

.method public onShortcutRemoved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onShortcutUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroidx/core/content/pm/ShortcutInfoCompat;>;"
    return-void
.end method

.method public onShortcutUsageReported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
