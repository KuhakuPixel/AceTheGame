.class final Landroidx/lifecycle/ClassesInfoCache;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ClassesInfoCache$MethodReference;,
        Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CALL_TYPE_NO_ARG:I = 0x0

.field private static final CALL_TYPE_PROVIDER:I = 0x1

.field private static final CALL_TYPE_PROVIDER_WITH_EVENT:I = 0x2

.field static sInstance:Landroidx/lifecycle/ClassesInfoCache;


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasLifecycleMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Landroidx/lifecycle/ClassesInfoCache;

    invoke-direct {v0}, Landroidx/lifecycle/ClassesInfoCache;-><init>()V

    sput-object v0, Landroidx/lifecycle/ClassesInfoCache;->sInstance:Landroidx/lifecycle/ClassesInfoCache;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    return-void
.end method

.method private createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 16
    .param p2, "declaredMethods"    # [Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;"
        }
    .end annotation

    .line 109
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 110
    .local v2, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v3, "handlerToEvent":Ljava/util/Map;, "Ljava/util/Map<Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;>;"
    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v0, v2}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v4

    .line 113
    .local v4, "superInfo":Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    if-eqz v4, :cond_0

    .line 114
    iget-object v5, v4, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 118
    .end local v4    # "superInfo":Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 119
    .local v4, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    .line 120
    .local v8, "intrfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v8}, Landroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v9

    iget-object v9, v9, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    .line 121
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 120
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 122
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {v0, v3, v11, v12, v1}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 123
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;>;"
    goto :goto_1

    .line 119
    .end local v8    # "intrfc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 126
    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v5, p2

    goto :goto_2

    :cond_3
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 127
    .local v5, "methods":[Ljava/lang/reflect/Method;
    :goto_2
    const/4 v7, 0x0

    .line 128
    .local v7, "hasLifecycleMethods":Z
    array-length v8, v5

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_b

    aget-object v10, v5, v9

    .line 129
    .local v10, "method":Ljava/lang/reflect/Method;
    const-class v11, Landroidx/lifecycle/OnLifecycleEvent;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Landroidx/lifecycle/OnLifecycleEvent;

    .line 130
    .local v11, "annotation":Landroidx/lifecycle/OnLifecycleEvent;
    if-nez v11, :cond_4

    .line 131
    goto :goto_6

    .line 133
    :cond_4
    const/4 v7, 0x1

    .line 134
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 135
    .local v12, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    .line 136
    .local v13, "callType":I
    array-length v14, v12

    if-lez v14, :cond_6

    .line 137
    const/4 v13, 0x1

    .line 138
    aget-object v14, v12, v6

    const-class v15, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_4

    .line 139
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 143
    :cond_6
    :goto_4
    invoke-interface {v11}, Landroidx/lifecycle/OnLifecycleEvent;->value()Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v14

    .line 145
    .local v14, "event":Landroidx/lifecycle/Lifecycle$Event;
    array-length v15, v12

    const/4 v6, 0x1

    if-le v15, v6, :cond_9

    .line 146
    const/4 v13, 0x2

    .line 147
    aget-object v6, v12, v6

    const-class v15, Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v6, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 151
    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne v14, v6, :cond_7

    goto :goto_5

    .line 152
    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Second arg is supported only for ON_ANY value"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 148
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid parameter type. second arg must be an event"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 156
    :cond_9
    :goto_5
    array-length v6, v12

    const/4 v15, 0x2

    if-gt v6, v15, :cond_a

    .line 159
    new-instance v6, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    invoke-direct {v6, v13, v10}, Landroidx/lifecycle/ClassesInfoCache$MethodReference;-><init>(ILjava/lang/reflect/Method;)V

    .line 160
    .local v6, "methodReference":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    invoke-direct {v0, v3, v6, v14, v1}, Landroidx/lifecycle/ClassesInfoCache;->verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 128
    .end local v6    # "methodReference":Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "annotation":Landroidx/lifecycle/OnLifecycleEvent;
    .end local v12    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v13    # "callType":I
    .end local v14    # "event":Landroidx/lifecycle/Lifecycle$Event;
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    goto :goto_3

    .line 157
    .restart local v10    # "method":Ljava/lang/reflect/Method;
    .restart local v11    # "annotation":Landroidx/lifecycle/OnLifecycleEvent;
    .restart local v12    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v13    # "callType":I
    .restart local v14    # "event":Landroidx/lifecycle/Lifecycle$Event;
    :cond_a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "cannot have more than 2 params"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 162
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "annotation":Landroidx/lifecycle/OnLifecycleEvent;
    .end local v12    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v13    # "callType":I
    .end local v14    # "event":Landroidx/lifecycle/Lifecycle$Event;
    :cond_b
    new-instance v6, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    invoke-direct {v6, v3}, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;-><init>(Ljava/util/Map;)V

    .line 163
    .local v6, "info":Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    iget-object v8, v0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v8, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v8, v0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-object v6
.end method

.method private getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 74
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private verifyAndPutHandler(Ljava/util/Map;Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .locals 5
    .param p2, "newHandler"    # Landroidx/lifecycle/ClassesInfoCache$MethodReference;
    .param p3, "newEvent"    # Landroidx/lifecycle/Lifecycle$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ">;",
            "Landroidx/lifecycle/ClassesInfoCache$MethodReference;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 95
    .local p1, "handlers":Ljava/util/Map;, "Ljava/util/Map<Landroidx/lifecycle/ClassesInfoCache$MethodReference;Landroidx/lifecycle/Lifecycle$Event;>;"
    .local p4, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    .line 96
    .local v0, "event":Landroidx/lifecycle/Lifecycle$Event;
    if-eqz v0, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v1, p2, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    .line 98
    .local v1, "method":Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 99
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already declared with different @OnLifecycleEvent value: previous value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 104
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2
    return-void
.end method


# virtual methods
.method getInfo(Ljava/lang/Class;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;"
        }
    .end annotation

    .line 85
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 86
    .local v0, "existing":Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;
    if-eqz v0, :cond_0

    .line 87
    return-object v0

    .line 89
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method hasLifecycleMethods(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 49
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 50
    .local v0, "hasLifecycleMethods":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Landroidx/lifecycle/ClassesInfoCache;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 56
    .local v5, "method":Ljava/lang/reflect/Method;
    const-class v6, Landroidx/lifecycle/OnLifecycleEvent;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/OnLifecycleEvent;

    .line 57
    .local v6, "annotation":Landroidx/lifecycle/OnLifecycleEvent;
    if-eqz v6, :cond_1

    .line 64
    invoke-direct {p0, p1, v1}, Landroidx/lifecycle/ClassesInfoCache;->createInfo(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 65
    const/4 v2, 0x1

    return v2

    .line 55
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "annotation":Landroidx/lifecycle/OnLifecycleEvent;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :cond_2
    iget-object v2, p0, Landroidx/lifecycle/ClassesInfoCache;->mHasLifecycleMethods:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return v3
.end method
