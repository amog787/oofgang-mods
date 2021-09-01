.class public Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ShortcutManagerThrottlingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mShortcutService:Landroid/content/pm/IShortcutService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->getShortCutService()Landroid/content/pm/IShortcutService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mShortcutService:Landroid/content/pm/IShortcutService;

    return-void
.end method

.method private getShortCutService()Landroid/content/pm/IShortcutService;
    .locals 0

    :try_start_0
    const-string p0, "shortcut"

    .line 78
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 77
    invoke-static {p0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private resetShortcutManagerThrottling()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mShortcutService:Landroid/content/pm/IShortcutService;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->reset_shortcut_manager_throttling_complete:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ShortcutMgrPrefCtrl"

    const-string v1, "Failed to reset rate limiting"

    .line 71
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "reset_shortcut_manager_throttling"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reset_shortcut_manager_throttling"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->resetShortcutManagerThrottling()V

    const/4 p0, 0x1

    return p0
.end method
