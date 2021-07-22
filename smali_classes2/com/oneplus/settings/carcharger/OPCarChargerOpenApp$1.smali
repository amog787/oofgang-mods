.class Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;
.super Landroid/os/Handler;
.source "OPCarChargerOpenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;Landroid/os/Looper;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$000(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    .line 46
    invoke-static {p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$100(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$200(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 48
    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$200(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$300(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$200(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$100(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAllAppList()Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$000(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$200(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->setData(Ljava/util/List;)V

    .line 52
    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$000(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$400(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->setHasRecommendedCount(I)V

    .line 53
    iget-object p1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {p1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$600(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;->this$0:Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;

    invoke-static {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->access$500(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method
