.class public Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "EarlyWarningTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mPowerSaveModeOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    .line 35
    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .line 61
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 62
    sget p0, Lcom/android/settings/R$drawable;->ic_battery_status_maybe_24dp:I

    goto :goto_0

    .line 63
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->ic_battery_status_bad_24dp:I

    :goto_0
    return p0
.end method

.method public getIconTintColorId()I
    .locals 1

    .line 68
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 69
    sget p0, Lcom/android/settings/R$color;->battery_maybe_color_light:I

    goto :goto_0

    .line 70
    :cond_0
    sget p0, Lcom/android/settings/R$color;->battery_bad_color_light:I

    :goto_0
    return p0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 54
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 55
    sget p0, Lcom/android/settings/R$string;->battery_tip_early_heads_up_done_summary:I

    goto :goto_0

    .line 56
    :cond_0
    sget p0, Lcom/android/settings/R$string;->battery_tip_early_heads_up_summary:I

    .line 53
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 46
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 47
    sget p0, Lcom/android/settings/R$string;->battery_tip_early_heads_up_done_title:I

    goto :goto_0

    .line 48
    :cond_0
    sget p0, Lcom/android/settings/R$string;->battery_tip_early_heads_up_title:I

    .line 45
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    .line 90
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/16 v0, 0x547

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 2

    .line 75
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;

    .line 76
    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    goto :goto_0

    .line 79
    :cond_0
    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 81
    iget-boolean v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    .line 85
    :goto_0
    iget-boolean p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
