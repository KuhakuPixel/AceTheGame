.class final Lkotlin/io/path/PathRelativizer;
.super Ljava/lang/Object;
.source "PathUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlin/io/path/PathRelativizer;",
        "",
        "()V",
        "emptyPath",
        "Ljava/nio/file/Path;",
        "kotlin.jvm.PlatformType",
        "parentPath",
        "tryRelativeTo",
        "path",
        "base",
        "kotlin-stdlib-jdk7"
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
.field public static final INSTANCE:Lkotlin/io/path/PathRelativizer;

.field private static final emptyPath:Ljava/nio/file/Path;

.field private static final parentPath:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/io/path/PathRelativizer;

    invoke-direct {v0}, Lkotlin/io/path/PathRelativizer;-><init>()V

    sput-object v0, Lkotlin/io/path/PathRelativizer;->INSTANCE:Lkotlin/io/path/PathRelativizer;

    .line 158
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ""

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sput-object v1, Lkotlin/io/path/PathRelativizer;->emptyPath:Ljava/nio/file/Path;

    .line 159
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".."

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lkotlin/io/path/PathRelativizer;->parentPath:Ljava/nio/file/Path;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tryRelativeTo(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 9
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "base"    # Ljava/nio/file/Path;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-interface {p2}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    .line 164
    .local v0, "bn":Ljava/nio/file/Path;
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    .line 165
    .local v1, "pn":Ljava/nio/file/Path;
    invoke-interface {v0, v1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    .line 167
    .local v2, "rn":Ljava/nio/file/Path;
    invoke-interface {v0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v3

    invoke-interface {v1}, Ljava/nio/file/Path;->getNameCount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    move v6, v5

    .local v6, "i":I
    add-int/lit8 v5, v5, 0x1

    .line 168
    invoke-interface {v0, v6}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v7

    sget-object v8, Lkotlin/io/path/PathRelativizer;->parentPath:Ljava/nio/file/Path;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    invoke-interface {v1, v6}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to compute relative path"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    .end local v6    # "i":I
    :cond_2
    :goto_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lkotlin/io/path/PathRelativizer;->emptyPath:Ljava/nio/file/Path;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    move-object v4, v1

    goto :goto_2

    .line 175
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "rnString":Ljava/lang/String;
    invoke-interface {v2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rn.fileSystem.separator"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v5, v4, v6, v7}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    invoke-interface {v2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v5

    invoke-interface {v2}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, v6}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    goto :goto_2

    .line 180
    :cond_4
    move-object v4, v2

    .line 172
    .end local v3    # "rnString":Ljava/lang/String;
    :goto_2
    move-object v3, v4

    .line 182
    .local v3, "r":Ljava/nio/file/Path;
    const-string v4, "r"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method
