.class public Lcom/android/settings/security/VisiblePatternProfilePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "VisiblePatternProfilePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_VISIBLE_PATTERN_PROFILE:Ljava/lang/String; = "visiblepattern_profile"

.field private static final TAG:Ljava/lang/String; = "VisPtnProfPrefCtrl"


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreference:Landroidx/preference/Preference;

.field private final mProfileChallengeUserId:I

.field private final mUm:Landroid/os/UserManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string/jumbo v0, "visiblepattern_profile"

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mUserId:I

    const-string/jumbo v0, "user"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mUm:Landroid/os/UserManager;

    .line 62
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 64
    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 65
    iget-object p1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mUm:Landroid/os/UserManager;

    iget v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getAvailabilityStatus$0()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    .line 78
    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x4

    .line 83
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 73
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/android/settings/security/-$$Lambda$VisiblePatternProfilePreferenceController$rwDeZ_aTyFGsJcFkBXrMF4RE1tM;

    invoke-direct {v1, p0}, Lcom/android/settings/security/-$$Lambda$VisiblePatternProfilePreferenceController$rwDeZ_aTyFGsJcFkBXrMF4RE1tM;-><init>(Lcom/android/settings/security/VisiblePatternProfilePreferenceController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 86
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "VisPtnProfPrefCtrl"

    const-string v0, "Error getting lock pattern state."

    .line 89
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$getAvailabilityStatus$0$VisiblePatternProfilePreferenceController()Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->lambda$getAvailabilityStatus$0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
