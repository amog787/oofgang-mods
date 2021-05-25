.class Lcom/oneplus/android/server/iris/you$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# instance fields
.field final synthetic you:Lcom/oneplus/android/server/iris/you;

.field public zta:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/iris/you;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/you$tsu;->you:Lcom/oneplus/android/server/iris/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you$tsu;->zta:Z

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/android/server/iris/you;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/you$tsu;->you:Lcom/oneplus/android/server/iris/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/you$tsu;->zta:Z

    iput-boolean p2, p0, Lcom/oneplus/android/server/iris/you$tsu;->zta:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/cno;->you:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentAnimRunnable isAnimating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/you$tsu;->zta:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/you$tsu;->you:Lcom/oneplus/android/server/iris/you;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/you$tsu;->zta:Z

    invoke-static {v0, v1}, Lcom/oneplus/android/server/iris/you;->cgv(Lcom/oneplus/android/server/iris/you;Z)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you$tsu;->you:Lcom/oneplus/android/server/iris/you;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/you;->vju(Lcom/oneplus/android/server/iris/you;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
