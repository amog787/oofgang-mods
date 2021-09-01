.class public Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPBluetoothSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# static fields
.field private static final KEY_BLUETOOTH_SETTINGS:Ljava/lang/String; = "bluetooth_settings"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLastClickTime:J

.field private mStatusReceive:Landroid/content/BroadcastReceiver;

.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    const-string v0, "bluetooth_settings"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mLastClickTime:J

    .line 73
    new-instance p1, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController$1;-><init>(Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    .line 35
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private setBluetoothEnabled(Z)Z
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private setChecked(Z)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchController;->setChecked(Z)V

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

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "bluetooth_settings"

    .line 44
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

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

    const-string p0, "bluetooth_settings"

    return-object p0
.end method

.method handleStateChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 130
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 132
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->setChecked(Z)V

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    .line 122
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 118
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->setChecked(Z)V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    .line 113
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 127
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->setChecked(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public onPause()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->stopListening()V

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_1

    .line 63
    new-instance v1, Lcom/android/settings/widget/MasterSwitchController;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    .line 64
    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->handleStateChanged(I)V

    .line 68
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 6

    .line 147
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 157
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mLastClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-gez v0, :cond_5

    .line 159
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 160
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/MasterSwitchController;->setEnabled(Z)V

    .line 161
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_4
    return v1

    .line 166
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->mLastClickTime:J

    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothSwitchPreferenceController;->setBluetoothEnabled(Z)Z

    return v2
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
