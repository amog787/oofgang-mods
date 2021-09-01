.class Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;
.super Ljava/lang/Object;
.source "PanelFragment.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/panel/PanelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalPanelCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/panel/PanelFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCustomizedButtonStateChanged$0()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v0}, Lcom/android/settings/panel/PanelFragment;->access$900(Lcom/android/settings/panel/PanelFragment;)Landroid/widget/TextView;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v1}, Lcom/android/settings/panel/PanelFragment;->access$500(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/panel/PanelContent;->isCustomizedButtonUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 466
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v0}, Lcom/android/settings/panel/PanelFragment;->access$900(Lcom/android/settings/panel/PanelFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {p0}, Lcom/android/settings/panel/PanelFragment;->access$500(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getCustomizedButtonTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onHeaderChanged$1()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v0}, Lcom/android/settings/panel/PanelFragment;->access$600(Lcom/android/settings/panel/PanelFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v1}, Lcom/android/settings/panel/PanelFragment;->access$500(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/panel/PanelContent;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v0}, Lcom/android/settings/panel/PanelFragment;->access$700(Lcom/android/settings/panel/PanelFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v1}, Lcom/android/settings/panel/PanelFragment;->access$500(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/panel/PanelContent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {v0}, Lcom/android/settings/panel/PanelFragment;->access$800(Lcom/android/settings/panel/PanelFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-static {p0}, Lcom/android/settings/panel/PanelFragment;->access$500(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public forceClose()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    const-string v1, "others"

    invoke-static {v0, v1}, Lcom/android/settings/panel/PanelFragment;->access$402(Lcom/android/settings/panel/PanelFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method getFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 489
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->this$0:Lcom/android/settings/panel/PanelFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onCustomizedButtonStateChanged$0$PanelFragment$LocalPanelCallback()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->lambda$onCustomizedButtonStateChanged$0()V

    return-void
.end method

.method public synthetic lambda$onHeaderChanged$1$PanelFragment$LocalPanelCallback()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;->lambda$onHeaderChanged$1()V

    return-void
.end method

.method public onCustomizedButtonStateChanged()V
    .locals 1

    .line 465
    new-instance v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$LocalPanelCallback$4cDjHpASvueF3wzqvVwC5Zj11fU;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$LocalPanelCallback$4cDjHpASvueF3wzqvVwC5Zj11fU;-><init>(Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHeaderChanged()V
    .locals 1

    .line 474
    new-instance v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$LocalPanelCallback$-_oN9G82As_0L8bDKbGGq9tZzmw;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$LocalPanelCallback$-_oN9G82As_0L8bDKbGGq9tZzmw;-><init>(Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
