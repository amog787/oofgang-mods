.class Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V

    return-void
.end method
