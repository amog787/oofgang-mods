.class public Lcom/android/settings/development/WebViewAppPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "WebViewAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 48
    new-instance p1, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-direct {p1}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    return-void
.end method

.method private getDefaultAppLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/development/WebViewAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-virtual {v0}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_0
    invoke-direct {v1, v2, p0, v3, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)V

    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "select_webview_provider"

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/development/WebViewAppPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "WebViewAppPrefCtrl"

    const-string v0, "No default app"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget p1, Lcom/android/settings/R$string;->app_list_preference_none:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
