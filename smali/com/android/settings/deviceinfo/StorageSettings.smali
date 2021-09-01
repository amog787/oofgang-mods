.class public Lcom/android/settings/deviceinfo/StorageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;,
        Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;,
        Lcom/android/settings/deviceinfo/StorageSettings$MountTask;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static sTotalInternalStorage:J


# instance fields
.field private mExternalCategory:Landroidx/preference/PreferenceCategory;

.field private mHasLaunchedPrivateVolumeSettings:Z

.field private mInternalCategory:Landroidx/preference/PreferenceCategory;

.field private mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 557
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    .line 131
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$1;-><init>(Lcom/android/settings/deviceinfo/StorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Landroid/os/storage/VolumeInfo;)Z
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method

.method static handlePublicVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .locals 3

    .line 347
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 352
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 353
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    .line 355
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    const/4 p0, -0x1

    .line 356
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x2a

    .line 357
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 358
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 359
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v2
.end method

.method static handleStubVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z
    .locals 1

    .line 337
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isInteresting(Landroid/os/storage/VolumeInfo;)Z
    .locals 2

    .line 146
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private declared-synchronized refresh()V
    .locals 12

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 160
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 161
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 163
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 165
    new-instance v1, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    .line 166
    invoke-static {v1}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v1

    .line 167
    iget-wide v2, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    .line 168
    iget-wide v4, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v6, v1, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v4, v6

    .line 170
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    .line 171
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 174
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v10

    if-ne v10, v9, :cond_2

    .line 176
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    .line 177
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    new-instance v10, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {v10, v0, v6, v7, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 180
    :cond_1
    sget-wide v7, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {v6, v7, v8}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v7

    .line 182
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    new-instance v10, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {v10, v0, v6, v7, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-eqz v9, :cond_3

    .line 186
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_0

    .line 187
    :cond_3
    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    new-instance v10, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {v10, v0, v6, v7, v8}, Lcom/android/settings/deviceinfo/StorageVolumePreference;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v1

    .line 194
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 195
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v10

    if-ne v10, v9, :cond_5

    iget-object v10, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 196
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v10

    if-nez v10, :cond_5

    .line 198
    new-instance v10, Landroidx/preference/Preference;

    invoke-direct {v10, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v6, 0x104030d

    .line 201
    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setSummary(I)V

    .line 202
    sget v6, Lcom/android/settings/R$drawable;->ic_sim_sd:I

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setIcon(I)V

    .line 203
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 208
    :cond_6
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v1

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/DiskInfo;

    .line 210
    iget v10, v6, Landroid/os/storage/DiskInfo;->volumeCount:I

    if-nez v10, :cond_7

    iget-wide v10, v6, Landroid/os/storage/DiskInfo;->size:J

    cmp-long v10, v10, v7

    if-lez v10, :cond_7

    .line 211
    new-instance v10, Landroidx/preference/Preference;

    invoke-direct {v10, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v6, 0x1040313

    .line 214
    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setSummary(I)V

    .line 215
    sget v6, Lcom/android/settings/R$drawable;->ic_sim_sd:I

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setIcon(I)V

    .line 216
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 220
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 221
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    sget v5, Lcom/android/settings/R$string;->storage_size_large:I

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/CharSequence;

    iget-object v10, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v10, v8, v6

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v1, v8, v9

    invoke-static {v5, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    sget v4, Lcom/android/settings/R$string;->storage_volume_used_total:I

    new-array v5, v9, [Ljava/lang/Object;

    .line 224
    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 223
    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 226
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 228
    :cond_9
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 229
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 232
    :cond_a
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ne v0, v7, :cond_b

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    .line 233
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 235
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    if-nez v0, :cond_b

    .line 236
    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mHasLaunchedPrivateVolumeSettings:Z

    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    const-string v2, "private"

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 240
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 241
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    sget v0, Lcom/android/settings/R$string;->storage_settings:I

    .line 242
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 244
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 106
    sget p0, Lcom/android/settings/R$string;->help_uri_storage:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 115
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 117
    sget-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    .line 121
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->device_info_storage:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "storage_internal"

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "storage_external"

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mExternalCategory:Landroidx/preference/PreferenceCategory;

    .line 126
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mInternalSummary:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const/4 p1, 0x1

    .line 128
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 259
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 260
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 265
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 266
    instance-of p1, p1, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    .line 268
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 275
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return v1

    .line 277
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 278
    sget v0, Lcom/android/settings/R$string;->storage_dialog_unmountable:I

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    return v1

    .line 282
    :cond_2
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 283
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 284
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "private"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 288
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v2, Lcom/android/settings/R$string;->storage_settings:I

    .line 289
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 291
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 292
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    .line 296
    :cond_3
    sget-wide v2, Lcom/android/settings/deviceinfo/StorageSettings;->sTotalInternalStorage:J

    invoke-static {p1, v2, v3}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getTotalSize(Landroid/os/storage/VolumeInfo;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->setVolumeSize(Landroid/os/Bundle;J)V

    .line 298
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 299
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    const/4 v2, -0x1

    .line 300
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 302
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 303
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    return v1

    .line 308
    :cond_4
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-nez v1, :cond_5

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->handlePublicVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0

    .line 310
    :cond_5
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings;->handleStubVolumeClick(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0

    :cond_6
    return v0

    :cond_7
    const-string p1, "disk:"

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 316
    sget p1, Lcom/android/settings/R$string;->storage_dialog_unsupported:I

    invoke-static {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    return v1

    .line 321
    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.os.storage.extra.FS_UUID"

    .line 322
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    .line 324
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v2, Lcom/android/settings/R$string;->storage_menu_forget:I

    .line 325
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 327
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 328
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1
.end method

.method public onResume()V
    .locals 2

    .line 252
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 253
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageSettings;->refresh()V

    return-void
.end method
