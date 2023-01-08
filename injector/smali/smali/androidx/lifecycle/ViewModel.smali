.class public abstract Landroidx/lifecycle/ViewModel;
.super Ljava/lang/Object;
.source "ViewModel.java"


# instance fields
.field private final mBagOfTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCleared:Z

.field private final mCloseables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    .line 126
    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Closeable;)V
    .locals 2
    .param p1, "closeables"    # [Ljava/io/Closeable;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    .line 136
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 137
    return-void
.end method

.method private static closeWithRuntimeException(Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 238
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addCloseable(Ljava/io/Closeable;)V
    .locals 2
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 151
    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 155
    :cond_0
    :goto_0
    return-void
.end method

.method final clear()V
    .locals 3

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    .line 174
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 175
    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 178
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 179
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 180
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 183
    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 184
    monitor-enter v0

    .line 185
    :try_start_1
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 186
    .local v2, "closeable":Ljava/io/Closeable;
    invoke-static {v2}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 187
    .end local v2    # "closeable":Ljava/io/Closeable;
    goto :goto_2

    .line 188
    :cond_2
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 190
    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 191
    return-void
.end method

.method getTag(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_0
    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onCleared()V
    .locals 0

    .line 165
    return-void
.end method

.method setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 208
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "previous":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_0

    .line 211
    iget-object v2, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    if-nez v1, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 215
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :goto_0
    iget-boolean v2, p0, Landroidx/lifecycle/ViewModel;->mCleared:Z

    if-eqz v2, :cond_2

    .line 219
    invoke-static {v0}, Landroidx/lifecycle/ViewModel;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 221
    :cond_2
    return-object v0

    .line 213
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    .end local v1    # "previous":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
