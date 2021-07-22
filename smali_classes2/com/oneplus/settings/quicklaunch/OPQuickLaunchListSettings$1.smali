.class Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;
.super Landroid/os/Handler;
.source "OPQuickLaunchListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;Landroid/os/Looper;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    .line 71
    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$100(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    .line 74
    invoke-virtual {v1, p1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object p1

    .line 73
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$200(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setAppList(Ljava/util/List;)V

    .line 76
    new-instance p1, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$300(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/oneplus/settings/quicklaunch/OPAppLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)V

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    .line 78
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 81
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 82
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$400(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;

    invoke-static {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;->access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchListSettings;)Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method
