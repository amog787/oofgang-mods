.class public Landroidx/fragment/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentTabHost$SavedState;,
        Landroidx/fragment/app/FragmentTabHost$TabInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 138
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 149
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3

    .line 402
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentTabHost;->getTabInfoForTag(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$TabInfo;

    move-result-object p1

    .line 403
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    if-eq v0, p1, :cond_4

    if-nez p2, :cond_0

    .line 405
    iget-object p2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 408
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, v0, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    if-eqz p1, :cond_3

    .line 415
    iget-object v0, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_2

    .line 416
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 417
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 418
    iget-object v1, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 419
    iget v0, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    iget-object v1, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, p1, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 425
    :cond_3
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    :cond_4
    return-object p2
.end method

.method private getTabInfoForTag(Ljava/lang/String;)Landroidx/fragment/app/FragmentTabHost$TabInfo;
    .locals 4

    .line 433
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 434
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 435
    iget-object v3, v2, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 153
    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 155
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroidx/fragment/app/FragmentTabHost;->mContainerId:I

    .line 156
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 301
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 307
    iget-object v4, p0, Landroidx/fragment/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;

    .line 308
    iget-object v5, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v6, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    .line 309
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v5

    if-nez v5, :cond_2

    .line 310
    iget-object v5, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    iput-object v4, p0, Landroidx/fragment/app/FragmentTabHost;->mLastTab:Landroidx/fragment/app/FragmentTabHost$TabInfo;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 319
    iget-object v2, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 321
    :cond_1
    iget-object v4, v4, Landroidx/fragment/app/FragmentTabHost$TabInfo;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 328
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    .line 329
    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 331
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 332
    iget-object p0, p0, Landroidx/fragment/app/FragmentTabHost;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    instance-of v0, p1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_0

    .line 372
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 375
    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    .line 376
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 377
    iget-object p1, p1, Landroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 358
    new-instance v1, Landroidx/fragment/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroidx/fragment/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 359
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroidx/fragment/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 389
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroidx/fragment/app/FragmentTransaction;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 394
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz p0, :cond_1

    .line 395
    invoke-interface {p0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
