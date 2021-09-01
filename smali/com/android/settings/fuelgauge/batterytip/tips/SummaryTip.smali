.class public Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "SummaryTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mAverageTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    .line 38
    iput-wide p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->mAverageTimeMs:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->mAverageTimeMs:J

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 0

    .line 59
    sget p0, Lcom/android/settings/R$drawable;->ic_battery_status_good_24dp:I

    return p0
.end method

.method public getIconTintColorId()I
    .locals 0

    .line 64
    sget p0, Lcom/android/settings/R$color;->battery_good_color_light:I

    return p0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 54
    sget p0, Lcom/android/settings/R$string;->battery_tip_summary_summary:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 49
    sget p0, Lcom/android/settings/R$string;->battery_tip_summary_title:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    .line 80
    iget p0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    const/16 v0, 0x545

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0

    .line 69
    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->mAverageTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
