.class Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;
.super Landroid/os/Handler;
.source "OPQuickLaunchShortCutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;Landroid/os/Looper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    .line 57
    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$300(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    .line 61
    invoke-virtual {v1, p1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object p1

    .line 60
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->setData(Ljava/util/List;)V

    .line 63
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->setAppType(I)V

    .line 65
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-static {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;->access$500(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
