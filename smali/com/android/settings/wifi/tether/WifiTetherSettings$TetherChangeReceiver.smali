.class Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 422
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating display config due to receiving broadcast action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiTetherSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xb

    if-eqz v1, :cond_0

    .line 426
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$300(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 427
    invoke-static {p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$400(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 428
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "wifi_state"

    const/4 v1, 0x0

    .line 431
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 433
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$500(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$600(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/oneplus/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 434
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$700(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    if-ne v0, v2, :cond_2

    .line 443
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    .line 444
    invoke-static {v2}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$400(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 445
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    goto :goto_0

    :cond_2
    const/16 p0, 0xe

    if-ne v0, p0, :cond_3

    const-string p0, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    .line 447
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v0, "wifi_ap_error_description"

    .line 448
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    if-eqz p2, :cond_3

    const-string/jumbo p0, "wifi_ap_error_no_5g_support"

    .line 450
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "5Ghz band not supported. band selection disabled"

    .line 451
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method
