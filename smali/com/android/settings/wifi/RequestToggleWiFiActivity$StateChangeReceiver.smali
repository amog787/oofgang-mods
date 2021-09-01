.class final Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequestToggleWiFiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/RequestToggleWiFiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateChangeReceiver"
.end annotation


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V
    .locals 1

    .line 289
    iput-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 290
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;Lcom/android/settings/wifi/RequestToggleWiFiActivity$1;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;-><init>(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    .line 303
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->access$100(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 310
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->access$200(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->access$200(Lcom/android/settings/wifi/RequestToggleWiFiActivity;)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 311
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 312
    iget-object p0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public register()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    iget-object v1, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/settings/wifi/RequestToggleWiFiActivity$StateChangeReceiver;->this$0:Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
