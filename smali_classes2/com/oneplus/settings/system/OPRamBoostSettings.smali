.class public Lcom/oneplus/settings/system/OPRamBoostSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPRamBoostSettings.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSwitchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/system/OPRamBoostSettings;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getRamBoostState(Landroid/content/Context;)Z
    .locals 3

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_smartboost_enable"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private refreshUI()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->getRamBoostState(Landroid/content/Context;)Z

    move-result v0

    .line 58
    iget-object p0, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public static sendDefaultAppTracker()V
    .locals 2

    .line 79
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->getRamBoostState(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "op_ramboost_instructions"

    .line 80
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendRamboostAppTracker()V
    .locals 3

    .line 85
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->getRamBoostState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "ramboost"

    const-string v2, "status"

    .line 86
    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setRamBoostState(Landroid/content/Context;Z)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "op_smartboost_enable"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 38
    sget v0, Lcom/android/settings/R$xml;->op_ramboost_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "op_ramboost_switch"

    .line 40
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const-string v1, "op_ramboost_instructions"

    .line 41
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/system/RamBoostLottieAnimPreference;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/system/OPRamBoostSettings;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    new-instance v1, Lcom/oneplus/settings/system/OPRamBoostSettings$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/system/OPRamBoostSettings$1;-><init>(Lcom/oneplus/settings/system/OPRamBoostSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    invoke-direct {p0}, Lcom/oneplus/settings/system/OPRamBoostSettings;->refreshUI()V

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
