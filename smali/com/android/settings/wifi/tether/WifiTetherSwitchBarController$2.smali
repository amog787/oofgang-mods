.class Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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

    .line 169
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$300(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->access$202(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    :cond_0
    return-void
.end method
