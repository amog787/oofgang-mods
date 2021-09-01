.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
.super Landroid/os/AsyncTask;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartitionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

.field private volatile mPrivateBench:J

.field private volatile mProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 v0, 0x14

    .line 83
    iput v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;[Ljava/lang/Object;)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 7

    .line 89
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 90
    iget-object v0, p1, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    .line 92
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$000(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p1, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->partitionPrivate(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/16 v5, 0x28

    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    const/16 v3, 0x32

    .line 96
    invoke-virtual {p1, v1, v3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findFirstVolume(II)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 97
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v4, v5}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    const-wide/16 v4, 0x3c

    .line 111
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    const-string v4, "run"

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    .line 118
    :cond_0
    iget-object p0, p1, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 119
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object p0

    const-string p1, "primary_physical"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "StorageSettings"

    const-string p1, "Just formatted primary physical; silently moving storage to new emulated volume"

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;

    invoke-direct {p1, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;-><init>(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$1;)V

    invoke-virtual {v0, p0, p1}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p0, p1, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v2

    :catch_0
    move-exception p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 149
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "StorageSettings"

    if-eqz p1, :cond_1

    const-string p0, "Failed to partition"

    .line 154
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    return-void

    .line 160
    :cond_1
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->access$000(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New volume took "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms to run benchmark"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "sys.debug.storage_slow"

    .line 194
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 197
    :cond_2
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V

    goto :goto_1

    .line 195
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinishedSlow()V

    goto :goto_1

    .line 200
    :cond_4
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V

    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    .line 138
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    iget p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setCurrentProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    .line 143
    iget p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setCurrentProgress(I)V

    return-void
.end method
