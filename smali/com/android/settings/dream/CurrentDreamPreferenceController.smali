.class public Lcom/android/settings/dream/CurrentDreamPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CurrentDreamPreferenceController.java"


# instance fields
.field private final mBackend:Lcom/android/settingslib/dream/DreamBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-void
.end method

.method private getActiveDreamInfo()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$JJd0D4Ql1FstWgOpYrMCLEB2pnU;->INSTANCE:Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$JJd0D4Ql1FstWgOpYrMCLEB2pnU;

    .line 83
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 84
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getActiveDreamInfo$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    return p0
.end method

.method private synthetic lambda$setGearClickListenerForPreference$0(Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->launchScreenSaverSettings()V

    return-void
.end method

.method private launchScreenSaverSettings()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->getActiveDreamInfo()Ljava/util/Optional;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-virtual {v1, p0, v0}, Lcom/android/settingslib/dream/DreamBackend;->launchSettings(Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    return-void
.end method

.method private setActiveDreamIcon(Landroidx/preference/Preference;)V
    .locals 1

    .line 88
    instance-of v0, p1, Lcom/android/settings/widget/GearPreference;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    check-cast p1, Lcom/android/settings/widget/GearPreference;

    const/4 v0, 0x2

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/settingslib/TwoTargetPreference;->setIconSize(I)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/Utils;->setSafeIcon(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setGearClickListenerForPreference(Landroidx/preference/Preference;)V
    .locals 2

    .line 61
    instance-of v0, p1, Lcom/android/settings/widget/GearPreference;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    check-cast p1, Lcom/android/settings/widget/GearPreference;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->getActiveDreamInfo()Ljava/util/Optional;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$faOOwvjkeM0i38i1bxACLza6vQ4;

    invoke-direct {v0, p0}, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$faOOwvjkeM0i38i1bxACLza6vQ4;-><init>(Lcom/android/settings/dream/CurrentDreamPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    return-void

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 68
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

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

.method public synthetic lambda$setGearClickListenerForPreference$0$CurrentDreamPreferenceController(Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->lambda$setGearClickListenerForPreference$0(Lcom/android/settings/widget/GearPreference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->setGearClickListenerForPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
