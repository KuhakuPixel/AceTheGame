.class Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CheckedTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method static getCheckMarkTintList(Landroid/widget/CheckedTextView;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "textView"    # Landroid/widget/CheckedTextView;

    .line 141
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method static getCheckMarkTintMode(Landroid/widget/CheckedTextView;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "textView"    # Landroid/widget/CheckedTextView;

    .line 151
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method static setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/CheckedTextView;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 136
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    .line 137
    return-void
.end method

.method static setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/CheckedTextView;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 146
    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 147
    return-void
.end method
