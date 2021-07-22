.class Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherSwitchBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$5;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 358
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 359
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0xe

    const-string/jumbo v0, "wifi_state"

    .line 360
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 362
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$5;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$400(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 365
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "WifiTetherSwitchBarController"

    if-eqz v1, :cond_1

    .line 366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$5;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {p2, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$600(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Landroid/content/Context;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$502(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Z)Z

    .line 368
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$5;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {p2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    .line 371
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 372
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$5;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {p1}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->isSimStatusChange(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$700(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Z)V

    goto :goto_0

    :cond_1
    const-string p1, "android.intent.action.setupDataError_tether"

    .line 374
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "onReceive tether error braodcast"

    .line 375
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "data_call_error"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "data_call_code"

    .line 377
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x43

    if-ne p1, p2, :cond_2

    .line 378
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$5;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$800(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V

    :cond_2
    :goto_0
    return-void
.end method
