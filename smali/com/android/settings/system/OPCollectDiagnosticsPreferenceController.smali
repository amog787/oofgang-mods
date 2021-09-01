.class public Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPCollectDiagnosticsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method private isAppExist(Landroid/content/Context;)Z
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "com.tmobile.pr.mytmobile"

    .line 70
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 71
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 72
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "reset_collect_diagnostics"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$bool;->config_show_collect_diagnostics:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportC427()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->isAppExist(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method
