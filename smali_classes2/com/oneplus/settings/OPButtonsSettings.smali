.class public Lcom/oneplus/settings/OPButtonsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPButtonsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;,
        Lcom/oneplus/settings/OPButtonsSettings$Helper;,
        Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;
    }
.end annotation


# instance fields
.field private mBackDoubleTapAction:Landroidx/preference/ListPreference;

.field private mBackLongPressAction:Landroidx/preference/ListPreference;

.field private mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

.field private mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

.field private mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

.field private mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHideNavkeys:Landroidx/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroidx/preference/ListPreference;

.field private mHomeLongPressAction:Landroidx/preference/ListPreference;

.field private mMenuDoubleTapAction:Landroidx/preference/ListPreference;

.field private mMenuLongPressAction:Landroidx/preference/ListPreference;

.field private final mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

.field private mSwapNavkeys:Landroidx/preference/SwitchPreference;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 762
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;-><init>(Lcom/oneplus/settings/OPButtonsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPButtonsSettings;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPButtonsSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPButtonsSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public static checkGMS(Landroid/content/Context;)Z
    .locals 2

    .line 212
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.googlequicksearchbox"

    const/16 v1, 0x2000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private delayEnableHideNavkey()V
    .locals 4

    .line 655
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 656
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$2;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 260
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 261
    check-cast p1, Landroidx/preference/ListPreference;

    .line 262
    check-cast p2, Ljava/lang/String;

    .line 263
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 264
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 266
    :cond_0
    instance-of p1, p1, Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_3

    .line 268
    instance-of p1, p2, Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 269
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 270
    :cond_1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 271
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    move v0, p1

    .line 273
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;
    .locals 1

    .line 252
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    .line 253
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object p1
.end method

.method private initListViewPrefs()V
    .locals 3

    .line 331
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_home_long_press_action"

    .line 335
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hardware_keys_home_long_press"

    .line 338
    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_home_double_tap_action"

    .line 342
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hardware_keys_home_double_tap"

    .line 345
    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_app_switch_long_press_action"

    .line 365
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hardware_keys_menu_long_press"

    .line 368
    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    .line 386
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x509000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_app_switch_double_tap_action"

    .line 388
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hardware_keys_menu_double_tap"

    .line 391
    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_back_long_press_action"

    .line 396
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hardware_keys_back_long_press"

    .line 399
    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    .line 402
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x509000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_back_double_tap_action"

    .line 404
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "hardware_keys_back_double_tap"

    .line 407
    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    .line 408
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-nez v0, :cond_5

    .line 409
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 410
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 411
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 414
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 415
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 418
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 419
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 422
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 423
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 426
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 427
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 430
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 431
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    sget v0, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_5
    return-void
.end method

.method private initListViewPrefsnogms()V
    .locals 2

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 290
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 295
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 302
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 304
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 305
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 306
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 307
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 309
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 310
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 311
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 312
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    sget v0, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 315
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 316
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 317
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 318
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 319
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 320
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 321
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 322
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 323
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 324
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 325
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v0, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_1
    return-void
.end method

.method private initPrefs()V
    .locals 2

    .line 174
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefs()V

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefsnogms()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 198
    :goto_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->methodIsMigrated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->hardware_keys_action_shelf:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 205
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private isSupportHardwareKeys()Z
    .locals 1

    .line 278
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11100c9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private loadPreferenceScreen()V
    .locals 11

    .line 437
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_10

    .line 438
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 439
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$integer;->config_buttonBrightnessSettingDefault:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "buttons_brightness"

    .line 442
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v5, "buttons_show_on_screen_navkeys"

    .line 445
    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const-string v6, "buttons_force_home_enabled"

    .line 448
    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    .line 451
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "oem_acc_key_define"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v3

    .line 453
    :goto_3
    iget-object v9, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v9, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 456
    iget-object v7, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

    invoke-virtual {v7, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 459
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 461
    sget-object v1, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 462
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 461
    invoke-static {v0, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 462
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v4

    .line 463
    :goto_4
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 468
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "home_key"

    .line 471
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const-string v7, "menu_key"

    .line 473
    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/PreferenceCategory;

    const-string v8, "back_key"

    .line 475
    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 478
    iget-object v8, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

    if-eqz v8, :cond_5

    xor-int/lit8 v9, v5, 0x1

    .line 479
    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 481
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v8

    const-string v9, "hide_navkeys"

    const-string v10, "buttons_enable_on_screen_navkeys"

    if-eqz v8, :cond_7

    .line 482
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_6

    .line 483
    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 495
    :cond_6
    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_7

    .line 497
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 498
    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v2, "buttons_force_home"

    .line 499
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "op_navigation_bar_type"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 503
    iget-object v5, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_8

    move v6, v4

    goto :goto_5

    :cond_8
    move v6, v3

    :goto_5
    invoke-virtual {v5, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 v5, 0x3

    if-ne v2, v5, :cond_9

    move v2, v4

    goto :goto_6

    :cond_9
    move v2, v3

    .line 505
    :goto_6
    iget-object v5, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    if-eqz v5, :cond_a

    xor-int/lit8 v6, v2, 0x1

    .line 506
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_a
    if-eqz v1, :cond_b

    xor-int/lit8 v5, v2, 0x1

    .line 509
    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_b
    if-eqz v7, :cond_c

    xor-int/lit8 v1, v2, 0x1

    .line 512
    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_c
    if-eqz v0, :cond_d

    xor-int/lit8 v1, v2, 0x1

    .line 515
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 518
    :cond_d
    :goto_7
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNavigationBarOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 519
    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 520
    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_8

    :cond_e
    const-string v0, "key_navigation_bar_type"

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 534
    :goto_8
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_10

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    .line 535
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 537
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_f

    move v3, v4

    :cond_f
    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_10
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "op_gesture_guide_completed"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "op_gesture_button_enabled"

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "op_fullscreen_gesture_enabled"

    .line 239
    invoke-static {p1, p3}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 240
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->delayEnableHideNavkey()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mWindow:Landroid/view/Window;

    .line 142
    sget p1, Lcom/android/settings/R$xml;->op_buttons_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 144
    new-instance p1, Lcom/oneplus/settings/OPButtonsSettings$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPButtonsSettings$1;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    const-string p1, "buttons_enable_on_screen_navkeys"

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    .line 155
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "buttons_swap_navkeys"

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    .line 157
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "buttons_brightness"

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

    .line 159
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "buttons_force_home"

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

    .line 161
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "camera_double_tap_power_gesture"

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string p1, "hide_navkeys"

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    .line 170
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 247
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 248
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 546
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 547
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 548
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 549
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 551
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v3, :cond_2

    const-string p1, "oem_acc_key_define"

    .line 552
    invoke-direct {p0, v3, p2, p1}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 556
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v3, :cond_4

    const-string p1, "key_home_long_press_action"

    .line 557
    invoke-direct {p0, v3, p2, p1}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    check-cast p2, Ljava/lang/String;

    const-string p1, "11"

    .line 562
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    :cond_3
    return v2

    .line 567
    :cond_4
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v3, :cond_5

    const-string p1, "key_home_double_tap_action"

    .line 568
    invoke-direct {p0, v3, p2, p1}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 572
    :cond_5
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v3, :cond_6

    const-string p1, "key_app_switch_long_press_action"

    .line 573
    invoke-direct {p0, v3, p2, p1}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 587
    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v3, :cond_7

    const-string p1, "key_app_switch_double_tap_action"

    .line 588
    invoke-direct {p0, v3, p2, p1}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 602
    :cond_7
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v3, :cond_8

    const-string p1, "key_back_long_press_action"

    .line 603
    invoke-direct {p0, v3, p2, p1}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 607
    :cond_8
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v3, :cond_9

    const-string p1, "key_back_double_tap_action"

    .line 608
    invoke-direct {p0, v3, p2, p1}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 612
    :cond_9
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroidx/preference/SwitchPreference;

    if-ne p1, v3, :cond_a

    .line 613
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWButtonsLightsState(Landroid/content/Context;ZZ)V

    .line 614
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return v2

    .line 616
    :cond_a
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v3, :cond_b

    .line 617
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;Z)V

    const-string p0, "buttons_enable_on_screen_navkeys"

    .line 618
    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    return v2

    .line 620
    :cond_b
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_c

    const-string p1, "buttons_force_home_enabled"

    .line 621
    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return v2

    .line 626
    :cond_c
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_d

    .line 628
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/2addr p1, v2

    const-string p2, "camera_double_tap_power_gesture_disabled"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    .line 633
    :cond_d
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_f

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_gesture_guide_completed"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_e

    .line 636
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oneplus.intent.action.ONEPLUS_FULLSCREEN_GESTURE_GUIDE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x64

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 638
    :cond_e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "op_gesture_button_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p2, "op_fullscreen_gesture_enabled"

    .line 643
    invoke-static {p2, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 644
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->delayEnableHideNavkey()V

    :goto_1
    return v2

    :cond_f
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 667
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    .line 669
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 670
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$3;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 228
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 229
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initPrefs()V

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 231
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return-void
.end method
