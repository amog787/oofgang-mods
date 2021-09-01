.class public Lcom/android/settings/development/storage/SharedDataPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SharedDataPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mBlobStoreManager:Landroid/app/blob/BlobStoreManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    const-class v0, Landroid/app/blob/BlobStoreManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobStoreManager;

    iput-object p1, p0, Lcom/android/settings/development/storage/SharedDataPreferenceController;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "shared_data"

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    const/4 v0, 0x0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/storage/SharedDataPreferenceController;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/storage/SharedDataPreferenceController;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 53
    invoke-virtual {p0, v1}, Landroid/app/blob/BlobStoreManager;->queryBlobsForUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 54
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p0, :cond_1

    .line 55
    sget p0, Lcom/android/settings/R$string;->shared_data_summary:I

    goto :goto_1

    .line 56
    :cond_1
    sget p0, Lcom/android/settings/R$string;->shared_data_no_blobs_text:I

    .line 55
    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to fetch blobs for current user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SharedDataPrefCtrl"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 60
    sget p0, Lcom/android/settings/R$string;->shared_data_no_blobs_text:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    return-void
.end method
