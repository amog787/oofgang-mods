.class Lcom/oneplus/android/server/openid/rtg$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/openid/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field private sis:Ljava/lang/String;

.field final synthetic tsu:Lcom/oneplus/android/server/openid/rtg;

.field private you:Ljava/lang/String;

.field private zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/openid/rtg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/rtg$sis;->tsu:Lcom/oneplus/android/server/openid/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/android/server/openid/rtg$sis;->zta:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/android/server/openid/rtg$sis;->you:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/android/server/openid/rtg$sis;->sis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public rtg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/rtg$sis;->you:Ljava/lang/String;

    return-void
.end method

.method public sis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$sis;->sis:Ljava/lang/String;

    return-object p0
.end method

.method public ssp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/rtg$sis;->sis:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auid--pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/openid/rtg$sis;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/openid/rtg$sis;->you:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$sis;->sis:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tsu(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/rtg$sis;->zta:Ljava/lang/String;

    return-void
.end method

.method public you()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$sis;->you:Ljava/lang/String;

    return-object p0
.end method

.method public zta()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$sis;->zta:Ljava/lang/String;

    return-object p0
.end method
