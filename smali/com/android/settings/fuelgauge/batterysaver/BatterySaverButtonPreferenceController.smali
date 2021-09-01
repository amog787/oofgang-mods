.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BatterySaverButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;


# instance fields
.field private final mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

.field private mContext:Landroid/content/Context;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "power"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 52
    new-instance p2, Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-direct {p2, p1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    .line 53
    invoke-virtual {p2, p0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setBatterySaverListener(Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;)V

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

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

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

.method public getSliceUri()Landroid/net/Uri;
    .locals 1

    .line 68
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 69
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "android.settings.slices"

    .line 70
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "action"

    .line 71
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "battery_saver"

    .line 72
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

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
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBatteryChanged(Z)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 118
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPowerSaveModeChanged()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->isChecked()Z

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->startVibratePattern(Landroid/content/Context;)V

    .line 103
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
