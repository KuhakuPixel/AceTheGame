.class Landroidx/appcompat/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/appcompat/widget/Toolbar;

    .line 214
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 217
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mMenuHostHelper:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/MenuHostHelper;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 218
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 219
    const/4 v1, 0x1

    return v1

    .line 220
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 223
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
