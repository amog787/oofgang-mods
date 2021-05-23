.class public Lcom/oneplus/android/server/alertslider/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/alertslider/rtg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/alertslider/you$zta;
    }
.end annotation


# static fields
.field private static final dma:Ljava/lang/String; = "oem_zen_media_switch"

.field private static final gck:I = 0x64

.field private static final igw:Ljava/lang/String; = "AlertSliderAudioPolicy"

.field private static final oif:I = 0x2

.field private static final qbh:I = 0x1

.field private static final wtn:Z

.field private static final ywr:I


# instance fields
.field private bio:Lcom/oneplus/android/server/alertslider/you$zta;

.field private cno:Z

.field private kth:Z

.field private rtg:Lcom/android/server/audio/AudioService;

.field private sis:Landroid/app/NotificationManager;

.field private ssp:Lcom/oneplus/android/server/alertslider/tsu;

.field private tsu:Landroid/media/AudioManager;

.field private you:Landroid/content/Context;

.field private final zta:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/alertslider/you;->wtn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->zta:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/alertslider/you;->kth:Z

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/you;->you:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/server/alertslider/you;->rtg:Lcom/android/server/audio/AudioService;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/oneplus/android/server/alertslider/you;->sis:Landroid/app/NotificationManager;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/you;->tsu:Landroid/media/AudioManager;

    new-instance p1, Lcom/oneplus/android/server/alertslider/you$zta;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/alertslider/you$zta;-><init>(Lcom/oneplus/android/server/alertslider/you;)V

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/you;->bio:Lcom/oneplus/android/server/alertslider/you$zta;

    invoke-virtual {p1}, Lcom/oneplus/android/server/alertslider/you$zta;->zta()V

    iget-object p1, p0, Lcom/oneplus/android/server/alertslider/you;->you:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "oem_zen_media_switch"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v0, p2

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/alertslider/you;->cno:Z

    return-void
.end method

.method static synthetic bio(Lcom/oneplus/android/server/alertslider/you;)Lcom/android/server/audio/AudioService;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->rtg:Lcom/android/server/audio/AudioService;

    return-object p0
.end method

.method static synthetic cno(Lcom/oneplus/android/server/alertslider/you;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/alertslider/you;->cno:Z

    return p0
.end method

.method private dma()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->rtg:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, -0x64

    const/4 v4, 0x2

    const-string v5, "AlertSliderManager"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeForDevice(IIIILjava/lang/String;)V

    return-void
.end method

.method private gck()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->tsu:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->rtg:Lcom/android/server/audio/AudioService;

    const/16 v0, 0x64

    const/4 v2, 0x0

    const-string v3, "AlertSliderManager"

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic igw(Lcom/oneplus/android/server/alertslider/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/you;->dma()V

    return-void
.end method

.method static synthetic kth(Lcom/oneplus/android/server/alertslider/you;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/alertslider/you;->cno:Z

    return p1
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/alertslider/you;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->you:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic ssp()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/alertslider/you;->wtn:Z

    return v0
.end method

.method static synthetic wtn(Lcom/oneplus/android/server/alertslider/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/you;->ywr()V

    return-void
.end method

.method private ywr()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->rtg:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x2

    const-string v5, "AlertSliderManager"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeForDevice(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public oif(II)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/alertslider/you;->wtn:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setOnePlusRingVolumeRange] min volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " max volume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertSliderAudioPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->rtg:Lcom/android/server/audio/AudioService;

    iput p1, p0, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    iput p2, p0, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    return-void
.end method

.method public qbh(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->rtg:Lcom/android/server/audio/AudioService;

    iput p1, p0, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    return-void
.end method

.method public sis(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/alertslider/you;->kth:Z

    return-void
.end method

.method public tsu()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/you;->ywr()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/alertslider/you;->qbh(I)V

    iget-object v2, p0, Lcom/oneplus/android/server/alertslider/you;->rtg:Lcom/android/server/audio/AudioService;

    const-string v3, "AlertSliderManager"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/android/server/alertslider/you;->oif(II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/alertslider/you;->qbh(I)V

    const-string v3, "AlertSliderAudioPolicy"

    const-string v4, "setDown"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v2, [I

    const/16 v3, 0xdb

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "close_PA"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/String;

    const-string v3, "close_PA=on"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->tsu:Landroid/media/AudioManager;

    const-string v1, "close_PA=off"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public you()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/alertslider/you;->cno:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/you;->dma()V

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/alertslider/you;->qbh(I)V

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/you;->rtg:Lcom/android/server/audio/AudioService;

    const-string v2, "AlertSliderManager"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/alertslider/you;->qbh(I)V

    const-string v2, "AlertSliderAudioPolicy"

    const-string v4, "setUp"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v1, [I

    const/16 v2, 0xdb

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/android/server/alertslider/you;->cno:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->tsu:Landroid/media/AudioManager;

    const-string v1, "close_PA=on"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zta()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/you;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/you;->ywr()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/alertslider/you;->qbh(I)V

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/you;->rtg:Lcom/android/server/audio/AudioService;

    const-string v2, "AlertSliderManager"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/alertslider/you;->qbh(I)V

    const-string v1, "AlertSliderAudioPolicy"

    const-string v2, "setMiddle"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v3, [I

    const/4 v2, 0x0

    const/16 v3, 0xdb

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "close_PA"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/String;

    const-string v3, "close_PA=on"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/you;->tsu:Landroid/media/AudioManager;

    const-string v1, "close_PA=off"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
