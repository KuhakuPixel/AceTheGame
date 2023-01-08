.class public final Lkotlinx/coroutines/internal/ExceptionsConstructorKt;
.super Ljava/lang/Object;
.source "ExceptionsConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,110:1\n70#1:113\n70#1:114\n70#1:115\n70#1:116\n1#2:111\n6516#3:112\n12861#3,3:117\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n54#1:113\n59#1:114\n61#1:115\n64#1:116\n41#1:112\n76#1:117,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a2\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\u0002`\u0007\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\nH\u0002\u001a*\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u00072\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0002\u001a1\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\u0002`\u00072\u0014\u0008\u0004\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u0082\u0008\u001a!\u0010\u0010\u001a\u0004\u0018\u0001H\u0008\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00062\u0006\u0010\u0011\u001a\u0002H\u0008H\u0000\u00a2\u0006\u0002\u0010\u0012\u001a\u001b\u0010\u0013\u001a\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\n2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0003H\u0082\u0010\u001a\u0018\u0010\u0015\u001a\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\n2\u0006\u0010\u0016\u001a\u00020\u0003H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000*(\u0008\u0002\u0010\u0017\"\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u00a8\u0006\u0018"
    }
    d2 = {
        "ctorCache",
        "Lkotlinx/coroutines/internal/CtorCache;",
        "throwableFields",
        "",
        "createConstructor",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/internal/Ctor;",
        "E",
        "clz",
        "Ljava/lang/Class;",
        "createSafeConstructor",
        "constructor",
        "Ljava/lang/reflect/Constructor;",
        "safeCtor",
        "block",
        "tryCopyException",
        "exception",
        "(Ljava/lang/Throwable;)Ljava/lang/Throwable;",
        "fieldsCount",
        "accumulator",
        "fieldsCountOrDefault",
        "defaultValue",
        "Ctor",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ctorCache:Lkotlinx/coroutines/internal/CtorCache;

.field private static final throwableFields:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Ljava/lang/Throwable;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCountOrDefault(Ljava/lang/Class;I)I

    move-result v0

    sput v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->throwableFields:I

    .line 16
    nop

    .line 17
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/FastServiceLoaderKt;->getANDROID_DETECTED()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/internal/WeakMapCtorCache;->INSTANCE:Lkotlinx/coroutines/internal/WeakMapCtorCache;

    check-cast v0, Lkotlinx/coroutines/internal/CtorCache;

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lkotlinx/coroutines/internal/ClassValueCtorCache;->INSTANCE:Lkotlinx/coroutines/internal/ClassValueCtorCache;

    check-cast v0, Lkotlinx/coroutines/internal/CtorCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lkotlinx/coroutines/internal/WeakMapCtorCache;->INSTANCE:Lkotlinx/coroutines/internal/WeakMapCtorCache;

    check-cast v1, Lkotlinx/coroutines/internal/CtorCache;

    move-object v0, v1

    .line 16
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    sput-object v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->ctorCache:Lkotlinx/coroutines/internal/CtorCache;

    return-void
.end method

.method public static final synthetic access$createConstructor(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "clz"    # Ljava/lang/Class;

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->createConstructor(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructor(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;
    .locals 5
    .param p0, "clz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$nullResult$1;->INSTANCE:Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$nullResult$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 36
    .local v0, "nullResult":Lkotlin/jvm/functions/Function1;
    sget v1, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->throwableFields:I

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCountOrDefault(Ljava/lang/Class;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, "$this$sortedByDescending$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 112
    .local v2, "$i$f$sortedByDescending":I
    new-instance v3, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$$inlined$sortedByDescending$1;

    invoke-direct {v3}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$$inlined$sortedByDescending$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 41
    .end local v1    # "$this$sortedByDescending$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$sortedByDescending":I
    nop

    .line 42
    .local v1, "constructors":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 43
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    invoke-static {v3}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->createSafeConstructor(Ljava/lang/reflect/Constructor;)Lkotlin/jvm/functions/Function1;

    move-result-object v4

    .line 44
    .local v4, "result":Lkotlin/jvm/functions/Function1;
    if-eqz v4, :cond_1

    return-object v4

    .line 46
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v4    # "result":Lkotlin/jvm/functions/Function1;
    :cond_2
    return-object v0
.end method

.method private static final createSafeConstructor(Ljava/lang/reflect/Constructor;)Lkotlin/jvm/functions/Function1;
    .locals 4
    .param p0, "constructor"    # Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, "p":[Ljava/lang/Class;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 65
    goto :goto_0

    .line 52
    :pswitch_0
    nop

    .line 53
    aget-object v1, v0, v2

    const-class v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-class v2, Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 113
    .local v1, "$i$f$safeCtor":I
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$1;

    invoke-direct {v2, p0}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$1;-><init>(Ljava/lang/reflect/Constructor;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .end local v1    # "$i$f$safeCtor":I
    goto :goto_0

    .line 55
    :cond_0
    goto :goto_0

    .line 57
    :pswitch_1
    aget-object v1, v0, v2

    .line 58
    const-class v2, Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const/4 v1, 0x0

    .line 114
    .restart local v1    # "$i$f$safeCtor":I
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$2;

    invoke-direct {v2, p0}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$2;-><init>(Ljava/lang/reflect/Constructor;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .end local v1    # "$i$f$safeCtor":I
    goto :goto_0

    .line 60
    :cond_1
    const-class v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const/4 v1, 0x0

    .line 115
    .restart local v1    # "$i$f$safeCtor":I
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$3;

    invoke-direct {v2, p0}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$3;-><init>(Ljava/lang/reflect/Constructor;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .end local v1    # "$i$f$safeCtor":I
    goto :goto_0

    .line 62
    :cond_2
    goto :goto_0

    .line 64
    :pswitch_2
    const/4 v1, 0x0

    .line 116
    .restart local v1    # "$i$f$safeCtor":I
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$4;

    invoke-direct {v2, p0}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$4;-><init>(Ljava/lang/reflect/Constructor;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 51
    .end local v1    # "$i$f$safeCtor":I
    :goto_0
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final fieldsCount(Ljava/lang/Class;I)I
    .locals 11
    .param p0, "$this$fieldsCount"    # Ljava/lang/Class;
    .param p1, "accumulator"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 75
    move-object v0, p0

    move v1, p1

    .line 76
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "$this$count$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 117
    .local v3, "$i$f$count":I
    const/4 v4, 0x0

    .line 118
    .local v4, "count$iv":I
    const/4 v5, 0x0

    array-length v6, v2

    :cond_0
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v7, v2, v5

    .local v7, "element$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    move-object v8, v7

    .local v8, "it":Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    .line 76
    .local v9, "$i$a$-count-ExceptionsConstructorKt$fieldsCount$fieldsCount$1":I
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    .end local v8    # "it":Ljava/lang/reflect/Field;
    .end local v9    # "$i$a$-count-ExceptionsConstructorKt$fieldsCount$fieldsCount$1":I
    xor-int/lit8 v8, v10, 0x1

    if-eqz v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 119
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_1
    nop

    .line 76
    .end local v2    # "$this$count$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$count":I
    .end local v4    # "count$iv":I
    move v2, v4

    .line 77
    .local v2, "fieldsCount":I
    add-int/2addr v1, v2

    .line 78
    .local v1, "totalFields":I
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 79
    .local v0, "superClass":Ljava/lang/Class;
    :cond_2
    goto :goto_0
.end method

.method static synthetic fieldsCount$default(Ljava/lang/Class;IILjava/lang/Object;)I
    .locals 0

    .line 75
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCount(Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method private static final fieldsCountOrDefault(Ljava/lang/Class;I)I
    .locals 5
    .param p0, "$this$fieldsCountOrDefault"    # Ljava/lang/Class;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 111
    .local v0, "$this$fieldsCountOrDefault_u24lambda_u2d8":Lkotlin/reflect/KClass;
    const/4 v1, 0x0

    .line 73
    .local v1, "$i$a$-runCatching-ExceptionsConstructorKt$fieldsCountOrDefault$1":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCount$default(Ljava/lang/Class;IILjava/lang/Object;)I

    move-result v2

    .end local v0    # "$this$fieldsCountOrDefault_u24lambda_u2d8":Lkotlin/reflect/KClass;
    .end local v1    # "$i$a$-runCatching-ExceptionsConstructorKt$fieldsCountOrDefault$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .param p0, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    .local v0, "$i$f$safeCtor":I
    new-instance v1, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$safeCtor$1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$safeCtor$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    return-object v1
.end method

.method public static final tryCopyException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 27
    instance-of v0, p0, Lkotlinx/coroutines/CopyableThrowable;

    if-eqz v0, :cond_1

    .line 28
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 111
    const/4 v0, 0x0

    .line 28
    .local v0, "$i$a$-runCatching-ExceptionsConstructorKt$tryCopyException$1":I
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CopyableThrowable;

    invoke-interface {v1}, Lkotlinx/coroutines/CopyableThrowable;->createCopy()Ljava/lang/Throwable;

    move-result-object v1

    .end local v0    # "$i$a$-runCatching-ExceptionsConstructorKt$tryCopyException$1":I
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 30
    :cond_1
    sget-object v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->ctorCache:Lkotlinx/coroutines/internal/CtorCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/CtorCache;->get(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method
