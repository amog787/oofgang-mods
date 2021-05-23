.class public Lcom/android/server/OpPowerControllerService$wtn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "wtn"
.end annotation


# instance fields
.field public sis:Z

.field final synthetic tsu:Lcom/android/server/OpPowerControllerService;

.field public you:I

.field public zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/OpPowerControllerService;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$wtn;->tsu:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/OpPowerControllerService$wtn;->sis:Z

    iput-object p2, p0, Lcom/android/server/OpPowerControllerService$wtn;->zta:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/OpPowerControllerService$wtn;->you:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$wtn;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OpPowerControllerService$wtn;->you:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/OpPowerControllerService$wtn;->sis:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "} "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
