.class public Lcom/android/settings/development/bluetooth/BluetoothChannelModeDialogPreferenceController;
.super Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;
.source "BluetoothChannelModeDialogPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    return-void
.end method


# virtual methods
.method convertCfgToBtnIndex(I)I
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getDefaultIndex()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtChannelModeCtr"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    return p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 54
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference;->setCallback(Lcom/android/settings/development/bluetooth/BaseBluetoothDialogPreference$Callback;)V

    return-void
.end method

.method protected getCurrentIndexByConfig(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "BtChannelModeCtr"

    const-string v1, "Unable to get current config index. Config is null."

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/bluetooth/BluetoothChannelModeDialogPreferenceController;->convertCfgToBtnIndex(I)I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_channel_mode_settings"

    return-object p0
.end method

.method public getSelectableIndex()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getDefaultIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getCurrentCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getSelectableByCodecType(I)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v1

    const/4 v2, 0x0

    .line 96
    :goto_0
    sget-object v3, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->CHANNEL_MODES:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 97
    aget v4, v3, v2

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 98
    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/settings/development/bluetooth/BluetoothChannelModeDialogPreferenceController;->convertCfgToBtnIndex(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected writeConfigurationValues(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getCurrentCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getSelectableByCodecType(I)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->getHighestChannelMode(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 77
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setChannelMode(I)V

    return-void
.end method
