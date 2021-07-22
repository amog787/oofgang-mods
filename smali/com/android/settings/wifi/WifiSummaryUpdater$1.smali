.class Lcom/android/settings/wifi/WifiSummaryUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSummaryUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/wifi/WifiStatusTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSummaryUpdater;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater$1;->this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater$1;->this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSummaryUpdater;->access$000(Lcom/android/settings/wifi/WifiSummaryUpdater;)Lcom/android/settingslib/wifi/WifiStatusTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    .line 69
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSummaryUpdater$1;->this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSummaryUpdater;->access$100(Lcom/android/settings/wifi/WifiSummaryUpdater;)V

    return-void
.end method
