.class Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;
.super Landroid/os/Handler;
.source "OPDualChannelDownloadAccelerationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;Landroid/os/Looper;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    invoke-static {v0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->access$000(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    .line 45
    invoke-static {v0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->access$100(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    invoke-static {v0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->access$200(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    invoke-static {v0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->access$200(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    invoke-static {v1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->access$100(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    .line 48
    invoke-virtual {v1, p1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object p1

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    iget-object p1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    invoke-static {p1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->access$000(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    invoke-static {v0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->access$200(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;->setData(Ljava/util/List;)V

    .line 50
    iget-object p1, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    sget v0, Lcom/android/settings/R$id;->op_empty_list_tips_view:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    invoke-static {v0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->access$200(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object p0, p0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;->this$0:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;

    invoke-static {p0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;->access$300(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
