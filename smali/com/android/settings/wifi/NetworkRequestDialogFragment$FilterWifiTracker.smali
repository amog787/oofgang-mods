.class final Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;
.super Ljava/lang/Object;
.source "NetworkRequestDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FilterWifiTracker"
.end annotation


# instance fields
.field private final mAccessPointKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field final synthetic this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 336
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance p1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;)V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    const/4 v0, 0x1

    .line 337
    invoke-static {p2, p1, p3, v0, v0}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 339
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    .line 340
    iput-object p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 363
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    .line 368
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 369
    iget-object v6, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 374
    iget-object v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$000(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lt v2, v4, :cond_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$000(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lt v2, v4, :cond_2

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$100(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    :cond_2
    if-lez v2, :cond_3

    .line 385
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->access$200(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    :cond_3
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz p0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz p0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    :cond_0
    return-void
.end method

.method public updateKeys(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 348
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 349
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/content/Context;Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->mAccessPointKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
