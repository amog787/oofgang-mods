.class Landroidx/leanback/app/BrowseSupportFragment$5;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BrowseSupportFragment;
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

    .line 1130
    iput-object p1, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1155
    iget-object p2, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1158
    :cond_0
    iget-object p2, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v0, p2, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroidx/leanback/app/BrowseSupportFragment;->isInHeadersTransition()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 1159
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1160
    sget p2, Landroidx/leanback/R$id;->browse_container_dock:I

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v0, p2, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    .line 1161
    invoke-virtual {p2, p0}, Landroidx/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V

    goto :goto_0

    .line 1162
    :cond_2
    sget p2, Landroidx/leanback/R$id;->browse_headers_dock:I

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean p1, p0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 1163
    invoke-virtual {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 1134
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1138
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-boolean v2, v0, Landroidx/leanback/app/BrowseSupportFragment;->mCanShowHeaders:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Landroidx/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v2, :cond_1

    .line 1139
    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroidx/leanback/app/HeadersSupportFragment;

    .line 1140
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1145
    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/BrowseSupportFragment;->mMainFragment:Landroidx/fragment/app/Fragment;

    .line 1146
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 1149
    :cond_2
    iget-object v0, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BrandedSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/leanback/app/BrowseSupportFragment$5;->this$0:Landroidx/leanback/app/BrowseSupportFragment;

    .line 1150
    invoke-virtual {p0}, Landroidx/leanback/app/BrandedSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
