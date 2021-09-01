.class public Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StorageItemPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final AUDIO_KEY:Ljava/lang/String; = "pref_music_audio"

.field static final FILES_KEY:Ljava/lang/String; = "pref_files"

.field static final GAME_KEY:Ljava/lang/String; = "pref_games"

.field static final MOVIES_KEY:Ljava/lang/String; = "pref_movies"

.field static final OTHER_APPS_KEY:Ljava/lang/String; = "pref_other_apps"

.field static final PHOTO_KEY:Ljava/lang/String; = "pref_photos_videos"

.field static final SYSTEM_KEY:Ljava/lang/String; = "pref_system"


# instance fields
.field private mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mIsWorkProfile:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

.field private mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mTotalSize:J

.field private mUsedBytes:J

.field private mUserId:I

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 107
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 108
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 109
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    .line 110
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 111
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Z)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)V

    .line 121
    iput-boolean p5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    return-void
.end method

.method private static applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010429

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 234
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 235
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 236
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private getAppsIntent()Landroid/content/Intent;
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 376
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 377
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    .line 378
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 377
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volumeUuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volumeName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 382
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v2, Lcom/android/settings/R$string;->apps_storage:I

    .line 383
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 384
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 385
    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 386
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getAppsSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J
    .locals 2

    if-eqz p2, :cond_0

    .line 392
    iget-wide p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    iget-wide v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr p0, v0

    return-wide p0

    .line 394
    :cond_0
    iget-wide p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    return-wide p0
.end method

.method private getAudioIntent()Landroid/content/Intent;
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    .line 348
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 349
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    .line 350
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 349
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volumeUuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volumeName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "storageType"

    .line 353
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 355
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v2, Lcom/android/settings/R$string;->storage_music_audio:I

    .line 356
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 357
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 358
    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 359
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getAudioSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J
    .locals 2

    if-eqz p2, :cond_0

    .line 365
    iget-wide v0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    iget-object p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    add-long/2addr v0, p0

    iget-wide p0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v0, p0

    iget-object p0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    :goto_0
    add-long/2addr v0, p0

    return-wide v0

    .line 368
    :cond_0
    iget-wide v0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    iget-object p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    goto :goto_0
.end method

.method private getFilesIntent()Landroid/content/Intent;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, p0}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getFilesSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J
    .locals 4

    if-eqz p2, :cond_0

    .line 454
    iget-object p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-wide v2, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    sub-long/2addr v0, v2

    iget-wide p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    sub-long/2addr v0, p0

    iget-object p0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide p1, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    add-long/2addr v0, p1

    iget-wide p1, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    sub-long/2addr v0, p1

    iget-wide p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    sub-long/2addr v0, p0

    return-wide v0

    .line 465
    :cond_0
    iget-object p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide p1, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-wide v0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->audioBytes:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private getGamesIntent()Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    .line 399
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 400
    const-class v1, Lcom/android/settings/Settings$GamesStorageActivity;

    .line 401
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 400
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 403
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v2, Lcom/android/settings/R$string;->game_storage_settings:I

    .line 404
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 405
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 406
    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 407
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getGamesSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J
    .locals 2

    if-eqz p2, :cond_0

    .line 413
    iget-wide p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iget-wide v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr p0, v0

    return-wide p0

    .line 415
    :cond_0
    iget-wide p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    return-wide p0
.end method

.method private getMoviesIntent()Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    .line 420
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 421
    const-class v1, Lcom/android/settings/Settings$MoviesStorageActivity;

    .line 422
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 421
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 424
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v2, Lcom/android/settings/R$string;->storage_movies_tv:I

    .line 425
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 426
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 427
    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 428
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getMoviesSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J
    .locals 2

    if-eqz p2, :cond_0

    .line 434
    iget-wide p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    iget-wide v0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr p0, v0

    return-wide p0

    .line 436
    :cond_0
    iget-wide p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    return-wide p0
.end method

.method private getPhotosIntent()Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x2

    .line 312
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 313
    const-class v1, Lcom/android/settings/Settings$PhotosStorageActivity;

    .line 314
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 313
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "storageType"

    const/4 v2, 0x3

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 319
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v2, Lcom/android/settings/R$string;->storage_photos_videos:I

    .line 320
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 321
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 322
    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 323
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getPhotosSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J
    .locals 4

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 329
    iget-object p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    if-eqz p0, :cond_0

    .line 330
    iget-wide v0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    iget-wide v2, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    add-long/2addr v0, v2

    iget-wide p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    add-long/2addr v0, p0

    iget-wide p0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    add-long/2addr v0, p0

    iget-object p0, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide p1, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    add-long/2addr v0, p1

    iget-wide p0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    add-long/2addr v0, p0

    return-wide v0

    :cond_0
    if-eqz p1, :cond_1

    .line 334
    iget-object p0, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    if-eqz p0, :cond_1

    .line 336
    iget-wide p1, p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    iget-wide v0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    add-long/2addr p1, v0

    return-wide p1

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getWorkAnnotatedBundle(I)Landroid/os/Bundle;
    .locals 1

    .line 441
    new-instance v0, Landroid/os/Bundle;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(I)V

    .line 443
    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    const-string p1, ":settings:show_fragment_tab"

    .line 442
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private setFilesPreferenceVisibility()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private tintPreference(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 227
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 242
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "pref_photos_videos"

    .line 243
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_music_audio"

    .line 244
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_games"

    .line 245
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_movies"

    .line 246
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_other_apps"

    .line 247
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_system"

    .line 248
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_files"

    .line 249
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    .line 251
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setFilesPreferenceVisibility()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 136
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "pref_other_apps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v4, "pref_system"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v4, "pref_movies"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v4, "pref_music_audio"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v5

    goto :goto_0

    :sswitch_4
    const-string v4, "pref_photos_videos"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    goto :goto_0

    :sswitch_5
    const-string v4, "pref_games"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v4, "pref_files"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    :cond_2
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 166
    :pswitch_0
    new-instance p1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 168
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "SystemInfo"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v5

    .line 161
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getFilesIntent()Landroid/content/Intent;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v4, 0x349

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_1

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_3

    goto :goto_1

    .line 158
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getAppsIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 150
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getMoviesIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 147
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getGamesIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 144
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getAudioIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 141
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getPhotosIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    .line 173
    iget p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->launchIntent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return v5

    .line 179
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x61e7a6a5 -> :sswitch_6
        -0x61dd2e5b -> :sswitch_5
        -0x58bcf846 -> :sswitch_4
        0x10e4e120 -> :sswitch_3
        0x313de4df -> :sswitch_2
        0x3c06afcb -> :sswitch_1
        0x4534fddd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLoadFinished(Landroid/util/SparseArray;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;I)V"
        }
    .end annotation

    .line 256
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 257
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    .line 258
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1, p2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p2

    .line 257
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 260
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getPhotosSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getAudioSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 262
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getGamesSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getMoviesSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 264
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getAppsSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getFilesSize(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    .line 267
    iget-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    .line 271
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 272
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    .line 273
    iget-wide v3, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    add-long/2addr v3, v5

    iget-wide v5, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 279
    iget-object v2, v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v3, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    iget-wide v5, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->appBytes:J

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x40000000

    .line 283
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    sub-long/2addr v2, v0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 284
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    :cond_1
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 293
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    return-void
.end method

.method public setUsedSize(J)V
    .locals 0

    .line 289
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    return-void
.end method

.method public setUserId(Landroid/os/UserHandle;)V
    .locals 0

    .line 214
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    .line 216
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPhotoPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 217
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMoviesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 218
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 219
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 220
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    .line 222
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFilePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->tintPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public setVolume(Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 192
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setFilesPreferenceVisibility()V

    return-void
.end method
