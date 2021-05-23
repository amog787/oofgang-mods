.class public Lcom/oneplus/android/server/scene/OemSceneAudioController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;
    }
.end annotation


# static fields
.field public static final rtg:Z

.field private static ssp:Lcom/oneplus/android/server/scene/OemSceneAudioController; = null

.field public static final tsu:Ljava/lang/String; = "OemSceneAudioController"


# instance fields
.field private sis:Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;

.field private you:Landroid/media/AudioManager;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->rtg:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->zta:Landroid/content/Context;

    return-void
.end method

.method private cno()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneAudioController;->you()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneAudioController;->rtg([Ljava/lang/String;)V

    return-void
.end method

.method private rtg([Ljava/lang/String;)V
    .locals 7

    const-string p0, "OemSceneAudioController"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const-string v6, "killUidByZenMode"

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mute uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " by zen mode."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error calling killUid"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method private ssp(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->rtg:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseActiveAudioUidsStr():uids="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneAudioController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tsu(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneAudioController;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->ssp:Lcom/oneplus/android/server/scene/OemSceneAudioController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneAudioController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneAudioController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->ssp:Lcom/oneplus/android/server/scene/OemSceneAudioController;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->ssp:Lcom/oneplus/android/server/scene/OemSceneAudioController;

    return-object p0
.end method

.method private you()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->you:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->zta:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->you:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->you:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const-string v1, "get_uid"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneAudioController;->ssp(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/OemSceneAudioController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneAudioController;->cno()V

    return-void
.end method


# virtual methods
.method public sis()Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->sis:Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;-><init>(Lcom/oneplus/android/server/scene/OemSceneAudioController;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->sis:Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->sis:Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;

    return-object p0
.end method
