.class Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;
.super Ljava/lang/Object;
.source "NetworkRestrictManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/firewall/NetworkRestrictManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTaskRunnable"
.end annotation


# instance fields
.field mShowSystemApp:Z

.field final synthetic this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictManager;Z)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-boolean p2, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->mShowSystemApp:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 316
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->mShowSystemApp:Z

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$200(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$300(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/util/Map;

    move-result-object v0

    .line 321
    :goto_0
    invoke-static {}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v2}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$100(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 323
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 324
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 326
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/security/firewall/AppUidItem;

    .line 327
    iget-object v4, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v4}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$100(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$500(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x111

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$500(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x112

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 335
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$500(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method
