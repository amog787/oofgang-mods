.class Lcom/android/server/policy/DeviceKeyHandler$ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ssp"
.end annotation


# instance fields
.field final synthetic rtg:Lcom/android/server/policy/DeviceKeyHandler;

.field sis:Ljava/lang/String;

.field tsu:I

.field you:Ljava/lang/String;

.field zta:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->rtg:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler$ssp;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    return-void
.end method


# virtual methods
.method public cno(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->sis:Ljava/lang/String;

    return-void
.end method

.method public kth(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->tsu:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->tsu:I

    :goto_0
    return-void
.end method

.method public rtg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->zta:Ljava/lang/String;

    return-void
.end method

.method public sis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->sis:Ljava/lang/String;

    return-object p0
.end method

.method public ssp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->you:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->you:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ShortcutId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->sis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->tsu:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tsu()I
    .locals 0

    iget p0, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->tsu:I

    return p0
.end method

.method public you()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->you:Ljava/lang/String;

    return-object p0
.end method

.method public zta()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/DeviceKeyHandler$ssp;->zta:Ljava/lang/String;

    return-object p0
.end method
