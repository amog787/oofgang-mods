.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateMatchingWifiConfig()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$100(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 233
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$200(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$302(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x16fd136b

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v0, :cond_2

    const v0, -0x147b62d9

    if-eq p2, v0, :cond_1

    const v0, 0x60e99352

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_2
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_5

    goto :goto_2

    .line 220
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->updateMatchingWifiConfig()V

    .line 224
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$000(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    :goto_2
    return-void
.end method
