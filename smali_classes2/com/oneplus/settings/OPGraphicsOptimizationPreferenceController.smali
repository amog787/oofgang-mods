.class public Lcom/oneplus/settings/OPGraphicsOptimizationPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPGraphicsOptimizationPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field static final KEY_VIDEO_SOURCE:Ljava/lang/String; = "video_source"


# instance fields
.field private mVideoPreference:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "video_source"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "video_source"

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPGraphicsOptimizationPreferenceController;->mVideoPreference:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 51
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportVideoEnhancer()Z

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

.method public onDestroy()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oneplus/settings/OPGraphicsOptimizationPreferenceController;->mVideoPreference:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->release()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oneplus/settings/OPGraphicsOptimizationPreferenceController;->mVideoPreference:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->setVideoPaused()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/oneplus/settings/OPGraphicsOptimizationPreferenceController;->mVideoPreference:Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPGraphicsOptimizationPreference;->setVideoResume()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
