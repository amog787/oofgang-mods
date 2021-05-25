.class public Lcom/android/server/am/StartAppRecorder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/StartAppRecorder$zta;,
        Lcom/android/server/am/StartAppRecorder$CanStart;
    }
.end annotation


# static fields
.field public static final cno:Ljava/lang/String; = "NYNCG4I0TI"

.field private static kth:Lcom/android/server/am/StartAppRecorder;


# instance fields
.field private rtg:Lcom/android/server/am/m;

.field private sis:I

.field ssp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Lcom/android/server/am/l;

.field private you:Z

.field private zta:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/am/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppRecorder;->ssp:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/am/StartAppRecorder;->zta:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/StartAppRecorder;->tsu:Lcom/android/server/am/l;

    const-string p0, "appid"

    const-string p1, "NYNCG4I0TI"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ssp(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/StartAppRecorder;->rtg:Lcom/android/server/am/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/m;->dma(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static zta(Landroid/content/Context;Lcom/android/server/am/l;)Lcom/android/server/am/StartAppRecorder;
    .locals 1

    sget-object v0, Lcom/android/server/am/StartAppRecorder;->kth:Lcom/android/server/am/StartAppRecorder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/StartAppRecorder;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/StartAppRecorder;-><init>(Landroid/content/Context;Lcom/android/server/am/l;)V

    sput-object v0, Lcom/android/server/am/StartAppRecorder;->kth:Lcom/android/server/am/StartAppRecorder;

    :cond_0
    sget-object p0, Lcom/android/server/am/StartAppRecorder;->kth:Lcom/android/server/am/StartAppRecorder;

    return-object p0
.end method


# virtual methods
.method public rtg(Lcom/android/server/am/StartAppRecorder$zta;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/am/StartAppRecorder$zta;->zta()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/lqr;->n:Z

    const-string v1, "StartAppControl"

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/StartAppRecorder;->zta:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/StartAppRecorder;->ssp:Ljava/util/Map;

    invoke-virtual {v0, v2, v1, p1, p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public sis(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/StartAppRecorder;->sis:I

    return-void
.end method

.method protected tsu(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatch blocked authes to package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # authes:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/StartAppRecorder;->ssp(Ljava/lang/String;)V

    return-void
.end method

.method public you(Lcom/android/server/am/StartAppRecorder$zta;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/am/StartAppRecorder$zta;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    sget-object v2, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/StartAppRecorder;->ssp(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/StartAppRecorder$zta;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/StartAppRecorder;->tsu:Lcom/android/server/am/l;

    iget-object v1, p1, Lcom/android/server/am/StartAppRecorder$zta;->rtg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/StartAppRecorder$zta;->ssp:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/StartAppRecorder$zta;->cno:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/am/l;->vdb(Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    if-ne v1, v0, :cond_1

    iget-object p1, p1, Lcom/android/server/am/StartAppRecorder$zta;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/StartAppRecorder;->tsu:Lcom/android/server/am/l;

    invoke-virtual {p0}, Lcom/android/server/am/l;->igw()V

    :cond_1
    :goto_0
    return-void
.end method
