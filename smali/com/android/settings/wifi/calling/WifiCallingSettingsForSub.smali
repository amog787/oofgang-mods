.class public Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final REQUEST_CHECK_WFC_DISCLAIMER:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final REQUEST_CHECK_WFC_EMERGENCY_ADDRESS:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

.field private mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

.field private mEditableWfcMode:Z

.field private mEditableWfcRoamingMode:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

.field private mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

.field private mSubId:I

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateAddress:Landroidx/preference/Preference;

.field private final mUpdateAddressListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mUseWfcHomeModeForRoaming:Z

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUseWfcHomeModeForRoaming:Z

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    .line 106
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 158
    new-instance v0, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSettingsForSub$VMCgn5mWUXZKFNEKT_jVJ-JP6Rc;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSettingsForSub$VMCgn5mWUXZKFNEKT_jVJ-JP6Rc;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddressListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 168
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 226
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateBody()V

    return-void
.end method

.method private getCarrierActivityIntent()Landroid/content/Intent;
    .locals 3

    .line 538
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 541
    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string/jumbo v2, "wfc_emergency_address_carrier_app_string"

    .line 544
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 548
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 552
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 553
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 554
    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v1
.end method

.method private getWfcModeSummary(I)Ljava/lang/CharSequence;
    .locals 2

    .line 672
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected WFC mode value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const p1, 0x1040846

    goto :goto_1

    :cond_1
    const p1, 0x1040848

    goto :goto_1

    :cond_2
    const p1, 0x1040845

    goto :goto_1

    :cond_3
    const p1, 0x1040847

    goto :goto_1

    :cond_4
    :goto_0
    const p1, 0x1040866

    .line 690
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroidx/preference/Preference;)Z
    .locals 2

    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "EXTRA_LAUNCH_CARRIER_APP"

    .line 162
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v0
.end method

.method private updateBody()V
    .locals 7

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->isWfcProvisionedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    const-string v0, "carrier_config"

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 355
    iget v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "editable_wfc_mode_bool"

    .line 357
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    const-string v3, "editable_wfc_roaming_mode_bool"

    .line 359
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    const-string/jumbo v3, "use_wfc_home_network_mode_in_roaming_network_bool"

    .line 361
    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUseWfcHomeModeForRoaming:Z

    const-string v3, "carrier_wfc_supports_wifi_only_bool"

    .line 364
    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "carrier_wfc_supports_ims_preferred_bool"

    .line 366
    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v3, v1

    move v0, v2

    .line 371
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v4

    .line 372
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v6, Lcom/android/settings/R$string;->wifi_calling_mode_title:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v6, Lcom/android/settings/R$string;->wifi_calling_mode_dialog_title:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v6, Lcom/android/settings/R$string;->wifi_calling_roaming_mode_title:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v6, Lcom/android/settings/R$string;->wifi_calling_roaming_mode_dialog_title:I

    .line 376
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 375
    invoke-virtual {v5, v6}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiOnlySupported = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isImsPreferredSupported = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WifiCallingForSub"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_choices_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_values_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_summaries_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_choices_v2_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_values_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_summaries_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_choices:I

    .line 399
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_values:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_summaries:I

    .line 402
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 401
    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_choices_v2:I

    .line 406
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_values:I

    .line 408
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_summaries:I

    .line 410
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 414
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_choices_without_wifi_only_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_values_without_wifi_only_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_summaries_without_wifi_only_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_choices_v2_without_wifi_only_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_values_without_wifi_only_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_summaries_without_wifi_only_with_ims_preferred:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_choices_without_wifi_only:I

    .line 430
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_values_without_wifi_only:I

    .line 432
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_summaries_without_wifi_only:I

    .line 434
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_choices_v2_without_wifi_only:I

    .line 438
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_values_without_wifi_only:I

    .line 440
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-virtual {v0, v3}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    sget v3, Lcom/android/settings/R$array;->wifi_calling_mode_summaries_without_wifi_only:I

    .line 442
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntrySummaries([Ljava/lang/CharSequence;)V

    .line 447
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isEnabledByUser()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 449
    invoke-virtual {v0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isAllowUserControl()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    .line 450
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v0

    .line 452
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v2

    .line 453
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 454
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 455
    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateButtonWfcMode(ZII)V

    return-void
.end method

.method private updateButtonWfcMode(ZII)V
    .locals 2

    .line 608
    iget-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getWfcModeSummary(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 609
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    if-eqz v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 611
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-eqz v1, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 613
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 614
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move p3, v0

    :goto_2
    if-eqz p1, :cond_6

    .line 616
    iget-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    if-eqz p1, :cond_3

    .line 617
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 620
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 622
    :goto_3
    iget-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUseWfcHomeModeForRoaming:Z

    if-nez p1, :cond_4

    .line 623
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 626
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_4
    if-eqz p3, :cond_5

    .line 629
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroidx/preference/Preference;

    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 631
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroidx/preference/Preference;

    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    .line 634
    :cond_6
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 635
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 636
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroidx/preference/Preference;

    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_5
    return-void
.end method

.method private updateWfcMode(Z)V
    .locals 2

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWfcMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiCallingForSub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiSettingEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v0

    .line 566
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v1

    .line 567
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateButtonWfcMode(ZII)V

    if-eqz p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, v1, p0, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result p0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 278
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 281
    :cond_0
    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {p0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    return-object p0
.end method

.method getImsProvisioningManager()Landroid/telephony/ims/ProvisioningManager;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 270
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 273
    :cond_0
    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4ce

    return p0
.end method

.method getResourcesForSubId()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 695
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {v0, p0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method getTelephonyManagerForSub(I)Landroid/telephony/TelephonyManager;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method isWfcProvisionedOnDevice()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 338
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isWifiCallingProvisioned()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$WifiCallingSettingsForSub(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->lambda$new$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 183
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/emptyview/EmptyPageView;

    invoke-virtual {p1}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    .line 193
    sget v0, Lcom/android/settings/R$string;->wifi_calling_off_explanation:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/R$string;->wifi_calling_off_explanation_2:I

    .line 194
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->switch_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 198
    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 199
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitch:Landroid/widget/Switch;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 577
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 579
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WFC activity request = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " result = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 601
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected request: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_3

    .line 590
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const-string p3, "EXTRA_LAUNCH_CARRIER_APP"

    .line 592
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 596
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    goto :goto_0

    :cond_2
    if-ne p2, p3, :cond_3

    .line 584
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 286
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 288
    sget v0, Lcom/android/settings/R$xml;->wifi_calling_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subId"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 295
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    .line 299
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getImsProvisioningManager()Landroid/telephony/ims/ProvisioningManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    const-string/jumbo p1, "wifi_calling_mode"

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    .line 303
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "wifi_calling_roaming_mode"

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    .line 306
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "emergency_address_key"

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroidx/preference/Preference;

    .line 309
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddressListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 311
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p0, "android.telephony.ims.action.WFC_IMS_REGISTRATION_ERROR"

    .line 312
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 325
    sget v0, Lcom/android/settings/R$layout;->wifi_calling_settings_preferences:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 328
    sget v2, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 329
    invoke-static {p2, v0, v2, v1}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 330
    invoke-super {p0, p1, v2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    .line 331
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .line 204
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 205
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 487
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 489
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 491
    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 492
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    .line 494
    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getTelephonyManagerForSub(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 497
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->unregisterProvisioningChangedCallback()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    if-ne p1, v0, :cond_0

    .line 643
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange mButtonWfcMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 645
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 646
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 648
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiModeSetting(I)V

    .line 649
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getWfcModeSummary(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 650
    iget-object p2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 652
    iget-boolean p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUseWfcHomeModeForRoaming:Z

    if-eqz p2, :cond_1

    .line 653
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiRoamingModeSetting(I)V

    goto :goto_0

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    if-ne p1, v0, :cond_1

    .line 658
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 659
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 660
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 662
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsMmTelManager;->setVoWiFiRoamingModeSetting(I)V

    .line 664
    iget-object p2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 460
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 462
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateBody()V

    .line 464
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isWifiCallingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getTelephonyManagerForSub(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x1

    .line 470
    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    .line 473
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "alertShow"

    .line 477
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->showAlert(Landroid/content/Intent;)V

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->registerProvisioningChangedCallback()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 317
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    const-string v1, "subId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSwitchChanged("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 514
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    return-void

    .line 519
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 520
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 521
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    const-string v1, "EXTRA_SUB_ID"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    .line 523
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 524
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    sget p1, Lcom/android/settings/R$string;->wifi_calling_settings_title:I

    .line 525
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    const/4 p1, 0x2

    .line 527
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    .line 528
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 265
    new-instance v0, Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method registerProvisioningChangedCallback()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    if-nez v0, :cond_0

    return-void

    .line 704
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/ims/ProvisioningManager;->registerProvisioningChangedCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ProvisioningManager$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WifiCallingForSub"

    const-string v0, "onResume: Unable to register callback for provisioning changes."

    .line 707
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method showAlert(Landroid/content/Intent;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "android.telephony.ims.extra.WFC_REGISTRATION_FAILURE_TITLE"

    .line 212
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.telephony.ims.extra.WFC_REGISTRATION_FAILURE_MESSAGE"

    .line 213
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 215
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x1080027

    .line 218
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x104000a

    const/4 p1, 0x0

    .line 219
    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method unregisterProvisioningChangedCallback()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    if-nez v0, :cond_0

    return-void

    .line 716
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, p0}, Landroid/telephony/ims/ProvisioningManager;->unregisterProvisioningChangedCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V

    return-void
.end method
