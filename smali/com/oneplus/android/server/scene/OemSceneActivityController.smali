.class public Lcom/oneplus/android/server/scene/OemSceneActivityController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;,
        Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;
    }
.end annotation


# static fields
.field private static bio:Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity; = null

.field public static final cno:Z

.field private static final igw:I

.field private static kth:Lcom/oneplus/android/server/scene/OemSceneActivityController; = null

.field public static final ssp:Ljava/lang/String; = "OemSceneActivityController"

.field private static final wtn:I


# instance fields
.field private rtg:Ljava/lang/Object;

.field private sis:Landroid/os/Handler;

.field private tsu:I

.field private you:Landroid/content/ContentResolver;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->cno:Z

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->zta:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->igw:I

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->you:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->wtn:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->sis:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->tsu:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->rtg:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->you:Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->rtg:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput v0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->tsu:I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private cno(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->rtg:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    iget p2, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->tsu:I

    shl-int p1, v1, p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->tsu:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->tsu:I

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->tsu:I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sis(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    iget v0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->tsu:I

    sget v1, Lcom/oneplus/android/server/scene/OemSceneActivityController;->igw:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget v1, Lcom/oneplus/android/server/scene/OemSceneActivityController;->wtn:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->tsu(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method public static ssp(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneActivityController;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->kth:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneActivityController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->kth:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->kth:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    return-object p0
.end method

.method private tsu(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/ZenModeObserver;->isInWhiteList(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.settings"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.settings.FallbackHome"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->cno:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forbid Activity in ZenMode. pkg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Info="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneActivityController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static you(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneActivityController;->kth:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    if-nez v1, :cond_1

    const-string p0, "OemSceneActivityController"

    const-string v1, "Not registerOIMCFunctions yet, just let it go!"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->ssp(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneActivityController;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->sis(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/OemSceneActivityController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->cno(IZ)V

    return-void
.end method


# virtual methods
.method public rtg()Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->bio:Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;-><init>(Lcom/oneplus/android/server/scene/OemSceneActivityController;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->bio:Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->bio:Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;

    return-object p0
.end method
