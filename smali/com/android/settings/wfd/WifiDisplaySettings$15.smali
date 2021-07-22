.class Lcom/android/settings/wfd/WifiDisplaySettings$15;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 733
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 734
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 735
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    goto :goto_0

    :cond_0
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 736
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 737
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$15;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-static {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    :cond_1
    :goto_0
    return-void
.end method
