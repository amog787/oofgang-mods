.class Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$1;
.super Landroid/database/ContentObserver;
.source "OPChargingStationSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;Landroid/os/Handler;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$1;->this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$1;->this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;

    invoke-static {p1}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->access$100(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController$1;->this$0:Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;

    invoke-static {p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;->access$000(Lcom/oneplus/settings/chargingstations/OPChargingStationSettingsController;)Landroid/content/Context;

    move-result-object p0

    const-string p2, "op_charging_stations_mute_notification"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    move v0, p2

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
