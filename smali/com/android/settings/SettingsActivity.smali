.class public Lcom/android/settings/SettingsActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

.field private mFragmentClass:Ljava/lang/String;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mNextButton:Landroid/widget/Button;

.field private mSMQ:Lcom/android/settings/SmqSettings;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 168
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsActivity;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method private doUpdateTilesList()V
    .locals 14

    .line 636
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 637
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    .line 640
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings/Settings$WifiSettingsActivity;

    .line 643
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "android.hardware.wifi"

    .line 644
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 642
    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 646
    :goto_0
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    .line 647
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "android.hardware.bluetooth"

    .line 648
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 646
    invoke-direct {p0, v3, v7, v0, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v6

    .line 651
    :goto_2
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/SmqSettings;

    invoke-virtual {v4}, Lcom/android/settings/SmqSettings;->isShowSmqSettings()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 652
    new-instance v4, Landroid/content/ComponentName;

    const-class v7, Lcom/android/settings/Settings$SMQQtiFeedbackActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/SmqSettings;

    invoke-virtual {v7}, Lcom/android/settings/SmqSettings;->isShowSmqSettings()Z

    move-result v7

    invoke-direct {p0, v3, v4, v7, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v5

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v6

    .line 663
    :cond_5
    :goto_4
    new-instance v4, Landroid/content/ComponentName;

    const-class v7, Lcom/android/settings/Settings$ConnectedDeviceDashboardActivity;

    .line 665
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v7

    xor-int/2addr v7, v6

    .line 663
    invoke-direct {p0, v3, v4, v7, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v0, v5

    goto :goto_6

    :cond_7
    :goto_5
    move v0, v6

    .line 669
    :goto_6
    new-instance v4, Landroid/content/ComponentName;

    const-class v7, Lcom/android/settings/Settings$SimSettingsActivity;

    .line 670
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-static {p0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v7

    .line 669
    invoke-direct {p0, v3, v4, v7, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v5

    goto :goto_8

    :cond_9
    :goto_7
    move v0, v6

    .line 674
    :goto_8
    new-instance v4, Landroid/content/ComponentName;

    const-class v7, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    .line 675
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 674
    invoke-direct {p0, v3, v4, v7, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz v0, :cond_a

    goto :goto_9

    :cond_a
    move v0, v5

    goto :goto_a

    :cond_b
    :goto_9
    move v0, v6

    .line 683
    :goto_a
    new-instance v4, Landroid/content/ComponentName;

    const-class v7, Lcom/android/settings/Settings$UserSettingsActivity;

    .line 684
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 686
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_c

    move v7, v6

    goto :goto_b

    :cond_c
    move v7, v5

    .line 683
    :goto_b
    invoke-direct {p0, v3, v4, v7, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz v0, :cond_d

    goto :goto_c

    :cond_d
    move v0, v5

    goto :goto_d

    :cond_e
    :goto_c
    move v0, v6

    .line 689
    :goto_d
    invoke-static {p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 690
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-nez v4, :cond_f

    move v4, v6

    goto :goto_e

    :cond_f
    move v4, v5

    .line 691
    :goto_e
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    .line 692
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-direct {p0, v3, v7, v4, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_11

    if-eqz v0, :cond_10

    goto :goto_f

    :cond_10
    move v0, v5

    goto :goto_10

    :cond_11
    :goto_f
    move v0, v6

    .line 696
    :goto_10
    new-instance v4, Landroid/content/ComponentName;

    const-class v7, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    .line 697
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-static {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAvailable(Landroid/content/Context;)Z

    move-result v7

    .line 696
    invoke-direct {p0, v3, v4, v7, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v4

    if-nez v4, :cond_13

    if-eqz v0, :cond_12

    goto :goto_11

    :cond_12
    move v0, v5

    goto :goto_12

    :cond_13
    :goto_11
    move v0, v6

    :goto_12
    if-nez v1, :cond_19

    .line 703
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v4}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v4

    .line 704
    monitor-enter v4

    .line 705
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 706
    invoke-virtual {v8}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v9

    move v10, v5

    :goto_13
    if-ge v10, v9, :cond_14

    .line 708
    invoke-virtual {v8, v10}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v11

    .line 709
    invoke-virtual {v11}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 710
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 711
    sget-object v13, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    invoke-static {v13, v12}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 713
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    if-nez v12, :cond_17

    .line 716
    invoke-direct {p0, v3, v11, v5, v1}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v11

    if-nez v11, :cond_16

    if-eqz v0, :cond_15

    goto :goto_14

    :cond_15
    move v0, v5

    goto :goto_15

    :cond_16
    :goto_14
    move v0, v6

    :cond_17
    :goto_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 721
    :cond_18
    monitor-exit v4

    goto :goto_16

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_19
    :goto_16
    if-eqz v0, :cond_1a

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled state changed for some tiles, reloading all categories "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity"

    .line 726
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->updateCategories()V

    goto :goto_17

    :cond_1a
    const-string p0, "SettingsActivity"

    const-string v0, "No enabled state changed, skipping updateCategory call"

    .line 730
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method private getMetaData()V
    .locals 3

    .line 753
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 755
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 759
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get Metadata for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricsTag is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p0, "com.android.settings."

    .line 232
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 233
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 552
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 553
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "com.android.settings.RunningServices"

    .line 555
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "com.android.settings.applications.StorageUse"

    .line 556
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 558
    :cond_2
    const-class p0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$updateTilesList$3()V
    .locals 0

    .line 632
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method private setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z
    .locals 1

    if-nez p4, :cond_0

    .line 739
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 741
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p3, 0x0

    .line 744
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/core/SettingsBaseActivity;->setTileEnabled(Landroid/content/ComponentName;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 746
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return p0
.end method

.method private setTitleFromBackStack()V
    .locals 2

    .line 437
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 440
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v0, :cond_0

    .line 441
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    .line 449
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 450
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroidx/fragment/app/FragmentManager$BackStackEntry;)V

    return-void
.end method

.method private setTitleFromBackStackEntry(Landroidx/fragment/app/FragmentManager$BackStackEntry;)V
    .locals 1

    .line 455
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v0

    if-lez v0, :cond_0

    .line 457
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 459
    :cond_0
    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 462
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "SettingsActivity"

    const-string v1, "Starting to set activity title"

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ":settings:show_fragment_title_resid"

    const/4 v2, -0x1

    .line 401
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v3, 0x0

    .line 403
    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 404
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string v1, ":settings:show_fragment_title_res_package_name"

    .line 406
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 410
    :try_start_0
    new-instance v3, Landroid/os/UserHandle;

    .line 411
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 410
    invoke-virtual {p0, p1, v1, v3}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 413
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 414
    iput v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 417
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find package"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    :cond_0
    iget p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_1

    .line 423
    :cond_1
    iput v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    const-string v1, ":settings:show_fragment_title"

    .line 424
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 426
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    const-string p0, "Done setting title"

    .line 428
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 587
    sget v0, Lcom/android/settings/R$string;->qtifeedback_intent_action:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 588
    new-instance p1, Landroid/content/Intent;

    sget p2, Lcom/android/settings/R$string;->qtifeedback_intent_action:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.DEFAULT"

    .line 589
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 591
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-object v1

    .line 595
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching to fragment "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SettingsActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.settings.sim.SimSettings"

    .line 597
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    invoke-static {}, Lcom/android/settings/Utils;->isSimSettingsApkAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "switchToFragment, launch simSettings"

    .line 599
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 603
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 606
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-object v1

    :cond_2
    if-eqz p3, :cond_4

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 611
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid fragment for this activity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 614
    :cond_4
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/Utils;->getTargetFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 615
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 616
    sget p3, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p2, p3, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-lez p4, :cond_5

    .line 618
    invoke-virtual {p2, p4}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :cond_5
    if-eqz p5, :cond_6

    .line 620
    invoke-virtual {p2, p5}, Landroidx/fragment/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroidx/fragment/app/FragmentTransaction;

    .line 622
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 623
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    const-string p0, "Executed frag manager pendingTransactions"

    .line 624
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private updateTilesList()V
    .locals 1

    .line 632
    new-instance v0, Lcom/android/settings/-$$Lambda$SettingsActivity$8Oa7mI89HcrjAAmE1FOVHs_ZdXU;

    invoke-direct {v0, p0}, Lcom/android/settings/-$$Lambda$SettingsActivity$8Oa7mI89HcrjAAmE1FOVHs_ZdXU;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public finishPreferencePanel(ILandroid/content/Intent;)V
    .locals 1

    .line 573
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const-string v0, "remove_task_when_finishing"

    .line 575
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .line 525
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 526
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 530
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, ":settings:show_fragment"

    .line 531
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_args"

    .line 532
    invoke-virtual {v0, p0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 534
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 536
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v2, "intent"

    .line 538
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 539
    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 0

    .line 769
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance p1, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object p2

    .line 218
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object p1

    .line 220
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method public hasNextButton()Z
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 517
    :goto_0
    sget-object v1, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 518
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public synthetic lambda$onCreate$0$SettingsActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$SettingsActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$SettingsActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$updateTilesList$3$SettingsActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->lambda$updateTilesList$3()V

    return-void
.end method

.method launchSettingFragment(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 386
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    const-string v0, ":settings:show_fragment_args"

    .line 388
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    .line 389
    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 393
    :cond_0
    sget p1, Lcom/android/settings/R$string;->dashboard_title:I

    iput p1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 394
    const-class p1, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZILjava/lang/CharSequence;)Landroidx/fragment/app/Fragment;

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 372
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 373
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 375
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 376
    instance-of v1, v0, Lcom/android/settings/core/OnActivityResultListener;

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .line 366
    sget v0, Lcom/android/settings/R$style;->SetupWizardPartnerResource:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 367
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 240
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SettingsActivity"

    const-string v1, "Starting onCreate"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 244
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->setLightNavigationBar(Landroid/view/Window;I)V

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "settings:ui_options"

    .line 257
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 261
    :cond_0
    new-instance v2, Lcom/android/settings/SmqSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/SmqSettings;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/SmqSettings;

    const-string v2, ":settings:show_fragment"

    .line 264
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    instance-of v3, p0, Lcom/android/settings/SubSettings;

    if-nez v3, :cond_2

    const-string v3, ":settings:show_fragment_as_subsetting"

    .line 270
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 277
    sget v3, Lcom/android/settings/R$style;->Theme_SubSettings:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 280
    :cond_3
    sget v3, Lcom/android/settings/R$layout;->settings_main_prefs:I

    invoke-virtual {p0, v3}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    if-eqz p1, :cond_4

    .line 287
    invoke-direct {p0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    const-string v2, ":settings:categories"

    .line 290
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 292
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 293
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    goto :goto_2

    .line 297
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/SettingsActivity;->launchSettingFragment(Ljava/lang/String;Landroid/content/Intent;)V

    .line 300
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_6

    xor-int/lit8 v3, p1, 0x1

    .line 304
    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    xor-int/2addr p1, v0

    .line 305
    invoke-virtual {v2, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 306
    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 308
    :cond_6
    sget p1, Lcom/android/settings/R$id;->switch_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_7

    .line 310
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    :cond_7
    const-string p1, "extra_prefs_show_button_bar"

    .line 314
    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 316
    sget p1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 318
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 320
    sget p1, Lcom/android/settings/R$id;->back_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 321
    new-instance v0, Lcom/android/settings/-$$Lambda$SettingsActivity$xj33YuwAAWABRerpKy-5E-8fkjk;

    invoke-direct {v0, p0}, Lcom/android/settings/-$$Lambda$SettingsActivity$xj33YuwAAWABRerpKy-5E-8fkjk;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    sget v0, Lcom/android/settings/R$id;->skip_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 326
    new-instance v2, Lcom/android/settings/-$$Lambda$SettingsActivity$DprhoLIEb9VcKgAzJHK8h9J6b8M;

    invoke-direct {v2, p0}, Lcom/android/settings/-$$Lambda$SettingsActivity$DprhoLIEb9VcKgAzJHK8h9J6b8M;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    sget v2, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 331
    new-instance v3, Lcom/android/settings/-$$Lambda$SettingsActivity$1W-97zC8WEIU323IiggDWF3SpYA;

    invoke-direct {v3, p0}, Lcom/android/settings/-$$Lambda$SettingsActivity$1W-97zC8WEIU323IiggDWF3SpYA;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "extra_prefs_set_next_text"

    .line 337
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x8

    if-eqz v3, :cond_9

    .line 338
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 340
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 342
    :cond_8
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    const-string p0, "extra_prefs_set_back_text"

    .line 345
    invoke-virtual {v1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 346
    invoke-virtual {v1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 347
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 348
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 350
    :cond_a
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_4
    const-string p0, "extra_prefs_show_skip"

    .line 353
    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 354
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 502
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onPause()V

    .line 503
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 505
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 1

    .line 198
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 200
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 201
    instance-of p0, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz p0, :cond_0

    .line 202
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 201
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    const/4 p0, -0x1

    .line 204
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 205
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onResume()V
    .locals 4

    .line 484
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onResume()V

    .line 486
    new-instance v0, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 492
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.DevelopmentSettingsEnabler.SETTINGS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 497
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 468
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 478
    iget-object p0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    const-string v0, ":settings:categories"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    .line 510
    sget v0, Lcom/android/settings/R$drawable;->ic_launcher_settings:I

    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 511
    invoke-super {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method
