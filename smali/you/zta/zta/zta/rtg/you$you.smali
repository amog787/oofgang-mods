.class Lyou/zta/zta/zta/rtg/you$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/rtg/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic you:Lyou/zta/zta/zta/rtg/you;

.field private zta:Z


# direct methods
.method private constructor <init>(Lyou/zta/zta/zta/rtg/you;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/you$you;->you:Lyou/zta/zta/zta/rtg/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyou/zta/zta/zta/rtg/you$you;->zta:Z

    return-void
.end method

.method synthetic constructor <init>(Lyou/zta/zta/zta/rtg/you;Lyou/zta/zta/zta/rtg/you$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/rtg/you$you;-><init>(Lyou/zta/zta/zta/rtg/you;)V

    return-void
.end method


# virtual methods
.method public sis()V
    .locals 2

    const-string v0, "OpGnssLocPro"

    const-string v1, "reset msa"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/zta/zta/rtg/you$you;->zta:Z

    return-void
.end method

.method public you()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get force msa: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lyou/zta/zta/zta/rtg/you$you;->zta:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpGnssLocPro"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lyou/zta/zta/zta/rtg/you$you;->zta:Z

    return p0
.end method

.method public zta(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "set_position_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "mode"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyou/zta/zta/zta/rtg/you$you;->zta:Z

    const-string p0, "OpGnssLocPro"

    const-string p1, "set force msa."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lyou/zta/zta/zta/rtg/you$you;->zta:Z

    :cond_1
    :goto_0
    return-void
.end method
