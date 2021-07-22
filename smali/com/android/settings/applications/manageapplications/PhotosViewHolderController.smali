.class public Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;
.super Ljava/lang/Object;
.source "PhotosViewHolderController.java"

# interfaces
.implements Lcom/android/settings/applications/manageapplications/FileViewHolderController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilesSize:J

.field private mSource:Lcom/android/settingslib/applications/StorageStatsSource;

.field private mUser:Landroid/os/UserHandle;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    .line 50
    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mVolumeUuid:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public onClick(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x80000

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.FROM_STORAGE"

    const/4 v2, 0x1

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-static {p1, v0}, Lcom/android/settings/Utils;->launchIntent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method public queryStats()V
    .locals 5

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mSource:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mVolumeUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mUser:Landroid/os/UserHandle;

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object v0

    .line 60
    iget-wide v1, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->imageBytes:J

    iget-wide v3, v0, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->videoBytes:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mFilesSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    .line 62
    iput-wide v1, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mFilesSize:J

    const-string p0, "PhotosViewHolderCtrl"

    .line 63
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setupView(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 3

    .line 74
    sget v0, Lcom/android/settings/R$drawable;->ic_photo_library:I

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setIcon(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->storage_detail_images:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;->mFilesSize:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldShow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
