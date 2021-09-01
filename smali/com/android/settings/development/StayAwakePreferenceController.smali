.class public Lcom/android/settings/development/StayAwakePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "StayAwakePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;
    }
.end annotation


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x7


# instance fields
.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/StayAwakePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/development/StayAwakePreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object p0
.end method


# virtual methods
.method checkIfMaximumTimeToLockSetByAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/development/StayAwakePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "keep_screen_on"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 123
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    iget-object p0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->register(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 80
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "stay_on_while_plugged_in"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;-><init>(Lcom/android/settings/development/StayAwakePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    .line 109
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mSettingsObserver:Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->register(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/development/StayAwakePreferenceController;->checkIfMaximumTimeToLockSetByAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "stay_on_while_plugged_in"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 98
    iget-object p0, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
