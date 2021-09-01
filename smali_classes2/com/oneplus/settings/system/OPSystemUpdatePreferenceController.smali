.class public Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPSystemUpdatePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;
    }
.end annotation


# static fields
.field private static final KEY_OP_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "oneplus_system_update_settings"

.field private static final TAG:Ljava/lang/String; = "OPSysUpdatePrefContr"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

.field private final mUm:Landroid/os/UserManager;

.field mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "oneplus_system_update_settings"

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    .line 52
    iput-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    iput-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    if-eqz p1, :cond_2

    .line 85
    sget v0, Lcom/android/settings/R$layout;->op_layout_sys_update_icon1:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 86
    iget-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    .line 87
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->isNeedAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "oneplus_system_update_settings"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public isNeedAvailable()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_use_gota:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 67
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGota()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;-><init>(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    .line 108
    invoke-virtual {p1}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->startObserving()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->stopObserving()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 97
    check-cast p1, Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->updateView()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
