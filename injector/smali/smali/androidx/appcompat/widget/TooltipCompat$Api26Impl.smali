.class Landroidx/appcompat/widget/TooltipCompat$Api26Impl;
.super Ljava/lang/Object;
.source "TooltipCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/TooltipCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method
