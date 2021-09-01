.class Lcom/android/settings/wifi/WifiSettings$6;
.super Lcom/android/settings/wifi/CaptivePortalNetworkCallback;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;-><init>(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    return-void
.end method


# virtual methods
.method public onCaptivePortalCapabilityChanged()V
    .locals 0

    .line 1064
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method
