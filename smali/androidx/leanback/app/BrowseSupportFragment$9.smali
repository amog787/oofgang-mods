.class Landroidx/leanback/app/BrowseSupportFragment$9;
.super Landroidx/leanback/transition/TransitionListener;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/BrowseSupportFragment;->createHeadersTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/BrowseSupportFragment;)V
    .locals 0

    .line 1335
    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$9;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Landroidx/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 1

    .line 1341
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$9;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 1342
    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz p1, :cond_0

    .line 1343
    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionEnd()V

    .line 1344
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$9;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v0, p1, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 1345
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1346
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1351
    :cond_0
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$9;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    if-eqz p1, :cond_1

    .line 1352
    invoke-virtual {p1}, Landroidx/leanback/app/HeadersSupportFragment;->onTransitionEnd()V

    .line 1353
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$9;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v0, p1, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_1

    .line 1354
    iget-object p1, p1, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1355
    invoke-virtual {p1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1356
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1362
    :cond_1
    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$9;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    .line 1364
    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$9;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroidx/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    if-eqz p1, :cond_2

    .line 1365
    iget-boolean p0, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {p1, p0}, Landroidx/leanback/app/BrowseSupportFragment$BrowseTransitionListener;->onHeadersTransitionStop(Z)V

    :cond_2
    return-void
.end method

.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
