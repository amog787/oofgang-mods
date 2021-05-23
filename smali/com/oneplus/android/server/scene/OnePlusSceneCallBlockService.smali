.class public Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;
.super Lcom/oneplus/android/scene/IOnePlusSceneCallBlock$Stub;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePlusSceneCallBlockService"


# instance fields
.field private mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

.field private mServiceReady:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlock$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->getInstance()Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    return-void
.end method


# virtual methods
.method public isBlockDisplayOverApp(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->isBlockDisplayOverApp(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "OnePlusSceneCallBlockService"

    const-string p1, "[isBlockDisplayOverApp] mOemSceneCallBlock is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;IZ)Z
    .locals 7

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;IZ)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "OnePlusSceneCallBlockService"

    const-string p1, "[isCallBlockedWithUid] mOemSceneCallBlock is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "OnePlusSceneCallBlockService"

    const-string p1, "[isMutedByCallBlocker] mOemSceneCallBlock is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "OnePlusSceneCallBlockService"

    const-string p1, "[isNotificationMutedByCallBlocker] mOemSceneCallBlock is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "OnePlusSceneCallBlockService"

    const-string p1, "[isNotificationMutedByESport] mOemSceneCallBlock is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isStreamMutedByCallBlocker(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->isStreamMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "OnePlusSceneCallBlockService"

    const-string p1, "[isStreamMutedByCallBlocker] mOemSceneCallBlock is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isUsageMutedByCallBlocker(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->isUsageMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "OnePlusSceneCallBlockService"

    const-string p1, "[isUsageMutedByCallBlocker] mOemSceneCallBlock is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "OnePlusSceneCallBlockService"

    const-string p1, "[isVibratorUsageMutedByCallBlocker] mOemSceneCallBlock is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public needUpdate(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->needUpdate(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "OnePlusSceneCallBlockService"

    const-string p1, "[needUpdate] mOemSceneCallBlock is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public publish()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/android/scene/IOnePlusSceneCallBlock$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "opscenecallblock"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->getInstance()Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-virtual {v0, p1}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->systemReady(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    return-void
.end method

.method public updatePis()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->mServiceReady:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->updatePis()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "OnePlusSceneCallBlockService"

    const-string v0, "[updatePis] mOemSceneCallBlock is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
