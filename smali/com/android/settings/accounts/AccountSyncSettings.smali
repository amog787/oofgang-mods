.class public Lcom/android/settings/accounts/AccountSyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field

.field private mUidRequestCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 70
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUidRequestCodeMap:Ljava/util/HashMap;

    return-void
.end method

.method private accountExists(Landroid/accounts/Account;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 497
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object p0

    .line 499
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 501
    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/accounts/SyncStateSwitchPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p3, 0x0

    .line 189
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 190
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 191
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 190
    invoke-virtual {p1, p2, p3, p0}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 195
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Provider needs a label for authority \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountPreferenceBase"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_2
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method private addUidAndGenerateRequestCode(I)I
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUidRequestCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object p0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUidRequestCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUidRequestCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 594
    iget-object p0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUidRequestCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 1

    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 353
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private static formatSyncDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 583
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/16 p1, 0x15

    invoke-static {p0, v0, v1, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRequestCodeByUid(I)I
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUidRequestCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 602
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUidRequestCodeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SyncInfo;

    .line 394
    iget-object v0, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v0, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private requestAccountAccessIfNeeded(Ljava/lang/String;)Z
    .locals 14

    const-string v0, "AccountPreferenceBase"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 318
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 319
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 318
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/accounts/AccountManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManager;

    .line 326
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, p1, v5}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 327
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, p1, v5}, Landroid/accounts/AccountManager;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 331
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->addUidAndGenerateRequestCode(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    .line 332
    invoke-virtual/range {v6 .. v13}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Error requesting account access"

    .line 336
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1

    :catch_1
    move-exception p0

    const-string p1, "Invalid sync "

    .line 321
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    .line 383
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "force"

    .line 384
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {p1, p2, p0, p3}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {p1, p2, p0}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 4

    .line 361
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 363
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 364
    instance-of v3, v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-nez v3, :cond_0

    goto :goto_1

    .line 367
    :cond_0
    check-cast v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 368
    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 371
    :cond_1
    invoke-virtual {v2}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncAdapterType;

    .line 376
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 4

    const-string/jumbo v0, "user"

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 154
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 156
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 159
    sget v0, Lcom/android/settings/R$string;->accessibility_work_account_title:I

    goto :goto_1

    .line 160
    :cond_1
    sget v0, Lcom/android/settings/R$string;->accessibility_personal_account_title:I

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 158
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setFeedsState()V
    .locals 20

    move-object/from16 v0, p0

    .line 413
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 414
    iget-object v2, v0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 415
    invoke-static {v2}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_f

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v8

    .line 423
    instance-of v9, v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-nez v9, :cond_0

    move-object/from16 v19, v3

    move/from16 v16, v4

    move/from16 v18, v6

    const/4 v11, 0x0

    goto/16 :goto_c

    .line 426
    :cond_0
    check-cast v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 428
    invoke-virtual {v8}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v9

    .line 429
    invoke-virtual {v8}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v10

    .line 431
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v11

    .line 432
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v12

    if-nez v11, :cond_1

    const/4 v13, 0x0

    goto :goto_1

    .line 434
    :cond_1
    iget-boolean v13, v11, Landroid/content/SyncStatusInfo;->pending:Z

    :goto_1
    if-nez v11, :cond_2

    const/4 v14, 0x0

    goto :goto_2

    .line 435
    :cond_2
    iget-boolean v14, v11, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 437
    :goto_2
    invoke-direct {v0, v3, v10, v9}, Lcom/android/settings/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    const-wide/16 v16, 0x0

    move/from16 v18, v6

    if-eqz v11, :cond_3

    .line 438
    iget-wide v5, v11, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v5, v5, v16

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 440
    invoke-virtual {v11, v5}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v6

    const/4 v5, 0x1

    if-eq v6, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-nez v12, :cond_4

    const/4 v5, 0x0

    :cond_4
    if-eqz v5, :cond_5

    if-nez v15, :cond_5

    if-nez v13, :cond_5

    const/4 v7, 0x1

    :cond_5
    const/4 v6, 0x3

    const-string v0, "AccountPreferenceBase"

    .line 446
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "Update sync status: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " active = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " pend ="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move-object/from16 v19, v3

    :goto_4
    move v0, v4

    if-nez v11, :cond_7

    move-wide/from16 v3, v16

    goto :goto_5

    .line 451
    :cond_7
    iget-wide v3, v11, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    :goto_5
    if-nez v12, :cond_8

    .line 453
    sget v3, Lcom/android/settings/R$string;->sync_disabled:I

    invoke-virtual {v8, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_6
    move/from16 v16, v0

    const/4 v11, 0x0

    goto :goto_7

    :cond_8
    if-eqz v15, :cond_9

    .line 455
    sget v3, Lcom/android/settings/R$string;->sync_in_progress:I

    invoke-virtual {v8, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_6

    :cond_9
    cmp-long v6, v3, v16

    if-eqz v6, :cond_a

    .line 457
    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->formatSyncDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/settings/R$string;->last_synced:I

    move/from16 v16, v0

    const/4 v11, 0x1

    new-array v0, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v0, v11

    invoke-virtual {v4, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_a
    move/from16 v16, v0

    const/4 v11, 0x0

    const-string v0, ""

    .line 461
    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 463
    :goto_7
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    if-eqz v15, :cond_b

    if-ltz v0, :cond_b

    if-nez v14, :cond_b

    const/4 v3, 0x1

    goto :goto_8

    :cond_b
    move v3, v11

    .line 465
    :goto_8
    invoke-virtual {v8, v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setActive(Z)V

    if-eqz v13, :cond_c

    if-ltz v0, :cond_c

    if-nez v14, :cond_c

    const/4 v0, 0x1

    goto :goto_9

    :cond_c
    move v0, v11

    .line 467
    :goto_9
    invoke-virtual {v8, v0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setPending(Z)V

    .line 470
    invoke-virtual {v8, v5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setFailed(Z)V

    .line 471
    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 473
    invoke-virtual {v8, v0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setOneTimeSyncMode(Z)V

    if-nez v0, :cond_e

    if-eqz v12, :cond_d

    goto :goto_a

    :cond_d
    move v5, v11

    goto :goto_b

    :cond_e
    :goto_a
    move v5, v3

    .line 474
    :goto_b
    invoke-virtual {v8, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_c
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v16

    move-object/from16 v3, v19

    goto/16 :goto_0

    :cond_f
    if-eqz v7, :cond_10

    .line 477
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/widget/FooterPreference$Builder;

    .line 478
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/FooterPreference$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->sync_is_failing:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference$Builder;->setTitle(I)Lcom/android/settingslib/widget/FooterPreference$Builder;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreference$Builder;->build()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    .line 477
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_10
    return-void
.end method

.method private startSyncForEnabledProviders()V
    .locals 1

    const/4 v0, 0x1

    .line 344
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private updateAccountSwitches()V
    .locals 10

    .line 509
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 511
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 512
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 511
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 513
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    const-string v6, "AccountPreferenceBase"

    if-ge v4, v2, :cond_3

    .line 515
    aget-object v7, v0, v4

    .line 517
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 519
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAccountSwitches: added authority "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to accountType "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 527
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 531
    :cond_3
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looking for sync adapters that match account "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    const-string v0, "pref_app_header"

    .line 536
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 537
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_7

    .line 538
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncAdapterType;

    .line 540
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 541
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 540
    invoke-static {v4, v7, v8}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v4

    .line 542
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 543
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  found authority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-lez v4, :cond_6

    .line 548
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 549
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 548
    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 550
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v8, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 551
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 550
    invoke-direct {p0, v7, v8, v9, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 553
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No uid for package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 557
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method


# virtual methods
.method enabledSyncNowMenu()Z
    .locals 5

    .line 568
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 569
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 570
    instance-of v4, v3, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-nez v4, :cond_0

    goto :goto_1

    .line 573
    :cond_0
    check-cast v3, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 574
    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v1
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/16 p0, 0x66

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x24b

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 562
    sget p0, Lcom/android/settings/R$string;->help_url_accounts:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0

    .line 484
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 485
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccountPreferenceBase"

    if-nez v0, :cond_0

    const-string p1, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    .line 123
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    const-string v2, "account"

    .line 127
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 128
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Account provided does not exist: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 133
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got account: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 138
    invoke-static {v0, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountPreferenceBase;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountPreferenceBase;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 145
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    if-eqz p1, :cond_3

    const-string v0, "uid_request_code"

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUidRequestCodeMap:Ljava/util/HashMap;

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 245
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 247
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 248
    instance-of v1, v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-eqz v1, :cond_0

    .line 249
    check-cast v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 250
    invoke-virtual {v0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getRequestCodeByUid(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    return-void

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget p1, Lcom/android/settings/R$xml;->account_sync_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 105
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setAccessibilityTitle()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 77
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->cant_sync_dialog_title:I

    .line 78
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->cant_sync_dialog_message:I

    .line 79
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x104000a

    .line 80
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 206
    sget v0, Lcom/android/settings/R$string;->sync_menu_sync_now:I

    .line 207
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 206
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 208
    sget v2, Lcom/android/settings/R$string;->sync_menu_sync_cancel:I

    .line 209
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 208
    invoke-interface {p1, v1, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x4

    .line 211
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 213
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 216
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 239
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    return v1

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    return v1
.end method

.method public onPause()V
    .locals 0

    .line 174
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 175
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    instance-of v0, p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-eqz v0, :cond_7

    .line 265
    check-cast p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 266
    invoke-virtual {p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 270
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 272
    invoke-virtual {p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    .line 276
    invoke-virtual {p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->isOneTimeSyncMode()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 280
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->requestAccountAccessIfNeeded(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v6

    .line 283
    :cond_2
    invoke-direct {p0, v1, v0, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 285
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eq p1, v4, :cond_6

    if-eqz p1, :cond_4

    .line 292
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->requestAccountAccessIfNeeded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v6

    .line 296
    :cond_4
    invoke-static {v1, v0, p1, v2}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 300
    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p1, :cond_6

    .line 301
    :cond_5
    invoke-direct {p0, v1, v0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_6
    :goto_0
    return v6

    .line 307
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 221
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 224
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 223
    invoke-static {v0}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 225
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->enabledSyncNowMenu()Z

    move-result p0

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 p0, 0x2

    .line 226
    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 169
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUidRequestCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUidRequestCodeMap:Ljava/util/HashMap;

    const-string v0, "uid_request_code"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .line 403
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setFeedsState()V

    .line 405
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 407
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method
