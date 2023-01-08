.class Landroidx/core/widget/TextViewCompat$Api17Impl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    return-void
.end method

.method static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1110
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static getLayoutDirection(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 1093
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method static getTextDirection(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 1125
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v0

    return v0
.end method

.method static getTextLocale(Landroid/widget/TextView;)Ljava/util/Locale;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1120
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 1088
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1089
    return-void
.end method

.method static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 1105
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 1106
    return-void
.end method

.method static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 1099
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1100
    return-void
.end method

.method static setTextDirection(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "textDirection"    # I

    .line 1115
    invoke-virtual {p0, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 1116
    return-void
.end method
