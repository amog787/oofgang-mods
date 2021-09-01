.class Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$6;
.super Ljava/lang/Object;
.source "WifiTetherSwitchBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->onSwitchToggled(Z)Z
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

    .line 387
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$6;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$6;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    return-void
.end method
