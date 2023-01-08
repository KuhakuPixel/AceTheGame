.class final Landroidx/emoji2/viewsintegration/EmojiEditableFactory;
.super Landroid/text/Editable$Factory;
.source "EmojiEditableFactory.java"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static volatile sInstance:Landroid/text/Editable$Factory;

.field private static sWatcherClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Landroid/text/Editable$Factory;-><init>()V

    .line 53
    :try_start_0
    const-string v0, "android.text.DynamicLayout$ChangeWatcher"

    .line 54
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sWatcherClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v0    # "className":Ljava/lang/String;
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 58
    :goto_0
    return-void
.end method

.method public static getInstance()Landroid/text/Editable$Factory;
    .locals 2

    .line 62
    sget-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroid/text/Editable$Factory;

    if-nez v0, :cond_1

    .line 63
    sget-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroid/text/Editable$Factory;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;

    invoke-direct {v1}, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;-><init>()V

    sput-object v1, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroid/text/Editable$Factory;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sInstance:Landroid/text/Editable$Factory;

    return-object v0
.end method


# virtual methods
.method public newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 74
    sget-object v0, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->sWatcherClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0, p1}, Landroidx/emoji2/text/SpannableBuilder;->create(Ljava/lang/Class;Ljava/lang/CharSequence;)Landroidx/emoji2/text/SpannableBuilder;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method
