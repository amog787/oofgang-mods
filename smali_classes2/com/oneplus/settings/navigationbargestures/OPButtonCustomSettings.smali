.class public Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPButtonCustomSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBackDoubleTapAction:Landroidx/preference/ListPreference;

.field private mBackLongPressAction:Landroidx/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mHideNavkeys:Landroidx/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroidx/preference/ListPreference;

.field private mHomeLongPressAction:Landroidx/preference/ListPreference;

.field private mMenuDoubleTapAction:Landroidx/preference/ListPreference;

.field private mMenuLongPressAction:Landroidx/preference/ListPreference;

.field private mSwapNavkeys:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 378
    new-instance v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    return v0
.end method

.method public static checkGMS(Landroid/content/Context;)Z
    .locals 2

    .line 114
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

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 293
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 294
    check-cast p1, Landroidx/preference/ListPreference;

    .line 295
    check-cast p2, Ljava/lang/String;

    .line 296
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 297
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 299
    :cond_0
    instance-of p1, p1, Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_3

    .line 301
    instance-of p1, p2, Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 302
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 303
    :cond_1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 304
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    move v0, p1

    .line 306
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

    .line 285
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    .line 286
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object p1
.end method

.method private initListViewPrefs()V
    .locals 3

    .line 213
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_home_long_press_action"

    .line 216
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hardware_keys_home_long_press"

    .line 219
    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_home_double_tap_action"

    .line 222
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hardware_keys_home_double_tap"

    .line 225
    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_app_switch_long_press_action"

    .line 229
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hardware_keys_menu_long_press"

    .line 232
    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x509000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_app_switch_double_tap_action"

    .line 236
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hardware_keys_menu_double_tap"

    .line 239
    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_back_long_press_action"

    .line 244
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "hardware_keys_back_long_press"

    .line 247
    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x509000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_back_double_tap_action"

    .line 252
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "hardware_keys_back_double_tap"

    .line 255
    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroidx/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    .line 256
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-nez v0, :cond_5

    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 258
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 262
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 266
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 267
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 270
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 274
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 275
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 278
    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 279
    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    sget v0, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :cond_5
    return-void
.end method

.method private initListViewPrefsnogms()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 177
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 184
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 186
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 187
    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    sget v0, Lcom/android/settings/R$array;->hardware_keys_action_values_nogms:I

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 192
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 196
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_nogms:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 200
    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    sget v0, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_nogms:I

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_1
    return-void
.end method

.method private initPrefs()V
    .locals 2

    .line 123
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initListViewPrefs()V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initListViewPrefsnogms()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_entries_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->hardware_keys_action_values_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_entries_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntries(I)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    sget v1, Lcom/android/settings/R$array;->navigation_bar_keys_action_values_quickpay:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    .line 147
    :goto_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->methodIsMigrated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->hardware_keys_action_shelf:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static isEdgeToEdgeEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e008d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSupportHardwareKeys()Z
    .locals 2

    .line 206
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 208
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100c9

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isSwipeUpEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 77
    invoke-static {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isEdgeToEdgeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e008d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget p1, Lcom/android/settings/R$xml;->op_button_custom_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 66
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    const-string p1, "buttons_swap_navkeys"

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    .line 68
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "hide_navkeys"

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    .line 70
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "OP_FEATURE_HIDE_NAVBAR"

    .line 71
    invoke-static {p1}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 313
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 314
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 315
    :cond_0
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 316
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 318
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v4, :cond_2

    const-string p1, "oem_acc_key_define"

    .line 319
    invoke-direct {p0, v4, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "swap_button"

    .line 323
    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return v2

    .line 326
    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    if-ne p1, v4, :cond_4

    const-string p1, "op_gesture_button_enabled"

    .line 327
    invoke-direct {p0, v4, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "op_navigation_bar_type"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_3

    const/4 p0, 0x4

    const-string p1, "nav&gestures_settings"

    .line 332
    invoke-static {p1, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :cond_3
    return v2

    :cond_4
    if-eqz v0, :cond_5

    .line 337
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_1

    .line 338
    :cond_5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 339
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 341
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_8

    const-string p1, "key_home_long_press_action"

    .line 342
    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    check-cast p2, Ljava/lang/String;

    const-string p1, "11"

    .line 344
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    :cond_7
    return v2

    .line 348
    :cond_8
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_9

    const-string p1, "key_home_double_tap_action"

    .line 349
    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 353
    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_a

    const-string p1, "key_app_switch_long_press_action"

    .line 354
    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 359
    :cond_a
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_b

    const-string p1, "key_app_switch_double_tap_action"

    .line 360
    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 364
    :cond_b
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_c

    const-string p1, "key_back_long_press_action"

    .line 365
    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 369
    :cond_c
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroidx/preference/ListPreference;

    if-ne p1, v0, :cond_d

    const-string p1, "key_back_double_tap_action"

    .line 370
    invoke-direct {p0, v0, p2, p1}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_d
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 91
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 92
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initPrefs()V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_key_define"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 95
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_navigation_bar_type"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSwipeUpEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_gesture_button_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    iget-object p0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    move v2, v1

    .line 108
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    return-void
.end method
