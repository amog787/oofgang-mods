.class public Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPTopLevelSystemPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;
    }
.end annotation


# static fields
.field private static final KEY_TOP_LEVEL_SYSTEM:Ljava/lang/String; = "top_level_system"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSystemUpdateObserver:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

.field private final mUm:Landroid/os/UserManager;

.field mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "top_level_system"

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mUm:Landroid/os/UserManager;

    .line 58
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mContext:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    .line 84
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    sget p1, Lcom/android/settings/R$string;->oneplus_top_level_system_summary_verizon:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

    const-string p0, "top_level_system"

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

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_use_gota:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mUm:Landroid/os/UserManager;

    .line 69
    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_0

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

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    new-instance p1, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;-><init>(Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

    .line 102
    invoke-virtual {p1}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;->startObserving()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;->stopObserving()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 93
    check-cast p1, Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    .line 94
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
