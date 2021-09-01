.class public Lcom/android/settings/network/AllInOneTetherPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AllInOneTetherPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AllInOneTetherPreferenceController"


# instance fields
.field private final mAdminDisallowedTetherConfig:Z

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field final mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

.field private mTetheringState:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "test"

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/android/settings/network/AllInOneTetherPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/network/AllInOneTetherPreferenceController$1;-><init>(Lcom/android/settings/network/AllInOneTetherPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mAdminDisallowedTetherConfig:Z

    .line 85
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 86
    iput-object v0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    new-instance p2, Lcom/android/settings/network/AllInOneTetherPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/network/AllInOneTetherPreferenceController$1;-><init>(Lcom/android/settings/network/AllInOneTetherPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 91
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string v0, "no_config_tethering"

    .line 92
    invoke-static {p1, v0, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mAdminDisallowedTetherConfig:Z

    .line 94
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/AllInOneTetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

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

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/TetherUtil;->isTetherAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "settings_tether_all_in_one"

    .line 106
    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

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
    .locals 2

    .line 115
    iget v0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mTetheringState:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const-string v0, "AllInOneTetherPreferenceController"

    const-string v1, "Unknown tethering state"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_all:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 149
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_usb_and_bluetooth_and_ethernet:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_hotspot_and_bluetooth_and_ethernet:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :pswitch_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_bluetooth_and_ethernet:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :pswitch_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_hotspot_and_usb_and_ethernet:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :pswitch_5
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_usb_and_ethernet:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :pswitch_6
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_hotspot_and_ethernet:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :pswitch_7
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_ethernet_tethering_only:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :pswitch_8
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_hotspot_and_usb_and_bluetooth:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :pswitch_9
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_usb_and_bluetooth:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :pswitch_a
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_hotspot_and_bluetooth:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :pswitch_b
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_bluetooth_tethering_only:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :pswitch_c
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_hotspot_and_usb:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :pswitch_d
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_usb_tethering_only:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :pswitch_e
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_hotspot_only:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :pswitch_f
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_settings_summary_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
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

.method initEnabler(Landroidx/lifecycle/Lifecycle;)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lcom/android/settings/network/TetherEnabler;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v3, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v2, v3}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iget-object v3, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/network/TetherEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    if-eqz p1, :cond_1

    .line 196
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_0
    const-string p0, "AllInOneTetherPreferenceController"

    const-string p1, "TetherEnabler is not initialized"

    .line 199
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
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

.method public onCreate()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_0

    const/4 v1, 0x5

    .line 187
    invoke-virtual {p0, v1, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p0}, Lcom/android/settings/network/TetherEnabler;->removeListener(Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p0}, Lcom/android/settings/network/TetherEnabler;->addListener(Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;)V

    :cond_0
    return-void
.end method

.method public onTetherStateUpdated(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mTetheringState:I

    .line 206
    iget-object p1, p0, Lcom/android/settings/network/AllInOneTetherPreferenceController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
