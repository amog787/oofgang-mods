.class Lcom/android/server/zgw$rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "rtg"
.end annotation


# static fields
.field static final rtg:Ljava/lang/String; = "ChargingTimer"


# instance fields
.field sis:Lcom/android/server/zgw$bio;

.field final synthetic tsu:Lcom/android/server/zgw;

.field you:Z

.field zta:J


# direct methods
.method private constructor <init>(Lcom/android/server/zgw;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/zgw$rtg;->tsu:Lcom/android/server/zgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/zgw$bio;

    iget-object v0, p0, Lcom/android/server/zgw$rtg;->tsu:Lcom/android/server/zgw;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/zgw$bio;-><init>(Lcom/android/server/zgw;Lcom/android/server/zgw$zta;)V

    iput-object p1, p0, Lcom/android/server/zgw$rtg;->sis:Lcom/android/server/zgw$bio;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/zgw;Lcom/android/server/zgw$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw$rtg;-><init>(Lcom/android/server/zgw;)V

    return-void
.end method


# virtual methods
.method public sis()V
    .locals 2

    const-string v0, "ChargingTimer"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/zgw$rtg;->you:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/zgw$rtg;->you:Z

    iget-object p0, p0, Lcom/android/server/zgw$rtg;->sis:Lcom/android/server/zgw$bio;

    invoke-virtual {p0}, Lcom/android/server/zgw$bio;->ssp()Lcom/android/server/zgw$bio;

    return-void
.end method

.method public tsu()V
    .locals 5

    const-string v0, "ChargingTimer"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/zgw$rtg;->you:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/zgw$rtg;->you:Z

    iget-wide v1, p0, Lcom/android/server/zgw$rtg;->zta:J

    iget-object v3, p0, Lcom/android/server/zgw$rtg;->sis:Lcom/android/server/zgw$bio;

    invoke-virtual {v3}, Lcom/android/server/zgw$bio;->cno()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/zgw$rtg;->zta:J

    iget-object v1, p0, Lcom/android/server/zgw$rtg;->sis:Lcom/android/server/zgw$bio;

    invoke-virtual {v1}, Lcom/android/server/zgw$bio;->rtg()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/zgw$rtg;->zta:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public you()V
    .locals 2

    const-string v0, "ChargingTimer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/zgw$rtg;->zta:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/zgw$rtg;->you:Z

    iget-object p0, p0, Lcom/android/server/zgw$rtg;->sis:Lcom/android/server/zgw$bio;

    invoke-virtual {p0}, Lcom/android/server/zgw$bio;->rtg()V

    return-void
.end method

.method public zta()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw$rtg;->zta:J

    return-wide v0
.end method
