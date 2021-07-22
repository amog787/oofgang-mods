.class Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ReverseWirelessChargingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$2;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "level"

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0xf

    if-gt p1, v1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$2;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p1}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$100(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$2;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p1}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$100(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    const-string p1, "plugged"

    .line 70
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 71
    :goto_1
    iget-object p1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$2;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p1}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$100(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 72
    iget-object p0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$2;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p0}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$100(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
