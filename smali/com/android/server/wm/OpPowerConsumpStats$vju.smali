.class final Lcom/android/server/wm/OpPowerConsumpStats$vju;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "vju"
.end annotation


# instance fields
.field sis:I

.field you:J

.field zta:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknow"

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats$vju;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknow"

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    iget-object v0, p1, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    iget p1, p1, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknow"

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    iput p4, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    return-void
.end method

.method private cno(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"name\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "unknow"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"time\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"count\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private kth(JI)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    return-void
.end method

.method private rtg(Lcom/android/server/wm/OpPowerConsumpStats$vju;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    iget p1, p1, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$vju;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->cno(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ssp(Lcom/android/server/wm/OpPowerConsumpStats$vju;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    iget v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    iget p1, p1, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats$vju;Lcom/android/server/wm/OpPowerConsumpStats$vju;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$vju;)Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$vju;Lcom/android/server/wm/OpPowerConsumpStats$vju;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->ssp(Lcom/android/server/wm/OpPowerConsumpStats$vju;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$vju;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->kth(JI)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimerEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
