.class public Lcom/oneplus/settings/better/OPAppLocker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPAppLocker.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockerAddAppsPreference:Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;

.field private mAppLockerSwitch:Landroidx/preference/SwitchPreference;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOpenAppsList:Landroidx/preference/PreferenceCategory;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppList:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/oneplus/settings/better/OPAppLocker$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPAppLocker$1;-><init>(Lcom/oneplus/settings/better/OPAppLocker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPAppLocker;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOpenAppsList:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPAppLocker;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPAppLocker;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/app/AppOpsManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method private updateListData()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x3e9

    .line 84
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget p1, Lcom/android/settings/R$xml;->op_app_locker:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    const-string p1, "appops"

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 99
    new-instance p1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPAppLocker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, v0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v0, 0x3e9

    .line 101
    invoke-virtual {p1, v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    const-string p1, "app_locker_open_apps"

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOpenAppsList:Landroidx/preference/PreferenceCategory;

    const-string p1, "app_locker_add_apps"

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerAddAppsPreference:Lcom/oneplus/settings/widget/OPBorderlessButtonPreference;

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string p1, "app_locker_switch"

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 128
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 129
    check-cast p2, Ljava/lang/Boolean;

    const-string v0, "app_locker_switch"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OPAppLocker"

    const-string v1, "KEY_APP_LOCKER_SWITCH"

    .line 131
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, -0x2

    .line 132
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 141
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_locker_add_apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OPAppLocker"

    const-string v0, "KEY_APP_LOCKER_ADD_APPS"

    .line 142
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance p1, Landroid/content/Intent;

    const-string v0, "oneplus.intent.action.ONEPLUS_GAME_READ_APP_LIST_ACTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e9

    const-string v1, "op_load_app_tyep"

    .line 145
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 116
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 117
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPAppLocker;->updateListData()V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "app_locker_switch"

    const/4 v3, 0x0

    .line 119
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 122
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
