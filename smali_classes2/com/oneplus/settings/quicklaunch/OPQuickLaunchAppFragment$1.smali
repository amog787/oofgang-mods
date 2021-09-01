.class Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;
.super Landroid/os/Handler;
.source "OPQuickLaunchAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;Landroid/os/Looper;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    .line 85
    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    .line 88
    invoke-virtual {v1, p1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object p1

    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->setData(Ljava/util/List;)V

    .line 90
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/quicklaunch/OPApplicationListAdapter;->setAppType(I)V

    .line 92
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$300(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$300(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-static {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
