.class Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;Landroid/os/Handler;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const-string p1, "reverse_wireless_charging_status"

    .line 39
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 40
    iget-object p2, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p2}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$000(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x2

    invoke-static {p2, p1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 41
    iget-object p0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p0}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$100(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_1
    const-string p1, "REVERSE_WIRELESS_DISABLE_REASON"

    .line 42
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 43
    iget-object p1, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p1}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$200(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "low_power"

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "temp_over_heat"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p0}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$100(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings$1;->this$0:Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;

    invoke-static {p0}, Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;->access$100(Lcom/oneplus/settings/battery/ReverseWirelessChargingSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_2
    return-void
.end method
