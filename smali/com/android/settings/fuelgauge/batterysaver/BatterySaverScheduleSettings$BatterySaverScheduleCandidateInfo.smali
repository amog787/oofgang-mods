.class Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "BatterySaverScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatterySaverScheduleCandidateInfo"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mSummary:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 0

    .line 185
    invoke-direct {p0, p4}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 186
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    .line 187
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->mKey:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$BatterySaverScheduleCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
