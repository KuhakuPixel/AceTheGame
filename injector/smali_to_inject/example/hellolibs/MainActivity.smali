.class public Lcom/example/hellolibs/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method calc_something()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "difwiew"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/example/hellolibs/MainActivity;->calc_something()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "val":Ljava/lang/String;
    invoke-static {}, Lcom/example/utils/Injector;->Init()V

    .line 45
    invoke-virtual {p0, v0}, Lcom/example/hellolibs/MainActivity;->setContentView(Landroid/view/View;)V

    .line 46
    return-void
.end method
