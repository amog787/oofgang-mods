.class public Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "SmartBatteryTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, p1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 0

    .line 51
    sget p0, Lcom/android/settings/R$drawable;->ic_perm_device_information_red_24dp:I

    return p0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    sget p0, Lcom/android/settings/R$string;->battery_tip_smart_battery_summary:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 41
    sget p0, Lcom/android/settings/R$string;->battery_tip_smart_battery_title:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    .line 61
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/16 v0, 0x546

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0

    .line 56
    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    return-void
.end method
