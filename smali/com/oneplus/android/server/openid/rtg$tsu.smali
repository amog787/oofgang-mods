.class Lcom/oneplus/android/server/openid/rtg$tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/openid/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field private sis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/android/server/openid/rtg$sis;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic tsu:Lcom/oneplus/android/server/openid/rtg;

.field private you:Ljava/lang/String;

.field private zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/openid/rtg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->tsu:Lcom/oneplus/android/server/openid/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->zta:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->you:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public rtg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->zta:Ljava/lang/String;

    return-void
.end method

.method public sis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->you:Ljava/lang/String;

    return-object p0
.end method

.method public ssp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->you:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duid--sign:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->you:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",auidList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->sis:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tsu(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/android/server/openid/rtg$sis;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->sis:Ljava/util/List;

    return-void
.end method

.method public you()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->zta:Ljava/lang/String;

    return-object p0
.end method

.method public zta()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/android/server/openid/rtg$sis;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->sis:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->sis:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$tsu;->sis:Ljava/util/List;

    return-object p0
.end method
