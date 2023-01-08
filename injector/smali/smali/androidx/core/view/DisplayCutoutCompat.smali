.class public final Landroidx/core/view/DisplayCutoutCompat;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DisplayCutoutCompat$Api29Impl;,
        Landroidx/core/view/DisplayCutoutCompat$Api30Impl;,
        Landroidx/core/view/DisplayCutoutCompat$Api28Impl;
    }
.end annotation


# instance fields
.field private final mDisplayCutout:Landroid/view/DisplayCutout;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 2
    .param p1, "safeInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p2, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/view/DisplayCutout;)V
    .locals 0
    .param p1, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)V
    .locals 1
    .param p1, "safeInsets"    # Landroidx/core/graphics/Insets;
    .param p2, "boundLeft"    # Landroid/graphics/Rect;
    .param p3, "boundTop"    # Landroid/graphics/Rect;
    .param p4, "boundRight"    # Landroid/graphics/Rect;
    .param p5, "boundBottom"    # Landroid/graphics/Rect;
    .param p6, "waterfallInsets"    # Landroidx/core/graphics/Insets;

    .line 77
    invoke-static/range {p1 .. p6}, Landroidx/core/view/DisplayCutoutCompat;->constructDisplayCutout(Landroidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    .line 79
    return-void
.end method

.method private static constructDisplayCutout(Landroidx/core/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)Landroid/view/DisplayCutout;
    .locals 8
    .param p0, "safeInsets"    # Landroidx/core/graphics/Insets;
    .param p1, "boundLeft"    # Landroid/graphics/Rect;
    .param p2, "boundTop"    # Landroid/graphics/Rect;
    .param p3, "boundRight"    # Landroid/graphics/Rect;
    .param p4, "boundBottom"    # Landroid/graphics/Rect;
    .param p5, "waterfallInsets"    # Landroidx/core/graphics/Insets;

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v2

    .line 86
    invoke-virtual {p5}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v7

    .line 85
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Landroidx/core/view/DisplayCutoutCompat$Api30Impl;->createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 88
    invoke-virtual {p0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/view/DisplayCutoutCompat$Api29Impl;->createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    .line 90
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_6

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroidx/core/graphics/Insets;->left:I

    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    iget v3, p0, Landroidx/core/graphics/Insets;->right:I

    iget v4, p0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    .local v0, "safeInsetRect":Landroid/graphics/Rect;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "boundingRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_2
    if-eqz p2, :cond_3

    .line 98
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_3
    if-eqz p3, :cond_4

    .line 101
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_4
    if-eqz p4, :cond_5

    .line 104
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_5
    invoke-static {v0, v1}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;

    move-result-object v2

    return-object v2

    .line 108
    .end local v0    # "safeInsetRect":Landroid/graphics/Rect;
    .end local v1    # "boundingRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method static wrap(Landroid/view/DisplayCutout;)Landroidx/core/view/DisplayCutoutCompat;
    .locals 1
    .param p0, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 213
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/core/view/DisplayCutoutCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 191
    if-ne p0, p1, :cond_0

    .line 192
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/core/view/DisplayCutoutCompat;

    .line 198
    .local v0, "other":Landroidx/core/view/DisplayCutoutCompat;
    iget-object v1, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v2, v0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 195
    .end local v0    # "other":Landroidx/core/view/DisplayCutoutCompat;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingRects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getBoundingRects(Landroid/view/DisplayCutout;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSafeInsetBottom()I
    .locals 2

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetBottom(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeInsetLeft()I
    .locals 2

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetLeft(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeInsetRight()I
    .locals 2

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetRight(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSafeInsetTop()I
    .locals 2

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetTop(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWaterfallInsets()Landroidx/core/graphics/Insets;
    .locals 2

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat$Api30Impl;->getWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 185
    :cond_0
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 203
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutoutCompat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unwrap()Landroid/view/DisplayCutout;
    .locals 1

    .line 218
    iget-object v0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method
