.class Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandPreLayout"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private mState:I

.field private final mView:Landroid/view/View;

.field private mainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

.field final synthetic this$0:Landroidx/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/BrowseSupportFragment;Ljava/lang/Runnable;Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;Landroid/view/View;)V
    .locals 0

    .line 1862
    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    iput-object p4, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    .line 1864
    iput-object p2, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mCallback:Ljava/lang/Runnable;

    .line 1865
    iput-object p3, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    .line 1869
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1870
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setExpand(Z)V

    .line 1872
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1873
    iput v1, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mState:I

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 1878
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1882
    :cond_0
    iget v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mState:I

    if-nez v0, :cond_1

    .line 1883
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setExpand(Z)V

    .line 1885
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1886
    iput v1, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mState:I

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 1888
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1889
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x2

    .line 1890
    iput v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mState:I

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 1879
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v1
.end method
