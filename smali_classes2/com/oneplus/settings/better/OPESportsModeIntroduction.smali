.class public Lcom/oneplus/settings/better/OPESportsModeIntroduction;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPESportsModeIntroduction.java"


# instance fields
.field private mNetworkPre:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initNetworkPreference()V
    .locals 2

    const-string v0, "oneplus_e_sports_mode_network_introduction"

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->mNetworkPre:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->isSupportDualLTEProject()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->isDualSimCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->mNetworkPre:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->oneplus_e_sports_mode_network_introduction_dual4g_summary:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->mNetworkPre:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->oneplus_e_sports_mode_network_introduction_summary:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private isDualSimCard()Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 67
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportDualLTEProject()Z
    .locals 2

    .line 75
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/android/settings/R$xml;->op_esport_mode_introduction:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 48
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPESportsModeIntroduction;->initNetworkPreference()V

    return-void
.end method
