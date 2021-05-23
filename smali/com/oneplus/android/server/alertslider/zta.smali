.class public Lcom/oneplus/android/server/alertslider/zta;
.super Lcom/oneplus/android/server/alertslider/sis;
.source ""


# static fields
.field private static final bio:Ljava/lang/String; = "AlertSlider"

.field private static final igw:Z


# instance fields
.field private kth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/android/server/alertslider/rtg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/alertslider/zta;->igw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/alertslider/sis;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/zta;->kth:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected bio()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/zta;->kth:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/alertslider/rtg;

    invoke-interface {v0}, Lcom/oneplus/android/server/alertslider/rtg;->zta()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dma(Lcom/oneplus/android/server/alertslider/rtg;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/zta;->kth:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public gck(Lcom/oneplus/android/server/alertslider/rtg;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/alertslider/zta;->igw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addAlertSliderPolicy]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertSlider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/zta;->kth:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected kth()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/zta;->kth:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/alertslider/rtg;

    invoke-interface {v0}, Lcom/oneplus/android/server/alertslider/rtg;->tsu()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected wtn()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/zta;->kth:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/alertslider/rtg;

    invoke-interface {v0}, Lcom/oneplus/android/server/alertslider/rtg;->you()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public you(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/zta;->kth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/alertslider/rtg;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oneplus/android/server/alertslider/rtg;->sis(Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/android/server/alertslider/sis;->you(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/zta;->kth:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/android/server/alertslider/rtg;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oneplus/android/server/alertslider/rtg;->sis(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method
