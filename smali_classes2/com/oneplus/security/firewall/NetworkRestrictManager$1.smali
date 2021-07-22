.class Lcom/oneplus/security/firewall/NetworkRestrictManager$1;
.super Landroid/os/Handler;
.source "NetworkRestrictManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/firewall/NetworkRestrictManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictManager;Landroid/os/Looper;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$000(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$000(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    .line 292
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$000(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;->onTaskFinished(ILjava/lang/Object;)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$000(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$000(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;->onTaskError(ILjava/lang/String;)V

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$000(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 282
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$000(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;

    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$100(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;->onTaskFinished(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x111
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
