.class public Lcom/android/settings/backup/PrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PrivacySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lcom/android/settings/backup/PrivacySettings$1;

    sget v1, Lcom/android/settings/R$xml;->privacy_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/backup/PrivacySettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/backup/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private updatePrivacySettingsConfigData(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-static {p1}, Lcom/android/settings/backup/PrivacySettingsUtils;->isAdminUser(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 66
    invoke-static {}, Lcom/android/settings/backup/PrivacySettingsConfigData;->getInstance()Lcom/android/settings/backup/PrivacySettingsConfigData;

    move-result-object p0

    .line 65
    invoke-static {p1, p0}, Lcom/android/settings/backup/PrivacySettingsUtils;->updatePrivacyBuffer(Landroid/content/Context;Lcom/android/settings/backup/PrivacySettingsConfigData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 48
    sget p0, Lcom/android/settings/R$string;->help_url_backup_reset:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PrivacySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x51

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 43
    sget p0, Lcom/android/settings/R$xml;->privacy_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/backup/PrivacySettings;->updatePrivacySettingsConfigData(Landroid/content/Context;)V

    return-void
.end method

.method protected updatePreferenceStates()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/backup/PrivacySettings;->updatePrivacySettingsConfigData(Landroid/content/Context;)V

    .line 60
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
