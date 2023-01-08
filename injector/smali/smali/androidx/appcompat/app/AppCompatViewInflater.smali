.class public Landroidx/appcompat/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sAccessibilityHeading:[I

.field private static final sAccessibilityPaneTitle:[I

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I

.field private static final sScreenReaderFocusable:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 75
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 77
    new-array v1, v4, [I

    const v2, 0x101026f

    aput v2, v1, v3

    sput-object v1, Landroidx/appcompat/app/AppCompatViewInflater;->sOnClickAttrs:[I

    .line 78
    new-array v1, v4, [I

    const v2, 0x1010580

    aput v2, v1, v3

    sput-object v1, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityHeading:[I

    .line 80
    new-array v1, v4, [I

    const v2, 0x101057c

    aput v2, v1, v3

    sput-object v1, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityPaneTitle:[I

    .line 82
    new-array v1, v4, [I

    const v2, 0x1010574

    aput v2, v1, v3

    sput-object v1, Landroidx/appcompat/app/AppCompatViewInflater;->sScreenReaderFocusable:[I

    .line 85
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.widget."

    aput-object v2, v1, v3

    const-string v2, "android.view."

    aput-object v2, v1, v4

    const-string v2, "android.webkit."

    aput-object v2, v1, v0

    sput-object v1, Landroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 93
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    return-void
.end method

.method private backportAccessibilityAttributes(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityHeading:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 400
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityHeading(Landroid/view/View;Z)V

    .line 403
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 405
    sget-object v2, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityPaneTitle:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 406
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 409
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 411
    sget-object v2, Landroidx/appcompat/app/AppCompatViewInflater;->sScreenReaderFocusable:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 413
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setScreenReaderFocusable(Landroid/view/View;Z)V

    .line 415
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    return-void

    .line 396
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_4
    :goto_0
    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 322
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 323
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    sget-object v1, Landroidx/appcompat/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 331
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "handlerName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 333
    new-instance v3, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;

    invoke-direct {v3, p1, v2}, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 336
    return-void

    .line 327
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "handlerName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 340
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 343
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    if-nez v1, :cond_1

    .line 346
    if-eqz p3, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    const/4 v3, 0x0

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 345
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/view/View;

    .line 348
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 350
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v3, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    move-object v1, v3

    .line 351
    invoke-virtual {v0, p2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 354
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 355
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 284
    const-string v0, "view"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 289
    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 290
    aput-object p3, v3, v2

    .line 292
    const/4 v3, -0x1

    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 293
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Landroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 294
    aget-object v4, v4, v3

    invoke-direct {p0, p1, p2, v4}, Landroidx/appcompat/app/AppCompatViewInflater;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 296
    nop

    .line 309
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v5, v0

    .line 310
    aput-object v1, v5, v2

    .line 296
    return-object v4

    .line 293
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 299
    .end local v3    # "i":I
    :cond_2
    nop

    .line 309
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 310
    aput-object v1, v3, v2

    .line 299
    return-object v1

    .line 301
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Landroidx/appcompat/app/AppCompatViewInflater;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v4, v0

    .line 310
    aput-object v1, v4, v2

    .line 301
    return-object v3

    .line 309
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v4, v0

    .line 310
    aput-object v1, v4, v2

    .line 311
    throw v3

    .line 303
    :catch_0
    move-exception v3

    .line 306
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 309
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, v4, v0

    .line 310
    aput-object v1, v4, v2

    .line 306
    return-object v1
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "useAndroidTheme"    # Z
    .param p3, "useAppTheme"    # Z

    .line 367
    sget-object v0, Landroidx/appcompat/R$styleable;->View:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 368
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 369
    .local v2, "themeId":I
    if-eqz p2, :cond_0

    .line 371
    sget v3, Landroidx/appcompat/R$styleable;->View_android_theme:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 373
    :cond_0
    if-eqz p3, :cond_1

    if-nez v2, :cond_1

    .line 375
    sget v3, Landroidx/appcompat/R$styleable;->View_theme:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 377
    if-eqz v2, :cond_1

    .line 378
    const-string v1, "AppCompatViewInflater"

    const-string v3, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    if-eqz v2, :cond_3

    instance-of v1, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 385
    invoke-virtual {v1}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 388
    :cond_2
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p0, v1

    .line 390
    :cond_3
    return-object p0
.end method

.method private verifyNotNull(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .line 272
    if-eqz p1, :cond_0

    .line 276
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " asked to inflate view for <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">, but returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 247
    new-instance v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 211
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 231
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckedTextView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 241
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 216
    new-instance v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageButton;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 226
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 206
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 253
    new-instance v0, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 236
    new-instance v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRatingBar;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 258
    new-instance v0, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 263
    new-instance v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 221
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 201
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createToggleButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatToggleButton;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 268
    new-instance v0, Landroidx/appcompat/widget/AppCompatToggleButton;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "inheritContext"    # Z
    .param p6, "readAndroidTheme"    # Z
    .param p7, "readAppTheme"    # Z
    .param p8, "wrapContext"    # Z

    .line 101
    move-object v0, p3

    .line 105
    .local v0, "originalContext":Landroid/content/Context;
    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 108
    :cond_0
    if-nez p6, :cond_1

    if-eqz p7, :cond_2

    .line 110
    :cond_1
    invoke-static {p3, p4, p6, p7}, Landroidx/appcompat/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object p3

    .line 112
    :cond_2
    if-eqz p8, :cond_3

    .line 113
    invoke-static {p3}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    .line 116
    :cond_3
    const/4 v1, 0x0

    .line 119
    .local v1, "view":Landroid/view/View;
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    goto/16 :goto_0

    :sswitch_0
    const-string v3, "Button"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "EditText"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x3

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "CheckBox"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x6

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "ImageView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v3, "ToggleButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xd

    goto :goto_0

    :sswitch_6
    const-string v3, "RadioButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_7
    const-string v3, "Spinner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_8
    const-string v3, "SeekBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xc

    goto :goto_0

    :sswitch_9
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_a
    const-string v3, "TextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_b
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_c
    const-string v3, "CheckedTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_d
    const-string v3, "RatingBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xb

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 181
    invoke-virtual {p0, p3, p2, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_1

    .line 173
    :pswitch_0
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createToggleButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatToggleButton;

    move-result-object v1

    .line 174
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 175
    goto/16 :goto_1

    .line 169
    :pswitch_1
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v1

    .line 170
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 171
    goto :goto_1

    .line 165
    :pswitch_2
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRatingBar;

    move-result-object v1

    .line 166
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 167
    goto :goto_1

    .line 161
    :pswitch_3
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    move-result-object v1

    .line 162
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 163
    goto :goto_1

    .line 157
    :pswitch_4
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v1

    .line 158
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 159
    goto :goto_1

    .line 153
    :pswitch_5
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckedTextView;

    move-result-object v1

    .line 154
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 155
    goto :goto_1

    .line 149
    :pswitch_6
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object v1

    .line 150
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 151
    goto :goto_1

    .line 145
    :pswitch_7
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v1

    .line 146
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 147
    goto :goto_1

    .line 141
    :pswitch_8
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageButton;

    move-result-object v1

    .line 142
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 143
    goto :goto_1

    .line 137
    :pswitch_9
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object v1

    .line 138
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 139
    goto :goto_1

    .line 133
    :pswitch_a
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v1

    .line 134
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 135
    goto :goto_1

    .line 129
    :pswitch_b
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v1

    .line 130
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 131
    goto :goto_1

    .line 125
    :pswitch_c
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    .line 126
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 127
    goto :goto_1

    .line 121
    :pswitch_d
    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    .line 122
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 123
    nop

    .line 184
    :goto_1
    if-nez v1, :cond_5

    if-eq v0, p3, :cond_5

    .line 187
    invoke-direct {p0, p3, p2, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 190
    :cond_5
    if-eqz v1, :cond_6

    .line 192
    invoke-direct {p0, v1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 193
    invoke-direct {p0, p3, v1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->backportAccessibilityAttributes(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 196
    :cond_6
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
