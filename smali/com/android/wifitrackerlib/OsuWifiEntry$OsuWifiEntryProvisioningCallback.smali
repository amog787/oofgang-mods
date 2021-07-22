.class Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;
.super Landroid/net/wifi/hotspot2/ProvisioningCallback;
.source "OsuWifiEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/OsuWifiEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OsuWifiEntryProvisioningCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;


# direct methods
.method constructor <init>(Lcom/android/wifitrackerlib/OsuWifiEntry;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/ProvisioningCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProvisioningComplete()V
    .locals 6

    .line 361
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-static {v0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$100(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/wifitrackerlib/R$string;->osu_sign_up_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$002(Lcom/android/wifitrackerlib/OsuWifiEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    .line 364
    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 365
    invoke-static {v0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$200(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 366
    invoke-static {v1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$200(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 369
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz p0, :cond_0

    .line 370
    invoke-interface {p0, v1}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    :cond_0
    return-void

    .line 374
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v2, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget-object v2, v2, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 377
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 378
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 379
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const/4 v2, 0x0

    .line 380
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 381
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x1

    .line 382
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 384
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 385
    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 386
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 387
    invoke-static {v2}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 391
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 392
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    .line 398
    :cond_4
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz p0, :cond_5

    .line 399
    invoke-interface {p0, v1}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    :cond_5
    return-void
.end method

.method public onProvisioningFailure(I)V
    .locals 2

    .line 318
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 319
    invoke-static {p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$000(Lcom/android/wifitrackerlib/OsuWifiEntry;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-static {v0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$100(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/wifitrackerlib/R$string;->osu_completing_sign_up:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 320
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$100(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/wifitrackerlib/R$string;->osu_sign_up_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$002(Lcom/android/wifitrackerlib/OsuWifiEntry;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$100(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/wifitrackerlib/R$string;->osu_connect_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$002(Lcom/android/wifitrackerlib/OsuWifiEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 325
    invoke-interface {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    .line 327
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method public onProvisioningStatus(I)V
    .locals 4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 349
    :pswitch_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$100(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/wifitrackerlib/R$string;->osu_completing_sign_up:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$100(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/wifitrackerlib/R$string;->osu_opening_provider:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 343
    invoke-static {v3}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$200(Lcom/android/wifitrackerlib/OsuWifiEntry;)Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 341
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-static {v1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$000(Lcom/android/wifitrackerlib/OsuWifiEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 353
    iget-object v1, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-static {v1, p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->access$002(Lcom/android/wifitrackerlib/OsuWifiEntry;Ljava/lang/String;)Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 355
    iget-object p0, p0, Lcom/android/wifitrackerlib/OsuWifiEntry$OsuWifiEntryProvisioningCallback;->this$0:Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
