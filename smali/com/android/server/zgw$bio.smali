.class Lcom/android/server/zgw$bio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "bio"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/zgw;

.field private you:J

.field private zta:J


# direct methods
.method private constructor <init>(Lcom/android/server/zgw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/zgw$bio;->sis:Lcom/android/server/zgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/zgw;Lcom/android/server/zgw$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw$bio;-><init>(Lcom/android/server/zgw;)V

    return-void
.end method


# virtual methods
.method public cno()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/zgw$bio;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/zgw$bio;->you:J

    :cond_0
    iget-wide v0, p0, Lcom/android/server/zgw$bio;->you:J

    iget-wide v2, p0, Lcom/android/server/zgw$bio;->zta:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public rtg()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/zgw$bio;->zta:J

    iput-wide v0, p0, Lcom/android/server/zgw$bio;->you:J

    return-void
.end method

.method public sis()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/zgw$bio;->you:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ssp()Lcom/android/server/zgw$bio;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/zgw$bio;->you()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/zgw$bio;->zta:J

    :cond_0
    return-object p0
.end method

.method public tsu()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/zgw$bio;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/zgw$bio;->zta:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/zgw$bio;->cno()J

    move-result-wide v0

    return-wide v0
.end method

.method public you()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/zgw$bio;->zta:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public zta()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/zgw$bio;->you()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/zgw$bio;->sis()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
