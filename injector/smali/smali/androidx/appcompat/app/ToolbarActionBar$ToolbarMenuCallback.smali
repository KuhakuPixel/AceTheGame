.class Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarMenuCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .locals 0

    .line 519
    iput-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2
    .param p1, "featureId"    # I

    .line 534
    if-nez p1, :cond_0

    .line 538
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v1, v1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 540
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPreparePanel(I)Z
    .locals 2
    .param p1, "featureId"    # I

    .line 523
    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-boolean v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->setMenuPrepared()V

    .line 525
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    .line 529
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
