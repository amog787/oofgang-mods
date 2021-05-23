.class final Lcom/android/server/OpPowerControllerService$gck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "gck"
.end annotation


# instance fields
.field sis:Ljava/time/Duration;

.field final synthetic tsu:Lcom/android/server/OpPowerControllerService;

.field you:Ljava/time/LocalDateTime;

.field zta:Ljava/time/LocalDateTime;


# direct methods
.method constructor <init>(Lcom/android/server/OpPowerControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->tsu:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->zta:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->you:Ljava/time/LocalDateTime;

    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->sis:Ljava/time/Duration;

    return-void
.end method

.method constructor <init>(Lcom/android/server/OpPowerControllerService;Lcom/android/server/OpPowerControllerService$gck;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->tsu:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->zta:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->you:Ljava/time/LocalDateTime;

    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->sis:Ljava/time/Duration;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/OpPowerControllerService$gck;->tsu()Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->zta:Ljava/time/LocalDateTime;

    invoke-virtual {p2}, Lcom/android/server/OpPowerControllerService$gck;->sis()Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->you:Ljava/time/LocalDateTime;

    invoke-virtual {p2}, Lcom/android/server/OpPowerControllerService$gck;->you()Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->sis:Ljava/time/Duration;

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/OpPowerControllerService;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->tsu:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->zta:Ljava/time/LocalDateTime;

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->you:Ljava/time/LocalDateTime;

    sget-object p1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->sis:Ljava/time/Duration;

    iput-object p2, p0, Lcom/android/server/OpPowerControllerService$gck;->zta:Ljava/time/LocalDateTime;

    iput-object p3, p0, Lcom/android/server/OpPowerControllerService$gck;->you:Ljava/time/LocalDateTime;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    invoke-static {p2, p3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->sis:Ljava/time/Duration;

    :cond_2
    return-void
.end method


# virtual methods
.method cno(Ljava/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->zta:Ljava/time/LocalDateTime;

    return-void
.end method

.method rtg(Ljava/time/Duration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->sis:Ljava/time/Duration;

    return-void
.end method

.method sis()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$gck;->you:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method ssp(Ljava/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$gck;->you:Ljava/time/LocalDateTime;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "IdleItem {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$gck;->zta:Ljava/time/LocalDateTime;

    sget-object v3, Lcom/android/server/OpPowerControllerService;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$gck;->you:Ljava/time/LocalDateTime;

    sget-object v3, Lcom/android/server/OpPowerControllerService;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$gck;->sis:Ljava/time/Duration;

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method tsu()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$gck;->zta:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method you()Ljava/time/Duration;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$gck;->sis:Ljava/time/Duration;

    return-object p0
.end method

.method zta(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService$gck;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
