.class Lcom/android/server/am/OnePlusBackgroundFrozen$tsu;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusBackgroundFrozen;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$tsu;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x4

    const-string p1, "event mPowerSaveWhitelistReceiver onReceive"

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->sis(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto :goto_0

    :cond_1
    const-string p1, "smart_power_control_changed"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->rtg(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    :cond_2
    :goto_0
    return-void
.end method
