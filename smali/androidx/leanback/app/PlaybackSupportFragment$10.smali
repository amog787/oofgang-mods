.class Landroidx/leanback/app/PlaybackSupportFragment$10;
.super Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "PlaybackSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/PlaybackSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/PlaybackSupportFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/PlaybackSupportFragment;)V
    .locals 0

    .line 883
    iput-object p1, p0, Landroidx/leanback/app/PlaybackSupportFragment$10;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    invoke-direct {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    .line 887
    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment$10;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    iget-boolean p0, p0, Landroidx/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    if-nez p0, :cond_0

    .line 889
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 895
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    .line 896
    instance-of v0, p1, Landroidx/leanback/widget/PlaybackSeekUi;

    if-eqz v0, :cond_0

    .line 897
    check-cast p1, Landroidx/leanback/widget/PlaybackSeekUi;

    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment$10;->this$0:Landroidx/leanback/app/PlaybackSupportFragment;

    iget-object p0, p0, Landroidx/leanback/app/PlaybackSupportFragment;->mChainedClient:Landroidx/leanback/widget/PlaybackSeekUi$Client;

    invoke-interface {p1, p0}, Landroidx/leanback/widget/PlaybackSeekUi;->setPlaybackSeekUiClient(Landroidx/leanback/widget/PlaybackSeekUi$Client;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    .line 905
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 906
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 907
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
