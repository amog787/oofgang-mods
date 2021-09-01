.class public Lcom/android/settings/security/SecuritySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecuritySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 190
    new-instance v0, Lcom/android/settings/security/SecuritySettings$1;

    sget v1, Lcom/android/settings/R$xml;->security_dashboard_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/security/SecuritySettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/security/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/security/SecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/security/SecuritySettings;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v1, Lcom/oneplus/settings/controllers/OPDashboardTilePlaceholderPreferenceCategoryController;

    const-string v2, "security_status"

    invoke-direct {v1, p0, v2, p3}, Lcom/oneplus/settings/controllers/OPDashboardTilePlaceholderPreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance p3, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance p3, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance p3, Lcom/android/settings/security/ScreenPinningPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/security/ScreenPinningPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance p3, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance p3, Lcom/oneplus/settings/others/OPEmergencyRescueSettingsPreferenceController;

    invoke-direct {p3, p0}, Lcom/oneplus/settings/others/OPEmergencyRescueSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance p3, Lcom/oneplus/settings/OPSecurityDetectionSwitchPreferenceController;

    invoke-direct {p3, p0, p1}, Lcom/oneplus/settings/OPSecurityDetectionSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance p3, Lcom/android/settings/security/SimLockPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/security/SimLockPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance p3, Lcom/android/settings/security/EncryptionStatusPreferenceController;

    const-string v1, "encryption_and_credential"

    invoke-direct {p3, p0, v1}, Lcom/android/settings/security/EncryptionStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance p3, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v1, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/oneplus/settings/controllers/OPFaceUnlockPreferenceController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/controllers/OPFaceUnlockPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/android/settings/security/ChangeScreenLockPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v2, "security_category"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, p3}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v1

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v1, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/security/LockUnificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance p2, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance p1, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string p2, "security_category_profile"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1, p3}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p0

    .line 163
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    const-class v1, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/security/SecuritySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/security/SecuritySettings;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 91
    sget p0, Lcom/android/settings/R$string;->help_url_security:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecuritySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x57

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 81
    sget p0, Lcom/android/settings/R$xml;->security_dashboard_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 104
    const-class v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->handleActivityResult(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    .line 109
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/security/LockUnificationPreferenceController;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 112
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 173
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset_collect_diagnostics"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.metrics.tmobile.SUMMARY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.tmobile.pr.mytmobile"

    const-string v1, "com.tmobile.pr.mytmobile.iqtoggle.ui.OptInSummary"

    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method startUnification()V
    .locals 1

    .line 116
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->startUnification()V

    return-void
.end method

.method updateUnificationPreference()V
    .locals 1

    .line 120
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/LockUnificationPreferenceController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/security/LockUnificationPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
