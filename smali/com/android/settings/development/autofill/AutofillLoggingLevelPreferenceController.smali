.class public final Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AutofillLoggingLevelPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# instance fields
.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private final mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 51
    sget v0, Lcom/android/settings/R$array;->autofill_logging_level_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mListValues:[Ljava/lang/String;

    .line 52
    sget v0, Lcom/android/settings/R$array;->autofill_logging_level_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mListSummaries:[Ljava/lang/String;

    .line 53
    new-instance p1, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/development/autofill/-$$Lambda$AutofillLoggingLevelPreferenceController$93rEGR-Dx7YRc7YY0ip1MGrNqfU;

    invoke-direct {v1, p0}, Lcom/android/settings/development/autofill/-$$Lambda$AutofillLoggingLevelPreferenceController$93rEGR-Dx7YRc7YY0ip1MGrNqfU;-><init>(Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;)V

    invoke-direct {p1, v0, v1}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    .line 54
    invoke-virtual {p1}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->register()V

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->updateOptions()V

    return-void
.end method

.method private updateOptions()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    const-string p0, "AutofillLoggingLevelPreferenceController"

    const-string v0, "ignoring Settings update because UI is gone"

    .line 93
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    const-string v2, "autofill_logging_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 108
    iget-object v2, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private writeLevel(Ljava/lang/Object;)V
    .locals 1

    .line 114
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 117
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "autofill_logging_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "autofill_logging_level"

    return-object p0
.end method

.method public synthetic lambda$new$0$AutofillLoggingLevelPreferenceController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->lambda$new$0()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->unregister()V

    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->writeLevel(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 73
    invoke-direct {p0, p2}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->writeLevel(Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->updateOptions()V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;->updateOptions()V

    return-void
.end method
