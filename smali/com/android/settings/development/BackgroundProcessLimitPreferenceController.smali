.class public Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BackgroundProcessLimitPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->app_process_limit_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListValues:[Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->app_process_limit_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListSummaries:[Ljava/lang/String;

    return-void
.end method

.method private updateAppProcessLimitOptions()V
    .locals 4

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 75
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 83
    iget-object v2, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method getActivityManagerService()Landroid/app/IActivityManager;
    .locals 0

    .line 102
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "app_process_limit"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p2}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 56
    invoke-direct {p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->updateAppProcessLimitOptions()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;->updateAppProcessLimitOptions()V

    return-void
.end method
