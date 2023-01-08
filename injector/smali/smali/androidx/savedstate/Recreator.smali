.class public final Landroidx/savedstate/Recreator;
.super Ljava/lang/Object;
.source "Recreator.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/Recreator$SavedStateProvider;,
        Landroidx/savedstate/Recreator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000e\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/savedstate/Recreator;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "owner",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "(Landroidx/savedstate/SavedStateRegistryOwner;)V",
        "onStateChanged",
        "",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "reflectiveNew",
        "className",
        "",
        "Companion",
        "SavedStateProvider",
        "savedstate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CLASSES_KEY:Ljava/lang/String; = "classes_to_restore"

.field public static final COMPONENT_KEY:Ljava/lang/String; = "androidx.savedstate.Restarter"

.field public static final Companion:Landroidx/savedstate/Recreator$Companion;


# instance fields
.field private final owner:Landroidx/savedstate/SavedStateRegistryOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/savedstate/Recreator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/savedstate/Recreator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/savedstate/Recreator;->Companion:Landroidx/savedstate/Recreator$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 1
    .param p1, "owner"    # Landroidx/savedstate/SavedStateRegistryOwner;

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroidx/savedstate/Recreator;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 24
    return-void
.end method

.method private final reflectiveNew(Ljava/lang/String;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;

    .line 48
    const-string v0, "Class "

    .line 49
    :try_start_0
    const-class v1, Landroidx/savedstate/Recreator;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroidx/savedstate/SavedStateRegistry$AutoRecreated;

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    const-string v3, "{\n                Class.\u2026class.java)\n            }"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    nop

    .line 55
    .local v1, "clazz":Ljava/lang/Class;
    nop

    .line 56
    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    nop

    .line 54
    nop

    .line 63
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 65
    nop

    .line 66
    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 65
    const-string v3, "{\n                constr\u2026wInstance()\n            }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/savedstate/SavedStateRegistry$AutoRecreated;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    nop

    .line 70
    .local v2, "newInstance":Landroidx/savedstate/SavedStateRegistry$AutoRecreated;
    iget-object v3, p0, Landroidx/savedstate/Recreator;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v2, v3}, Landroidx/savedstate/SavedStateRegistry$AutoRecreated;->onRecreated(Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 71
    return-void

    .line 67
    .end local v2    # "newInstance":Landroidx/savedstate/SavedStateRegistry$AutoRecreated;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 57
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " must have default constructor in order to be automatically recreated"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    .line 58
    invoke-direct {v3, v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 51
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " wasn\'t found"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 4
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_3

    .line 32
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 33
    iget-object v0, p0, Landroidx/savedstate/Recreator;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v0}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    .line 34
    const-string v1, "androidx.savedstate.Restarter"

    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    return-void

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v1, "classes_to_restore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/util/List;

    .line 41
    .local v1, "classes":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 42
    .local v3, "className":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroidx/savedstate/Recreator;->reflectiveNew(Ljava/lang/String;)V

    .end local v3    # "className":Ljava/lang/String;
    goto :goto_0

    .line 44
    :cond_1
    return-void

    .line 36
    .end local v1    # "classes":Ljava/util/List;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    nop

    .line 36
    const-string v2, "Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Next event must be ON_CREATE"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
