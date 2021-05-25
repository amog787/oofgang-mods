.class public Lcom/android/server/pm/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/pm/IOpCotaAppManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/rtg$you;
    }
.end annotation


# static fields
.field private static final tsu:Ljava/lang/String; = "PackageManager[CotaApp]"


# instance fields
.field private sis:Ljava/util/concurrent/ExecutorService;

.field private you:Lcom/android/server/pm/parsing/PackageParser2;

.field private zta:Lcom/android/server/pm/PackageManagerService$PmsInner;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/rtg;-><init>()V

    return-void
.end method

.method private tsu(Ljava/io/File;IIJ)V
    .locals 12

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanDir ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/rtg;->zta:Lcom/android/server/pm/PackageManagerService$PmsInner;

    iget-object v10, v0, Lcom/android/server/pm/rtg;->you:Lcom/android/server/pm/parsing/PackageParser2;

    iget-object v11, v0, Lcom/android/server/pm/rtg;->sis:Ljava/util/concurrent/ExecutorService;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/pm/PackageManagerService$PmsInner;->scanDirLI(Ljava/io/File;IIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static you()Lcom/android/server/pm/rtg;
    .locals 1

    sget-object v0, Lcom/android/server/pm/rtg$you;->zta:Lcom/android/server/pm/rtg;

    return-object v0
.end method


# virtual methods
.method public collectCotaSystemApps(II)V
    .locals 8

    invoke-static {}, Lcom/android/server/OpCotaConfigInjector;->isCotaEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "PackageManager[CotaApp]"

    const-string p1, "COTA is not enabled! Skipping to collect COTA system packages."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/OpCotaConfigInjector;->getCotaPrivAppDirectory()Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x10000

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v3, v0

    or-int/lit8 v4, p1, 0x10

    or-int v0, p2, v1

    const/high16 v2, 0x20000

    or-int v5, v0, v2

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/rtg;->tsu(Ljava/io/File;IIJ)V

    :cond_1
    invoke-static {}, Lcom/android/server/OpCotaConfigInjector;->getCotaAppDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-object v3, v0

    or-int/lit8 v4, p1, 0x10

    or-int v5, p2, v1

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/rtg;->tsu(Ljava/io/File;IIJ)V

    :cond_2
    return-void
.end method

.method public init(Lcom/android/server/pm/PackageManagerService$PmsInner;Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/rtg;->zta:Lcom/android/server/pm/PackageManagerService$PmsInner;

    iput-object p2, p0, Lcom/android/server/pm/rtg;->you:Lcom/android/server/pm/parsing/PackageParser2;

    iput-object p3, p0, Lcom/android/server/pm/rtg;->sis:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public sis(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/16 v0, 0x135

    const/4 v1, 0x0

    aput v0, p0, v1

    invoke-static {p0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/OpCotaConfigInjector;->isCotaEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/OpCotaConfigInjector;->getCotaReserveAppDirectory()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public zta(I)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x135

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/OpCotaConfigInjector;->isCotaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/OpCotaConfigInjector;->getCotaReserveAppDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v2, v0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/rtg;->tsu(Ljava/io/File;IIJ)V

    :cond_0
    return-void
.end method
