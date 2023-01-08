.class public final Landroidx/startup/AppInitializer;
.super Ljava/lang/Object;
.source "AppInitializer.java"


# static fields
.field private static final SECTION_NAME:Ljava/lang/String; = "Startup"

.field private static volatile sInstance:Landroidx/startup/AppInitializer;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDiscovered:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field final mInitialized:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    .line 77
    return-void
.end method

.method private doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)TT;"
        }
    .end annotation

    .line 149
    .local p1, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    .local p2, "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-static {}, Landroidx/tracing/Trace;->isEnabled()Z

    move-result v0

    .line 151
    .local v0, "isTracingEnabled":Z
    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 162
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 163
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    :try_start_1
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "instance":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Landroidx/startup/Initializer;

    .line 167
    .local v2, "initializer":Landroidx/startup/Initializer;, "Landroidx/startup/Initializer<*>;"
    nop

    .line 168
    invoke-interface {v2}, Landroidx/startup/Initializer;->dependencies()Ljava/util/List;

    move-result-object v3

    .line 170
    .local v3, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 172
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    iget-object v6, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 173
    invoke-direct {p0, v5, p2}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    .line 175
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    :cond_1
    goto :goto_0

    .line 180
    :cond_2
    iget-object v4, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    invoke-interface {v2, v4}, Landroidx/startup/Initializer;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    .local v4, "result":Ljava/lang/Object;
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object v5, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "initializer":Landroidx/startup/Initializer;, "Landroidx/startup/Initializer<*>;"
    .end local v3    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;>;"
    goto :goto_1

    .line 186
    .end local v4    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 187
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Landroidx/startup/StartupException;

    invoke-direct {v2, v1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "isTracingEnabled":Z
    .end local p1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    .end local p2    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    throw v2

    .line 190
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "isTracingEnabled":Z
    .restart local p1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    .restart local p2    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_3
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v1

    .line 192
    .restart local v4    # "result":Ljava/lang/Object;
    :goto_1
    nop

    .line 194
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 192
    return-object v4

    .line 156
    .end local v4    # "result":Ljava/lang/Object;
    :cond_4
    :try_start_3
    const-string v1, "Cannot initialize %s. Cycle detected."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 156
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "isTracingEnabled":Z
    .end local p1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    .end local p2    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    .end local v1    # "message":Ljava/lang/String;
    .restart local v0    # "isTracingEnabled":Z
    .restart local p1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    .restart local p2    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :catchall_1
    move-exception v1

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 195
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 86
    sget-object v0, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    if-nez v0, :cond_1

    .line 87
    sget-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Landroidx/startup/AppInitializer;

    invoke-direct {v1, p0}, Landroidx/startup/AppInitializer;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    .line 91
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 93
    :cond_1
    :goto_0
    sget-object v0, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    return-object v0
.end method

.method static setDelegate(Landroidx/startup/AppInitializer;)V
    .locals 2
    .param p0, "delegate"    # Landroidx/startup/AppInitializer;

    .line 102
    sget-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    sput-object p0, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method discoverAndInitialize()V
    .locals 3

    .line 200
    :try_start_0
    const-string v0, "Startup"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 201
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroidx/startup/InitializationProvider;

    .line 202
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v0, "provider":Landroid/content/ComponentName;
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 204
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 205
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 206
    .local v2, "metadata":Landroid/os/Bundle;
    invoke-virtual {p0, v2}, Landroidx/startup/AppInitializer;->discoverAndInitialize(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "provider":Landroid/content/ComponentName;
    .end local v1    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v2    # "metadata":Landroid/os/Bundle;
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 211
    nop

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v1, Landroidx/startup/StartupException;

    invoke-direct {v1, v0}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v0    # "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 211
    throw v0
.end method

.method discoverAndInitialize(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "metadata"    # Landroid/os/Bundle;

    .line 216
    iget-object v0, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    sget v1, Landroidx/startup/R$string;->androidx_startup:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "startup":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 219
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 220
    .local v1, "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 221
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 222
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 224
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 225
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Landroidx/startup/Initializer;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 226
    move-object v7, v6

    .line 228
    .local v7, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    iget-object v8, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    :cond_0
    goto :goto_0

    .line 237
    :cond_1
    iget-object v3, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 238
    .local v4, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    invoke-direct {p0, v4, v1}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    nop

    .end local v4    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    goto :goto_1

    .line 241
    .end local v1    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 242
    .local v1, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroidx/startup/StartupException;

    invoke-direct {v2, v1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 243
    .end local v1    # "exception":Ljava/lang/ClassNotFoundException;
    :cond_2
    nop

    .line 244
    return-void
.end method

.method doInitialize(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;)TT;"
        }
    .end annotation

    .line 135
    .local p1, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    sget-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v2}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 140
    :cond_0
    monitor-exit v0

    .line 141
    return-object v1

    .line 140
    .end local v1    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initializeComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .line 117
    .local p1, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<TT;>;>;"
    invoke-virtual {p0, p1}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEagerlyInitialized(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;)Z"
        }
    .end annotation

    .line 128
    .local p1, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    iget-object v0, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
