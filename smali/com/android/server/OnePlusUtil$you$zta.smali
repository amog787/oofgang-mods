.class public Lcom/android/server/OnePlusUtil$you$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusUtil$you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field public final sis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OnePlusUtil$you$tsu;",
            ">;"
        }
    .end annotation
.end field

.field public final you:Ljava/lang/String;

.field public final zta:I


# direct methods
.method public constructor <init>(IILjava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$you$zta;->sis:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/server/OnePlusUtil$you$zta;->zta:I

    iput-object p3, p0, Lcom/android/server/OnePlusUtil$you$zta;->you:Ljava/lang/String;

    new-instance p1, Lcom/android/server/OnePlusUtil$you$tsu;

    invoke-direct {p1, p2, p4, p5, p6}, Lcom/android/server/OnePlusUtil$you$tsu;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/server/OnePlusUtil$you$zta;->sis:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public rtg(IIII)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/OnePlusUtil$you$zta;->sis:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$you$tsu;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/OnePlusUtil$you$tsu;->zta(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public sis(IIII)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/OnePlusUtil$you$zta;->sis:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$you$tsu;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/OnePlusUtil$you$tsu;->zta(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public ssp(Lcom/android/server/OnePlusUtil$you$tsu;)Z
    .locals 3

    iget v0, p1, Lcom/android/server/OnePlusUtil$you$tsu;->zta:I

    iget v1, p1, Lcom/android/server/OnePlusUtil$you$tsu;->you:I

    iget v2, p1, Lcom/android/server/OnePlusUtil$you$tsu;->sis:I

    iget p1, p1, Lcom/android/server/OnePlusUtil$you$tsu;->tsu:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/OnePlusUtil$you$zta;->rtg(IIII)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppWindowList {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$you$zta;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusUtil$you$zta;->you:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/OnePlusUtil$you$zta;->sis:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tsu(Lcom/android/server/OnePlusUtil$you$tsu;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/OnePlusUtil$you$zta;->sis:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$you$tsu;

    invoke-virtual {v0, p1}, Lcom/android/server/OnePlusUtil$you$tsu;->you(Lcom/android/server/OnePlusUtil$you$tsu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public you(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/OnePlusUtil$you$zta;->sis:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusUtil$you$tsu;

    iget v0, v0, Lcom/android/server/OnePlusUtil$you$tsu;->zta:I

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public zta(IIII)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/OnePlusUtil$you$zta;->sis(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/OnePlusUtil$you$zta;->sis:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/OnePlusUtil$you$tsu;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/OnePlusUtil$you$tsu;-><init>(IIII)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method
