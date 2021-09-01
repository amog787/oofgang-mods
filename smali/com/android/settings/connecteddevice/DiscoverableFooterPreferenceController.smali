.class public Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DiscoverableFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final KEY:Ljava/lang/String; = "discoverable_footer_preference"


# instance fields
.field private mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

.field mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPreference:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p2, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 63
    new-instance p2, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-direct {p2, p1}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    .line 64
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->initReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->updateFooterPreferenceTitle(I)V

    return-void
.end method

.method private getPreferenceTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_oneplus_devicename"

    .line 111
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_device_name_summary:I

    .line 119
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 120
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 118
    invoke-static {p0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private initReceiver()V
    .locals 1

    .line 124
    new-instance v0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateFooterPreferenceTitle(I)V
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->getPreferenceTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_off_footer:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
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

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/FooterPreference;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

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

.method public onStart()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->start()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->updateFooterPreferenceTitle(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    iget-object p0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->stop()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
