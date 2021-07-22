.class public abstract Lcom/android/settings/network/TetherBasePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "TetherBasePreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TetherBasePreferenceController"


# instance fields
.field final mCm:Landroid/net/ConnectivityManager;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field mPreference:Landroidx/preference/Preference;

.field private mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

.field mTetheringState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "connectivity"

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mCm:Landroid/net/ConnectivityManager;

    .line 47
    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 48
    invoke-virtual {p2}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mDataSaverEnabled:Z

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

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/network/TetherBasePreferenceController;->shouldShow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mDataSaverEnabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/network/TetherBasePreferenceController;->shouldEnable()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x5

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

.method public abstract getTetherType()I
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mTetheringState:I

    invoke-virtual {p0}, Lcom/android/settings/network/TetherBasePreferenceController;->getTetherType()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settings/network/TetherEnabler;->isTethering(II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mDataSaverEnabled:Z

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p0}, Lcom/android/settings/network/TetherEnabler;->removeListener(Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p0}, Lcom/android/settings/network/TetherEnabler;->addListener(Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onTetherStateUpdated(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mTetheringState:I

    .line 123
    iget-object p1, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/network/TetherBasePreferenceController;->getTetherType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/TetherEnabler;->startTethering(I)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/TetherBasePreferenceController;->getTetherType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/TetherEnabler;->stopTethering(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setTetherEnabler(Lcom/android/settings/network/TetherEnabler;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/network/TetherBasePreferenceController;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    return-void
.end method

.method public abstract shouldEnable()Z
.end method

.method public abstract shouldShow()Z
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/network/TetherBasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
