.class public Lcom/android/server/secrecy/sis/you;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static cno:Ljava/lang/String; = "SecrecyService.FlashInfo"


# instance fields
.field private rtg:J

.field private sis:Ljava/lang/String;

.field private ssp:J

.field private tsu:Ljava/lang/String;

.field private you:Ljava/lang/String;

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rtg()V
    .locals 2

    invoke-static {}, Lcom/android/server/secrecy/sis/ssp/sis;->you()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/sis/you;->tsu:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/secrecy/sis/ssp/sis;->ssp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/secrecy/sis/you;->zta:Z

    iget-object v0, p0, Lcom/android/server/secrecy/sis/you;->tsu:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/secrecy/sis/ssp/sis;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/sis/you;->you:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/secrecy/sis/you;->tsu:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/secrecy/sis/ssp/sis;->sis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/sis/you;->sis:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/secrecy/sis/you;->you:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/secrecy/sis/ssp/sis;->rtg(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/secrecy/sis/you;->rtg:J

    return-void
.end method

.method public sis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/secrecy/sis/you;->ssp:J

    return-wide v0
.end method

.method public ssp(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/secrecy/sis/you;->ssp:J

    :cond_0
    sget-object v0, Lcom/android/server/secrecy/sis/you;->cno:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastDownloadTimeInMills, mLastDownloadTimeInMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/secrecy/sis/you;->ssp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", lastDownloadTimeInMillis = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/secrecy/sis/ssp/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tsu()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/secrecy/sis/you;->zta:Z

    return p0
.end method

.method public you()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/secrecy/sis/you;->rtg:J

    return-wide v0
.end method

.method public zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentDownloadInternal   = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/secrecy/sis/you;->zta:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentDownloadStatus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/secrecy/sis/you;->tsu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentDownloadTimeInMillis = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/secrecy/sis/you;->rtg:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mLastDownloadTimeInMillis = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/secrecy/sis/you;->ssp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
