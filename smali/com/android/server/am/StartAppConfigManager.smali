.class public Lcom/android/server/am/StartAppConfigManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/StartAppConfigManager$you;,
        Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;
    }
.end annotation


# static fields
.field private static final gck:Ljava/lang/Object;

.field private static wtn:Lcom/android/server/am/StartAppConfigManager;


# instance fields
.field protected bio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected cno:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private igw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StartAppConfigManager$you;",
            ">;"
        }
    .end annotation
.end field

.field protected kth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected rtg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StartAppConfigManager$you;",
            ">;"
        }
    .end annotation
.end field

.field protected sis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StartAppConfigManager$you;",
            ">;"
        }
    .end annotation
.end field

.field protected ssp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StartAppConfigManager$you;",
            ">;"
        }
    .end annotation
.end field

.field protected tsu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StartAppConfigManager$you;",
            ">;"
        }
    .end annotation
.end field

.field protected you:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StartAppConfigManager$you;",
            ">;"
        }
    .end annotation
.end field

.field protected zta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StartAppConfigManager$you;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/StartAppConfigManager;->gck:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->cno:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->zta:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->you:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->sis:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->tsu:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->rtg:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->ssp:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->kth:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->bio:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->igw:Ljava/util/List;

    const-string v1, "clock"

    const-string v2, "alarm"

    const-string v3, "calendar"

    const-string v4, "plan"

    const-string v5, "mail"

    const-string v6, "note"

    const-string v7, "test"

    const-string v8, "cts"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/StartAppConfigManager;->gck:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/android/server/am/StartAppConfigManager$you;

    invoke-direct {v3}, Lcom/android/server/am/StartAppConfigManager$you;-><init>()V

    iput-object v2, v3, Lcom/android/server/am/StartAppConfigManager$you;->you:Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->you:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iput-object v2, v3, Lcom/android/server/am/StartAppConfigManager$you;->ssp:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget-object v2, p0, Lcom/android/server/am/StartAppConfigManager;->igw:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/StartAppConfigManager;->you:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/am/StartAppConfigManager;->igw:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private cno(Lcom/android/server/am/StartAppConfigManager$you;)Z
    .locals 2

    iget-object p0, p1, Lcom/android/server/am/StartAppConfigManager$you;->sis:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/StartAppConfigManager$you;->tsu:Ljava/lang/String;

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/StartAppConfigManager$you;->rtg:Ljava/lang/String;

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/StartAppConfigManager$you;->ssp:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    sget-object v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    if-ne p0, v1, :cond_2

    :cond_0
    iget-object p0, p1, Lcom/android/server/am/StartAppConfigManager$you;->zta:Ljava/lang/String;

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/StartAppConfigManager$you;->you:Ljava/lang/String;

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private kth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    const/4 p3, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-string p0, "addNewConfig: all null. ignore."

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    return p3

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    return p0

    :cond_1
    sget-object p1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->sis:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget p1, p1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    if-ne p6, p1, :cond_2

    const-string p0, "addNewConfig: block package. ignore."

    goto :goto_0

    :cond_2
    return p0
.end method

.method private ssp(Lcom/android/server/am/StartAppConfigManager$you;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/StartAppConfigManager$you;",
            "Ljava/util/List<",
            "Lcom/android/server/am/StartAppConfigManager$you;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/StartAppConfigManager$you;

    iget-object v0, p2, Lcom/android/server/am/StartAppConfigManager$you;->zta:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/StartAppConfigManager$you;->zta:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/android/server/am/StartAppConfigManager$you;->you:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/android/server/am/StartAppConfigManager$you;->you:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/android/server/am/StartAppConfigManager$you;->sis:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/android/server/am/StartAppConfigManager$you;->sis:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/android/server/am/StartAppConfigManager$you;->tsu:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/android/server/am/StartAppConfigManager$you;->tsu:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p2, p2, Lcom/android/server/am/StartAppConfigManager$you;->rtg:Ljava/lang/String;

    if-eqz p2, :cond_5

    iget-object v0, p1, Lcom/android/server/am/StartAppConfigManager$you;->rtg:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static tsu()Lcom/android/server/am/StartAppConfigManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/StartAppConfigManager;->wtn:Lcom/android/server/am/StartAppConfigManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/StartAppConfigManager;

    invoke-direct {v0}, Lcom/android/server/am/StartAppConfigManager;-><init>()V

    sput-object v0, Lcom/android/server/am/StartAppConfigManager;->wtn:Lcom/android/server/am/StartAppConfigManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/StartAppConfigManager;->wtn:Lcom/android/server/am/StartAppConfigManager;

    return-object v0
.end method


# virtual methods
.method protected bio()V
    .locals 2

    sget-object v0, Lcom/android/server/am/StartAppConfigManager;->gck:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->zta:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->you:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->sis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->tsu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->rtg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->ssp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->cno:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->you:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/am/StartAppConfigManager;->igw:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    new-instance v0, Lcom/android/server/am/StartAppConfigManager$you;

    invoke-direct {v0}, Lcom/android/server/am/StartAppConfigManager$you;-><init>()V

    iput-object p1, v0, Lcom/android/server/am/StartAppConfigManager$you;->zta:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/server/am/StartAppConfigManager$you;->you:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/server/am/StartAppConfigManager$you;->sis:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/server/am/StartAppConfigManager$you;->tsu:Ljava/lang/String;

    iput-object p5, v0, Lcom/android/server/am/StartAppConfigManager$you;->rtg:Ljava/lang/String;

    sget-object p1, Lcom/android/server/am/StartAppConfigManager;->gck:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->you:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->you:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/StartAppConfigManager;->ssp(Lcom/android/server/am/StartAppConfigManager$you;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->you:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget p0, p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->tsu:Ljava/util/List;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->tsu:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/StartAppConfigManager;->ssp(Lcom/android/server/am/StartAppConfigManager$you;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget p0, p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->zta:Ljava/util/List;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->zta:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/StartAppConfigManager;->ssp(Lcom/android/server/am/StartAppConfigManager$you;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget p0, p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_2
    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->sis:Ljava/util/List;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->sis:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/StartAppConfigManager;->ssp(Lcom/android/server/am/StartAppConfigManager$you;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->sis:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget p0, p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_3
    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->rtg:Ljava/util/List;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->rtg:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/StartAppConfigManager;->ssp(Lcom/android/server/am/StartAppConfigManager$you;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_4
    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->ssp:Ljava/util/List;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->ssp:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/StartAppConfigManager;->ssp(Lcom/android/server/am/StartAppConfigManager$you;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, -0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_5
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected sis(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/StartAppConfigManager;->gck:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/StartAppConfigManager;->cno:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected you()V
    .locals 5

    sget-object v0, Lcom/android/server/am/StartAppConfigManager;->gck:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->you:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/StartAppConfigManager$you;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump # config Pass:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->tsu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/StartAppConfigManager$you;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump # config BlockNotForeground:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->zta:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/StartAppConfigManager$you;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump # config BlockNotRunning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->sis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/StartAppConfigManager$you;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump # config Block:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->rtg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/StartAppConfigManager$you;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump # config BlockNotRunningDefer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/StartAppConfigManager;->ssp:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/StartAppConfigManager$you;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump # config BlockNotForegroundDefer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/StartAppConfigManager;->kth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/am/StartAppConfigManager$you;

    invoke-direct {v0}, Lcom/android/server/am/StartAppConfigManager$you;-><init>()V

    iput-object p1, v0, Lcom/android/server/am/StartAppConfigManager$you;->zta:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/server/am/StartAppConfigManager$you;->you:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/server/am/StartAppConfigManager$you;->sis:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/server/am/StartAppConfigManager$you;->tsu:Ljava/lang/String;

    iput-object p5, v0, Lcom/android/server/am/StartAppConfigManager$you;->rtg:Ljava/lang/String;

    invoke-static {p6}, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta(I)Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    move-result-object p6

    iput-object p6, v0, Lcom/android/server/am/StartAppConfigManager$you;->ssp:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    sget-object p6, Lcom/android/server/am/StartAppConfigManager;->gck:Ljava/lang/Object;

    monitor-enter p6

    :try_start_0
    sget-object v1, Lcom/android/server/am/StartAppConfigManager$zta;->zta:[I

    iget-object v2, v0, Lcom/android/server/am/StartAppConfigManager$you;->ssp:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 p1, 0x4

    if-eq v1, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/StartAppConfigManager;->cno(Lcom/android/server/am/StartAppConfigManager$you;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/StartAppConfigManager;->ssp:Ljava/util/List;

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/StartAppConfigManager;->tsu:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/StartAppConfigManager;->sis:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    if-nez p3, :cond_8

    if-nez p4, :cond_8

    if-eqz p5, :cond_8

    iget-object p2, p0, Lcom/android/server/am/StartAppConfigManager;->cno:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/StartAppConfigManager;->cno:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/server/am/StartAppConfigManager;->you:Ljava/util/List;

    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/am/StartAppConfigManager;->cno(Lcom/android/server/am/StartAppConfigManager$you;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/server/am/StartAppConfigManager;->rtg:Ljava/util/List;

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/android/server/am/StartAppConfigManager;->zta:Ljava/util/List;

    goto :goto_0

    :cond_8
    :goto_1
    monitor-exit p6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
