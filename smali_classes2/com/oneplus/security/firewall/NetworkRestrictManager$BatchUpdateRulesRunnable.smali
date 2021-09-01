.class Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;
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
    name = "BatchUpdateRulesRunnable"
.end annotation


# instance fields
.field appUidItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;"
        }
    .end annotation
.end field

.field private data:I

.field final synthetic this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

.field private wlan:I


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictManager;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;II)V"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p2, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->appUidItemList:Ljava/util/List;

    .line 432
    iput p3, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->data:I

    .line 433
    iput p4, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->wlan:I

    return-void
.end method

.method private batchSetRules(Ljava/util/List;II)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;II)I"
        }
    .end annotation

    .line 446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/security/firewall/AppUidItem;

    .line 447
    invoke-virtual {v1}, Lcom/oneplus/security/firewall/AppUidItem;->getApps()Ljava/util/List;

    move-result-object v1

    .line 448
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/security/firewall/AppPkgItem;

    .line 449
    new-instance v3, Lcom/oneplus/security/firewall/FirewallRule;

    invoke-virtual {v2}, Lcom/oneplus/security/firewall/AppPkgItem;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/oneplus/security/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 450
    iget-object v2, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v2}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$600(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/oneplus/security/firewall/FirewallRule;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/security/firewall/FirewallRule;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->appUidItemList:Ljava/util/List;

    iget v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->data:I

    iget v2, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->wlan:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->batchSetRules(Ljava/util/List;II)I

    move-result v0

    .line 439
    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$500(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x113

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 440
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 441
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$500(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
