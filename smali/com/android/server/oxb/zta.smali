.class public Lcom/android/server/oxb/zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oxb/zta$zta;
    }
.end annotation


# static fields
.field public static final bio:I = 0x2

.field public static final bvj:Ljava/lang/String; = "special_batterytemp"

.field public static final cno:I = 0x0

.field public static final dma:Ljava/lang/String; = "temp"

.field public static final gck:Ljava/lang/String; = "default"

.field public static final gwm:I = 0x0

.field public static final ibl:Ljava/lang/String; = "special_game"

.field public static final igw:I = 0x3

.field public static final kth:I = 0x1

.field public static final oif:Ljava/lang/String; = "special_wireless"

.field public static final qbh:Ljava/lang/String; = "game"

.field public static final ugm:I = 0x1

.field public static final vdb:I = 0x2

.field public static final wtn:I = 0x4

.field public static final ywr:Ljava/lang/String; = "wireless"

.field public static final zgw:I = 0x3


# instance fields
.field private rtg:I

.field private sis:Ljava/lang/String;

.field private ssp:I

.field private tsu:I

.field private you:I

.field private zta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oxb/zta;->tsu:I

    iput v0, p0, Lcom/android/server/oxb/zta;->rtg:I

    iput v0, p0, Lcom/android/server/oxb/zta;->ssp:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/oxb/zta;->zta:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/oxb/zta;->you:I

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/server/oxb/zta;->sis:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oxb/zta;->tsu:I

    iput v0, p0, Lcom/android/server/oxb/zta;->rtg:I

    iput v0, p0, Lcom/android/server/oxb/zta;->ssp:I

    iput-object p1, p0, Lcom/android/server/oxb/zta;->zta:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/oxb/zta;->you:I

    iput-object p3, p0, Lcom/android/server/oxb/zta;->sis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bio(ZI)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/oxb/zta;->rtg:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/oxb/zta;->rtg:I

    if-lt p1, p2, :cond_1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/android/server/oxb/zta;->rtg:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/oxb/zta;->tsu:I

    return v0

    :cond_0
    iget p1, p0, Lcom/android/server/oxb/zta;->rtg:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/oxb/zta;->rtg:I

    if-gez p1, :cond_1

    iput v0, p0, Lcom/android/server/oxb/zta;->rtg:I

    iput v0, p0, Lcom/android/server/oxb/zta;->tsu:I

    return v0

    :cond_1
    return v1
.end method

.method public cno(I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oxb/zta;->rtg:I

    return p1
.end method

.method public igw(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/oxb/zta;->tsu:I

    return-void
.end method

.method public kth(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/oxb/zta;->ssp:I

    return-void
.end method

.method public rtg()I
    .locals 0

    iget p0, p0, Lcom/android/server/oxb/zta;->ssp:I

    return p0
.end method

.method public sis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/oxb/zta;->sis:Ljava/lang/String;

    return-object p0
.end method

.method public ssp()I
    .locals 0

    iget p0, p0, Lcom/android/server/oxb/zta;->you:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppBacklightConfig:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/oxb/zta;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/oxb/zta;->you:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/oxb/zta;->sis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/oxb/zta;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/oxb/zta;->rtg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/oxb/zta;->ssp:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tsu()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/oxb/zta;->zta:Ljava/lang/String;

    return-object p0
.end method

.method public you()I
    .locals 0

    iget p0, p0, Lcom/android/server/oxb/zta;->tsu:I

    return p0
.end method

.method public zta()I
    .locals 0

    iget p0, p0, Lcom/android/server/oxb/zta;->rtg:I

    return p0
.end method
