.class public Lcom/android/settings/development/MemoryUsagePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "MemoryUsagePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mProcStatsData:Lcom/android/settings/applications/ProcStatsData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$updateState$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->memory_summary:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$updateState$1()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    double-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    double-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v2, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;-><init>(Lcom/android/settings/development/MemoryUsagePreferenceController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;->getProcStatsData()Lcom/android/settings/applications/ProcStatsData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;->setDuration()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "memory"

    return-object p0
.end method

.method getProcStatsData()Lcom/android/settings/applications/ProcStatsData;
    .locals 2

    .line 81
    new-instance v0, Lcom/android/settings/applications/ProcStatsData;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public synthetic lambda$updateState$0$MemoryUsagePreferenceController(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/MemoryUsagePreferenceController;->lambda$updateState$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$updateState$1$MemoryUsagePreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;->lambda$updateState$1()V

    return-void
.end method

.method setDuration()V
    .locals 2

    .line 76
    iget-object p0, p0, Lcom/android/settings/development/MemoryUsagePreferenceController;->mProcStatsData:Lcom/android/settings/applications/ProcStatsData;

    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 61
    new-instance p1, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$2UovDioLDVLRpJrL4IsFsRdoZts;

    invoke-direct {p1, p0}, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$2UovDioLDVLRpJrL4IsFsRdoZts;-><init>(Lcom/android/settings/development/MemoryUsagePreferenceController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
