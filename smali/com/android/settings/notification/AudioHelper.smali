.class public Lcom/android/settings/notification/AudioHelper;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public createPackageContextAsUser(I)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getManagedProfileId(Landroid/os/UserManager;)I
    .locals 0

    .line 48
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p0

    return p0
.end method

.method public getMaxVolume(I)I
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getMinVolume(I)I
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid stream type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p0, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRingerModeInternal()I
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p0

    return p0
.end method

.method public getStreamVolume(I)I
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public isSingleVolume()Z
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isUserUnlocked(Landroid/os/UserManager;I)Z
    .locals 0

    .line 52
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    return p0
.end method

.method public setStreamVolume(II)Z
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 p0, 0x1

    return p0
.end method
