.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# static fields
.field static final BATTERY_INFO_LOADER:I = 0x1

.field static final BATTERY_TIP_LOADER:I = 0x2

.field static final MENU_ADVANCED_BATTERY:I = 0x2

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

.field mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field mBatteryInfoDebugLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

.field mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

.field private mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mLastFullChargePref:Landroidx/preference/Preference;

.field mNeedUpdateBatteryTip:Z

.field mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field mScreenUsagePref:Landroidx/preference/Preference;

.field final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 454
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;

    sget v1, Lcom/android/settings/R$xml;->power_usage_summary:I

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;-><init>(I)V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 112
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 120
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 142
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoDebugLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 185
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    .line 250
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->advanced_battery_title:I

    .line 253
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 254
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private updateChargingStationPref()V
    .locals 5

    const-string v0, "op_charging_station_setting"

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/MasterSwitchPreference;

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.oneplus.chargingpilar"

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_stations_installation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_charging_stations_feature_on"

    invoke-static {p0, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_0

    move v4, v3

    .line 277
    :cond_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 314
    sget p0, Lcom/android/settings/R$string;->help_url_battery:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PowerUsageSummary"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4ef

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 302
    sget p0, Lcom/android/settings/R$xml;->power_usage_summary:I

    return p0
.end method

.method initFeatureProvider()V
    .locals 2

    .line 405
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 406
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 407
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-void
.end method

.method public synthetic lambda$onCreate$0$PowerUsageSummary(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 207
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 210
    const-class v0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    .line 211
    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setActivity(Landroid/app/Activity;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setLifecycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 215
    const-class v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    .line 216
    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    .line 217
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 218
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$aTvFIqGCrsza8hdemOuQH3mcbRg;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$aTvFIqGCrsza8hdemOuQH3mcbRg;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setBatteryTipListener(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;)V

    .line 221
    const-class p1, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;

    .line 222
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/settings/chargingstations/OPChargingStationPrefController;->setLifeCycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->initFeatureProvider()V

    const-string v0, "battery_header"

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v0, "screen_usage"

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Landroidx/preference/Preference;

    const-string v0, "last_full_charge"

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Landroidx/preference/Preference;

    .line 241
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateBatteryTipFlag(Landroid/os/Bundle;)V

    .line 248
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->btn_show_stats:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 249
    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageSummary$00ln8-VbkueS9HRjA2L4UZ9tGr0;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$PowerUsageSummary$00ln8-VbkueS9HRjA2L4UZ9tGr0;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 307
    sget v0, Lcom/android/settings/R$string;->advanced_battery_title:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 309
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->showBothEstimates()V

    const/4 p0, 0x0

    .line 432
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 328
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 321
    :cond_0
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .line 322
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->advanced_battery_title:I

    .line 324
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 325
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 287
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 261
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_estimates_last_update_time"

    .line 263
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 262
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateChargingStationPref()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 444
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 445
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected refreshUi(I)V
    .locals 3

    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    goto :goto_0

    .line 343
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    .line 347
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateLastFullChargePreference()V

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 353
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateScreenUsageTime(Lcom/android/internal/os/BatteryStatsHelper;)J

    move-result-wide v0

    long-to-double v0, v0

    const/4 v2, 0x0

    .line 352
    invoke-static {p1, v0, v1, v2}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 354
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Landroidx/preference/Preference;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->handleTimeSummary(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method restartBatteryInfoLoader()V
    .locals 4

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 417
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEstimateDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->summary1:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 0

    .line 438
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V

    .line 439
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

    return-void
.end method

.method restartBatteryTipLoader()V
    .locals 3

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method setBatteryLayoutPreference(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method

.method showBothEstimates()V
    .locals 3

    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 395
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 396
    invoke-interface {v1, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoDebugLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_1
    :goto_0
    return-void
.end method

.method updateBatteryTipFlag(Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 426
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->needUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    return-void
.end method

.method updateLastFullChargePreference()V
    .locals 6

    .line 370
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->battery_full_charge_last:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Landroidx/preference/Preference;

    .line 376
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    long-to-double v3, v3

    invoke-static {v2, v3, v4, v1}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    .line 375
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageBase;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 380
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J

    move-result-wide v2

    .line 382
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Landroidx/preference/Preference;

    sget v4, Lcom/android/settings/R$string;->battery_last_full_charge:I

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Landroidx/preference/Preference;

    .line 386
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double v2, v2

    invoke-static {p0, v2, v3, v1}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p0

    .line 385
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected updateViews(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->battery_header_icon:I

    .line 162
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryMeterView;

    .line 163
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->battery_percent:I

    .line 164
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->summary1:I

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 166
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/BatteryInfo;

    const/4 v4, 0x1

    .line 167
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 168
    iget v5, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-static {v5}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 175
    invoke-static {v6, v7}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v6

    .line 174
    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-interface {v1, v5}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getOldEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-wide v6, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 178
    invoke-static {v6, v7}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v6

    .line 177
    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-interface {v5, p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget p0, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setBatteryLevel(I)V

    .line 182
    iget-boolean p0, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    xor-int/2addr p0, v4

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setCharging(Z)V

    return-void
.end method
