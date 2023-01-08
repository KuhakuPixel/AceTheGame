.class public Landroidx/appcompat/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroidx/core/internal/view/SupportMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;,
        Landroidx/appcompat/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private mGroupDividerEnabled:Z

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mStructureChangedWhileDispatchPrevented:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 159
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 161
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 163
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 165
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 167
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 182
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 224
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 233
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 235
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 236
    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 9
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "ordering"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "defaultShowAsAction"    # I

    .line 462
    new-instance v8, Landroidx/appcompat/view/menu/MenuItemImpl;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/MenuItemImpl;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .line 284
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 287
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 288
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 289
    .local v2, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v2, :cond_1

    .line 290
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    :cond_1
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->updateMenuView(Z)V

    .line 294
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v2    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :goto_1
    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 296
    return-void
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 345
    const-string v0, "android:menu:presenters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 347
    .local v0, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 349
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 350
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 351
    .local v3, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v3, :cond_1

    .line 352
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 354
    :cond_1
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    move-result v4

    .line 355
    .local v4, "id":I
    if-lez v4, :cond_2

    .line 356
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 357
    .local v5, "parcel":Landroid/os/Parcelable;
    if-eqz v5, :cond_2

    .line 358
    invoke-interface {v3, v5}, Landroidx/appcompat/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 362
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    .end local v4    # "id":I
    .end local v5    # "parcel":Landroid/os/Parcelable;
    :cond_2
    :goto_1
    goto :goto_0

    .line 363
    :cond_3
    return-void

    .line 347
    :cond_4
    :goto_2
    return-void
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 321
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 323
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 325
    .local v0, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 326
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 327
    .local v3, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v3, :cond_1

    .line 328
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 330
    :cond_1
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->getId()I

    move-result v4

    .line 331
    .local v4, "id":I
    if-lez v4, :cond_2

    .line 332
    invoke-interface {v3}, Landroidx/appcompat/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 333
    .local v5, "state":Landroid/os/Parcelable;
    if-eqz v5, :cond_2

    .line 334
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    .end local v4    # "id":I
    .end local v5    # "state":Landroid/os/Parcelable;
    :cond_2
    :goto_1
    goto :goto_0

    .line 340
    :cond_3
    const-string v1, "android:menu:presenters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 341
    return-void
.end method

.method private dispatchSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;Landroidx/appcompat/view/menu/MenuPresenter;)Z
    .locals 5
    .param p1, "subMenu"    # Landroidx/appcompat/view/menu/SubMenuBuilder;
    .param p2, "preferredPresenter"    # Landroidx/appcompat/view/menu/MenuPresenter;

    .line 300
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    .line 305
    .local v0, "result":Z
    if-eqz p2, :cond_1

    .line 306
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v0

    .line 309
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 310
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 311
    .local v3, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v3, :cond_2

    .line 312
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 313
    :cond_2
    if-nez v0, :cond_3

    .line 314
    invoke-interface {v3, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    move-result v0

    .line 316
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :cond_3
    :goto_1
    goto :goto_0

    .line 317
    :cond_4
    return v0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 849
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 850
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 851
    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 852
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 849
    .end local v1    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 856
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .line 781
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    .line 783
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Landroidx/appcompat/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 787
    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1

    .line 784
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .line 582
    if-ltz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 586
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 587
    :cond_1
    return-void

    .line 582
    :cond_2
    :goto_0
    return-void
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .line 1224
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1226
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    if-eqz p5, :cond_0

    .line 1227
    iput-object p5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1230
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1231
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1233
    :cond_0
    if-lez p1, :cond_1

    .line 1234
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1235
    :cond_1
    if-eqz p2, :cond_2

    .line 1236
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1239
    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 1240
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1241
    :cond_3
    if-eqz p4, :cond_4

    .line 1242
    iput-object p4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1246
    :cond_4
    :goto_1
    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1250
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1251
    return-void
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .line 814
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 815
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 817
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 816
    invoke-static {v1, v2}, Landroidx/core/view/ViewConfigurationCompat;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 818
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .line 473
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .line 483
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 478
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 15
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .line 522
    move-object v0, p0

    move-object/from16 v1, p5

    iget-object v2, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 523
    .local v2, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 524
    const/4 v3, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 525
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 527
    .local v3, "N":I
    :cond_0
    and-int/lit8 v7, p7, 0x1

    if-nez v7, :cond_1

    .line 528
    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeGroup(I)V

    .line 531
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_4

    .line 532
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 533
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    .line 534
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_2

    move-object v10, v5

    goto :goto_1

    :cond_2
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, v1, v10

    :goto_1
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 535
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 538
    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual {p0, v11, v12, v13, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    .line 539
    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    .line 540
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v10

    .line 541
    .local v10, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_3

    iget v14, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v14, :cond_3

    .line 542
    iget v14, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v10, p8, v14

    .line 531
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    .end local v10    # "item":Landroid/view/MenuItem;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    .line 546
    .end local v7    # "i":I
    return v3
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 443
    invoke-static {p3}, Landroidx/appcompat/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v7

    .line 445
    .local v7, "ordering":I
    iget v6, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    .line 448
    .local v0, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 453
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v1, v7}, Landroidx/appcompat/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 454
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 456
    return-object v0
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroidx/appcompat/view/menu/MenuPresenter;

    .line 250
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 2
    .param p1, "presenter"    # Landroidx/appcompat/view/menu/MenuPresenter;
    .param p2, "menuContext"    # Landroid/content/Context;

    .line 263
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {p1, p2, p0}, Landroidx/appcompat/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 266
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .line 493
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .line 507
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 498
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 499
    .local v0, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    new-instance v1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 500
    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    .line 502
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .line 843
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 844
    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 846
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 606
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 609
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 611
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 612
    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 595
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    .line 596
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->clearHeader()V

    .line 597
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 598
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 599
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 600
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 601
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 602
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .line 1215
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1216
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1217
    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1220
    return-void
.end method

.method public close()V
    .locals 1

    .line 1048
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1049
    return-void
.end method

.method public final close(Z)V
    .locals 4
    .param p1, "closeAllMenus"    # Z

    .line 1032
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1034
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1035
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1036
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 1037
    .local v2, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v2, :cond_1

    .line 1038
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1040
    :cond_1
    invoke-interface {v2, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 1042
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v2    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :goto_1
    goto :goto_0

    .line 1043
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1044
    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1375
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_0

    goto :goto_3

    .line 1377
    :cond_0
    const/4 v0, 0x0

    .line 1379
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1380
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1381
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 1382
    .local v3, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v3, :cond_1

    .line 1383
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1384
    :cond_1
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v4

    move v0, v4

    if-eqz v4, :cond_2

    .line 1385
    goto :goto_2

    .line 1387
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :cond_2
    :goto_1
    goto :goto_0

    .line 1388
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1390
    if-eqz v0, :cond_4

    .line 1391
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1393
    :cond_4
    return v0

    .line 1375
    .end local v0    # "collapsed":Z
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 836
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1353
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1355
    :cond_0
    const/4 v0, 0x0

    .line 1357
    .local v0, "expanded":Z
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1358
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1359
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 1360
    .local v3, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v3, :cond_1

    .line 1361
    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1362
    :cond_1
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v4

    move v0, v4

    if-eqz v4, :cond_2

    .line 1363
    goto :goto_2

    .line 1365
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v3    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :cond_2
    :goto_1
    goto :goto_0

    .line 1366
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1368
    if-eqz v0, :cond_4

    .line 1369
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1371
    :cond_4
    return v0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .line 730
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 732
    .local v0, "size":I
    if-gez p2, :cond_0

    .line 733
    const/4 p2, 0x0

    .line 736
    :cond_0
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 737
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 739
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 740
    return v1

    .line 736
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4
    .param p1, "id"    # I

    .line 695
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 696
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 697
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 698
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 699
    return-object v2

    .line 700
    :cond_0
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 701
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 703
    .local v3, "possibleItem":Landroid/view/MenuItem;
    if-eqz v3, :cond_1

    .line 704
    return-object v3

    .line 696
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v3    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .line 713
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 715
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 716
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 717
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 718
    return v1

    .line 715
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 932
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 933
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 934
    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 936
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 937
    return-object v2

    .line 940
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 941
    .local v1, "metaState":I
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 943
    .local v3, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 946
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 947
    .local v4, "size":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 948
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v2

    .line 951
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 954
    .local v6, "qwerty":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_7

    .line 955
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 956
    .local v8, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v9

    goto :goto_1

    .line 957
    :cond_2
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v9

    :goto_1
    nop

    .line 958
    .local v9, "shortcutChar":C
    iget-object v10, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v10, v5

    if-ne v9, v10, :cond_3

    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_5

    :cond_3
    iget-object v10, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x2

    aget-char v10, v10, v11

    if-ne v9, v10, :cond_4

    and-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_5

    :cond_4
    if-eqz v6, :cond_6

    const/16 v10, 0x8

    if-ne v9, v10, :cond_6

    const/16 v10, 0x43

    if-ne p1, v10, :cond_6

    .line 964
    :cond_5
    return-object v8

    .line 954
    .end local v8    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v9    # "shortcutChar":C
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 967
    .end local v7    # "i":I
    :cond_7
    return-object v2
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 17
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 884
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v4

    .line 885
    .local v4, "qwerty":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v5

    .line 886
    .local v5, "modifierState":I
    new-instance v6, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v6}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 888
    .local v6, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {v3, v6}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v7

    .line 890
    .local v7, "isKeyCodeMapped":Z
    const/16 v8, 0x43

    if-nez v7, :cond_0

    if-eq v2, v8, :cond_0

    .line 891
    return-void

    .line 895
    :cond_0
    iget-object v9, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 896
    .local v9, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_7

    .line 897
    iget-object v11, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 898
    .local v11, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 899
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v12, v1, v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 902
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v12

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v12

    .line 904
    .local v12, "shortcutChar":C
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getAlphabeticModifiers()I

    move-result v13

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->getNumericModifiers()I

    move-result v13

    .line 905
    .local v13, "shortcutModifiers":I
    :goto_2
    const v14, 0x1100f

    and-int v15, v5, v14

    and-int/2addr v14, v13

    const/16 v16, 0x0

    if-ne v15, v14, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    .line 907
    .local v14, "isModifiersExactMatch":Z
    :goto_3
    if-eqz v14, :cond_6

    if-eqz v12, :cond_6

    iget-object v15, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v15, v15, v16

    if-eq v12, v15, :cond_5

    iget-object v15, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/16 v16, 0x2

    aget-char v15, v15, v16

    if-eq v12, v15, :cond_5

    if-eqz v4, :cond_6

    const/16 v15, 0x8

    if-ne v12, v15, :cond_6

    if-ne v2, v8, :cond_6

    .line 912
    :cond_5
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 913
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    .end local v11    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    .end local v12    # "shortcutChar":C
    .end local v13    # "shortcutModifiers":I
    .end local v14    # "isModifiersExactMatch":Z
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 916
    .end local v10    # "i":I
    :cond_7
    return-void
.end method

.method public flagActionItems()V
    .locals 6

    .line 1165
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1167
    .local v0, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v1, :cond_0

    .line 1168
    return-void

    .line 1172
    :cond_0
    const/4 v1, 0x0

    .line 1173
    .local v1, "flagged":Z
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1174
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 1175
    .local v4, "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    if-nez v4, :cond_1

    .line 1176
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1178
    :cond_1
    invoke-interface {v4}, Landroidx/appcompat/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v5

    or-int/2addr v1, v5

    .line 1180
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v4    # "presenter":Landroidx/appcompat/view/menu/MenuPresenter;
    :goto_1
    goto :goto_0

    .line 1182
    :cond_2
    if-eqz v1, :cond_5

    .line 1183
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1184
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1185
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1186
    .local v2, "itemsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 1187
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1188
    .local v4, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1189
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1191
    :cond_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    .end local v4    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1194
    .end local v2    # "itemsSize":I
    .end local v3    # "i":I
    :cond_4
    goto :goto_4

    .line 1197
    :cond_5
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1198
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1199
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1201
    :goto_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1202
    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1205
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 1206
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .line 432
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 832
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 1397
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1318
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1314
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1322
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .line 754
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1210
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->flagActionItems()V

    .line 1211
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .line 1349
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .line 828
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 1330
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1120
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0

    .line 1123
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1125
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1127
    .local v0, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1128
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1129
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1132
    .end local v1    # "i":I
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1133
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1135
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object v1
.end method

.method public hasVisibleItems()Z
    .locals 5

    .line 677
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 678
    return v1

    .line 681
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 683
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 684
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 685
    .local v3, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 686
    return v1

    .line 683
    .end local v3    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public isGroupDividerEnabled()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    return v0
.end method

.method isQwertyMode()Z
    .locals 1

    .line 794
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 759
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .line 824
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1115
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1116
    return-void
.end method

.method onItemVisibleChanged(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1104
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1105
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .line 1059
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1060
    if-eqz p1, :cond_0

    .line 1061
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1062
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1065
    :cond_0
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    goto :goto_0

    .line 1067
    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1068
    if-eqz p1, :cond_2

    .line 1069
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 1072
    :cond_2
    :goto_0
    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 973
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .line 977
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "preferredPresenter"    # Landroidx/appcompat/view/menu/MenuPresenter;
    .param p3, "flags"    # I

    .line 981
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 983
    .local v0, "itemImpl":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 987
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->invoke()Z

    move-result v2

    .line 989
    .local v2, "invoked":Z
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v3

    .line 990
    .local v3, "provider":Landroidx/core/view/ActionProvider;
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/core/view/ActionProvider;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 991
    .local v5, "providerHasSubMenu":Z
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 992
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->expandActionView()Z

    move-result v1

    or-int/2addr v2, v1

    .line 993
    if-eqz v2, :cond_9

    .line 994
    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    goto :goto_2

    .line 996
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1015
    :cond_3
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_9

    .line 1016
    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    goto :goto_2

    .line 997
    :cond_4
    :goto_1
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_5

    .line 999
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1002
    :cond_5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1003
    new-instance v1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, p0, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V

    .line 1006
    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 1007
    .local v1, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    if-eqz v5, :cond_7

    .line 1008
    invoke-virtual {v3, v1}, Landroidx/core/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 1010
    :cond_7
    invoke-direct {p0, v1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;Landroidx/appcompat/view/menu/MenuPresenter;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1011
    if-nez v2, :cond_8

    .line 1012
    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 1014
    .end local v1    # "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :cond_8
    nop

    .line 1020
    :cond_9
    :goto_2
    return v2

    .line 984
    .end local v2    # "invoked":Z
    .end local v3    # "provider":Landroidx/core/view/ActionProvider;
    .end local v5    # "providerHasSubMenu":Z
    :cond_a
    :goto_3
    return v1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .line 861
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    .line 863
    .local v0, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    const/4 v1, 0x0

    .line 865
    .local v1, "handled":Z
    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0, v0, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v1

    .line 869
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 870
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 873
    :cond_1
    return v1
.end method

.method public removeGroup(I)V
    .locals 4
    .param p1, "group"    # I

    .line 556
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 558
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 559
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 560
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .line 561
    .local v2, "numRemoved":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    if-ge v2, v1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 563
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v2, v3

    goto :goto_0

    .line 567
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 569
    .end local v1    # "maxRemovable":I
    .end local v3    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .line 551
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 552
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 590
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 591
    return-void
.end method

.method public removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Landroidx/appcompat/view/menu/MenuPresenter;

    .line 275
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 276
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuPresenter;

    .line 277
    .local v2, "item":Landroidx/appcompat/view/menu/MenuPresenter;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    .line 278
    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;"
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuPresenter;
    :cond_1
    goto :goto_0

    .line 281
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "states"    # Landroid/os/Bundle;

    .line 402
    if-nez p1, :cond_0

    .line 403
    return-void

    .line 406
    :cond_0
    nop

    .line 407
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 409
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 410
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 411
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 412
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 413
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 414
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 416
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 418
    .local v5, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 410
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v2    # "i":I
    :cond_3
    const-string v2, "android:menu:expandedactionview"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 423
    .local v2, "expandedId":I
    if-lez v2, :cond_4

    .line 424
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 425
    .local v3, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v3, :cond_4

    .line 426
    invoke-interface {v3}, Landroid/view/MenuItem;->expandActionView()Z

    .line 429
    .end local v3    # "itemToExpand":Landroid/view/MenuItem;
    :cond_4
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .line 370
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 371
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outStates"    # Landroid/os/Bundle;

    .line 374
    const/4 v0, 0x0

    .line 376
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 377
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 378
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 379
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 380
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 381
    if-nez v0, :cond_0

    .line 382
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v5

    .line 384
    :cond_0
    invoke-virtual {v4, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 385
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 386
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const-string v6, "android:menu:expandedactionview"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 390
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 391
    .local v5, "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 377
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "subMenu":Landroidx/appcompat/view/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v2    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 396
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 398
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 366
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 367
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 436
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 437
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1341
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1342
    return-void
.end method

.method public setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .line 239
    iput p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 240
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 615
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 617
    .local v0, "group":I
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 618
    .local v1, "N":I
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 619
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 620
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 621
    .local v3, "curItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v0, :cond_3

    .line 622
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 623
    :cond_0
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 626
    :cond_1
    if-ne v3, p1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    .line 619
    .end local v3    # "curItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 629
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 630
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .line 634
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 636
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 637
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 638
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 639
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 640
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 636
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 512
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    .line 513
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .line 665
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 667
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 668
    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 669
    .local v2, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 670
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 667
    .end local v2    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .line 647
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 652
    .local v0, "N":I
    const/4 v1, 0x0

    .line 653
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 654
    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 655
    .local v3, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 656
    invoke-virtual {v3, p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 653
    .end local v3    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 661
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6
    .param p1, "iconRes"    # I

    .line 1297
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1298
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1285
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1286
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6
    .param p1, "titleRes"    # I

    .line 1273
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1274
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1261
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1262
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 1309
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1310
    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 1345
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1346
    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 0
    .param p1, "override"    # Z

    .line 1406
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    .line 1407
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .line 764
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 766
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 767
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .line 805
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 806
    return-void

    .line 809
    :cond_0
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 810
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 811
    return-void
.end method

.method public size()I
    .locals 1

    .line 749
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .line 1088
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1090
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_0

    .line 1091
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1092
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 1094
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .line 1080
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 1081
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 1083
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z

    .line 1085
    :cond_0
    return-void
.end method
