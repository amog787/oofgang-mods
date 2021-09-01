.class Lcom/oneplus/security/firewall/NetworkRestrictManager$UpdateRulesFromQRunnable;
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
    name = "UpdateRulesFromQRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictManager;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$UpdateRulesFromQRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private batchSetRules()V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$UpdateRulesFromQRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$600(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/firewall/FirewallRule;->selectAllFirewallRulesAsMapFromQ(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 475
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 476
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/security/firewall/FirewallRule;

    .line 477
    iget-object v2, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager$UpdateRulesFromQRunnable;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-static {v2}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->access$600(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oneplus/security/firewall/FirewallRule;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/security/firewall/FirewallRule;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager$UpdateRulesFromQRunnable;->batchSetRules()V

    return-void
.end method
