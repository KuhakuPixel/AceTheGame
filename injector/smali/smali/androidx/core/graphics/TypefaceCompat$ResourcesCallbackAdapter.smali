.class public Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;
.super Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/TypefaceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourcesCallbackAdapter"
.end annotation


# instance fields
.field private mFontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;


# direct methods
.method public constructor <init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;)V
    .locals 0
    .param p1, "fontCallback"    # Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 321
    invoke-direct {p0}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;-><init>()V

    .line 322
    iput-object p1, p0, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->mFontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 323
    return-void
.end method


# virtual methods
.method public onTypefaceRequestFailed(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 334
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->mFontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    .line 337
    :cond_0
    return-void
.end method

.method public onTypefaceRetrieved(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 327
    iget-object v0, p0, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->mFontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 330
    :cond_0
    return-void
.end method
