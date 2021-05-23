.class public Lcom/android/server/OnePlusUtil$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sis"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusUtil$sis$zta;
    }
.end annotation


# static fields
.field private static final sis:Ljava/lang/String; = "OpGesturesEventMonitor"

.field private static tsu:Lcom/android/server/OnePlusUtil$sis;


# instance fields
.field private final you:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OnePlusUtil$sis$zta;",
            ">;"
        }
    .end annotation
.end field

.field private final zta:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$sis;->zta:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$sis;->you:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic sis(ILcom/android/server/OnePlusUtil$sis$zta;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/server/OnePlusUtil$sis$zta;->onFling(I)V

    return-void
.end method

.method static synthetic tsu(ZLcom/android/server/OnePlusUtil$sis$zta;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/server/OnePlusUtil$sis$zta;->onTouch(Z)V

    return-void
.end method

.method public static you()Lcom/android/server/OnePlusUtil$sis;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusUtil$sis;->tsu:Lcom/android/server/OnePlusUtil$sis;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OnePlusUtil$sis;

    invoke-direct {v0}, Lcom/android/server/OnePlusUtil$sis;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$sis;->tsu:Lcom/android/server/OnePlusUtil$sis;

    :cond_0
    sget-object v0, Lcom/android/server/OnePlusUtil$sis;->tsu:Lcom/android/server/OnePlusUtil$sis;

    return-object v0
.end method


# virtual methods
.method public cno(Lcom/android/server/OnePlusUtil$sis$zta;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$sis;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusUtil$sis;->you:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/OnePlusUtil$sis;->you:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public kth(Lcom/android/server/OnePlusUtil$sis$zta;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$sis;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/OnePlusUtil$sis;->you:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public rtg(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$sis;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/OnePlusUtil$sis;->you:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/you;

    invoke-direct {v1, p1}, Lcom/android/server/you;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ssp(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$sis;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/OnePlusUtil$sis;->you:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/zta;

    invoke-direct {v1, p1}, Lcom/android/server/zta;-><init>(Z)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zta(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "OpGesturesEventMonitor:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$sis;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Listener size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/OnePlusUtil$sis;->you:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
