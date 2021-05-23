.class public Lcom/android/server/am/OnePlusHighPowerDetector$ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ssp"
.end annotation


# instance fields
.field private bio:I

.field public cno:J

.field public kth:[J

.field public rtg:Ljava/lang/String;

.field public sis:I

.field public ssp:Ljava/lang/String;

.field public tsu:Z

.field public final you:I

.field public final zta:I


# direct methods
.method constructor <init>(IILjava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sis:I

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->tsu:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    const/4 v3, 0x4

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->bio:I

    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    iput p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    iput-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    int-to-long p2, p4

    add-long/2addr v1, p2

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->gck()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    const-string p2, " pid "

    const-string p3, "OHPD"

    if-eqz p1, :cond_0

    array-length p4, p1

    if-lez p4, :cond_0

    aget-object p4, p1, v0

    if-eqz p4, :cond_0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->gck()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {p1, p4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sis:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[BgDetect]err when get info of "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ") uid "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[BgDetect] AppForkedProc "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " can\'t find pkgName"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public cno()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->bio:I

    return-void
.end method

.method public kth()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->tsu:Z

    return-void
.end method

.method public rtg()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->bio:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->bio:I

    return-void
.end method

.method public sis()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->bio:I

    return p0
.end method

.method public ssp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->tsu:Z

    return-void
.end method

.method public tsu()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->tsu:Z

    return p0
.end method

.method public you(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    return-void
.end method

.method public zta()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->bio:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->bio:I

    return-void
.end method
