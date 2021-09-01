.class public abstract Lcom/android/settings/utils/ManagedServiceSettings;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/ManagedServiceSettings$Config;,
        Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field protected mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/settingslib/applications/ServiceListing;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-object p0
.end method

.method public static synthetic lambda$6gJSYmD-m4iGVFUdlUroaoAptMw(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->updateList(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$updateList$0(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 140
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/settings/utils/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/settings/utils/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private updateList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 105
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    .line 107
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 109
    new-instance v2, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v3, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v3}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-interface {p1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 111
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 114
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 115
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 114
    invoke-virtual {v6, v7, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 115
    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "ManagedServiceSettings"

    const-string v8, "can\'t find package name"

    .line 118
    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :goto_1
    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 122
    new-instance v7, Lcom/android/settings/widget/AppSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 124
    iget-object v5, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 125
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 124
    invoke-virtual {v5, v2, v8, v9}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 130
    :cond_0
    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    :goto_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, v3}, Lcom/android/settings/utils/ManagedServiceSettings;->isServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v5

    invoke-virtual {v7, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/16 v5, -0x2710

    if-eq v0, v5, :cond_1

    .line 134
    iget-object v5, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 135
    invoke-virtual {v5, v2, v0}, Landroid/app/admin/DevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    sget v2, Lcom/android/settings/R$string;->work_profile_notification_access_blocked_summary:I

    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 139
    :cond_1
    new-instance v2, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$htEfLAWO5EB6B7OCF1boY-AK3Vk;

    invoke-direct {v2, p0, v4, v3}, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$htEfLAWO5EB6B7OCF1boY-AK3Vk;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method


# virtual methods
.method protected enable(Landroid/content/ComponentName;)V
    .locals 1

    .line 182
    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/applications/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method protected abstract getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
.end method

.method protected isServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$updateList$0$ManagedServiceSettings(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/utils/ManagedServiceSettings;->lambda$updateList$0(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 71
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 72
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 73
    new-instance p1, Lcom/android/settingslib/applications/ServiceListing$Builder;

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 76
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setTag(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    .line 79
    invoke-virtual {p1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->build()Lcom/android/settingslib/applications/ServiceListing;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 80
    new-instance v0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$6gJSYmD-m4iGVFUdlUroaoAptMw;

    invoke-direct {v0, p0}, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$6gJSYmD-m4iGVFUdlUroaoAptMw;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing;->addCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V

    .line 81
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 100
    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    .line 94
    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget p1, p1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    return-void
.end method

.method protected setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 167
    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p0, p1, v1}, Lcom/android/settingslib/applications/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    return v0

    .line 170
    :cond_0
    iget-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p3, p1}, Lcom/android/settingslib/applications/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    .line 174
    :cond_1
    new-instance p3, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {p3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>()V

    .line 175
    invoke-virtual {p3, p1, p2, p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroidx/fragment/app/Fragment;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "dialog"

    invoke-virtual {p3, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1
.end method
