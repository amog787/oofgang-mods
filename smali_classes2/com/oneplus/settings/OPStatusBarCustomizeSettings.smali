.class public Lcom/oneplus/settings/OPStatusBarCustomizeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPStatusBarCustomizeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryStylePreference:Landroidx/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mShowBatteryPercentPreference:Landroidx/preference/SwitchPreference;

.field private mStatusBarIconMangerPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateBatteryStylePreferenceDescription(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    iget-object p0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroidx/preference/ListPreference;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/android/settings/R$xml;->op_statusbar_customize_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    const-string p1, "battery_style"

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroidx/preference/ListPreference;

    .line 47
    iget-object p1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "status_bar_battery_style"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 49
    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroidx/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->updateBatteryStylePreferenceDescription(I)V

    .line 51
    iget-object p1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "enable_show_statusbar"

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroidx/preference/SwitchPreference;

    const-string p1, "clock"

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    const-string p1, "status_bar_icon_manager"

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mStatusBarIconMangerPreference:Landroidx/preference/Preference;

    .line 56
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "status_bar_show_battery_percent"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 61
    iget-object p1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "show_power_percent_in_statusbar_title"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 68
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 75
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "battery_style"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 78
    iget-object p2, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "status_bar_battery_style"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->updateBatteryStylePreferenceDescription(I)V

    return v1

    :cond_0
    const-string v0, "enable_show_statusbar"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 84
    iget-object p0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "status_bar_show_battery_percent"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "status_bar_icon_manager"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    const-class v0, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getMetricsCategory()I

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->startFragment(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
