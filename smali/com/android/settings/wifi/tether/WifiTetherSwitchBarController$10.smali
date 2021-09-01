.class Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$10;
.super Ljava/lang/Object;
.source "WifiTetherSwitchBarController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mobileHotspotDialog()V
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

    .line 675
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$10;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 678
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :try_start_0
    const-string p1, "https://mobile.vzw.com/hybridClient/mvm/hotspot"

    .line 680
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 681
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$10;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {p2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$1300(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "com.vzw.hss.myverizon"

    .line 682
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$10;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$1300(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "android.intent.action.VIEW"

    .line 686
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 687
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 688
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 689
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$10;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$1300(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 693
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
