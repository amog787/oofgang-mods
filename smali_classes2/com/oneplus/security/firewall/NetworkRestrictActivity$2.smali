.class Lcom/oneplus/security/firewall/NetworkRestrictActivity$2;
.super Ljava/lang/Object;
.source "NetworkRestrictActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/firewall/NetworkRestrictActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$2;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 134
    sget v0, Lcom/android/settings/R$id;->firewall_rule_allow_batch:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v5, v2

    :goto_0
    move v6, v5

    goto :goto_1

    .line 137
    :cond_0
    sget v0, Lcom/android/settings/R$id;->firewall_rule_forbid_batch:I

    if-ne p1, v0, :cond_1

    move v5, v1

    goto :goto_0

    .line 140
    :cond_1
    sget v0, Lcom/android/settings/R$id;->firewall_rule_wlan_only_batch:I

    if-ne p1, v0, :cond_2

    move v5, v1

    move v6, v2

    goto :goto_1

    .line 143
    :cond_2
    sget v0, Lcom/android/settings/R$id;->firewall_rule_data_only_batch:I

    if-ne p1, v0, :cond_3

    move v6, v1

    move v5, v2

    .line 149
    :goto_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$2;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->access$200(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Lcom/oneplus/security/firewall/NetworkRestrictAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->getmAppUidItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$2;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/firewall/NetworkRestrictManager;

    move-result-object v3

    iget-object v7, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$2;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-static {v7}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->access$100(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->batchUpdateRules(Ljava/util/List;IILcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;Ljava/util/concurrent/Executor;)V

    return v2

    :catchall_0
    move-exception p1

    .line 152
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return v2
.end method
