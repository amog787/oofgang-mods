.class Lcom/android/server/am/SocketTransition$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SocketTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/SocketTransition;


# direct methods
.method constructor <init>(Lcom/android/server/am/SocketTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SocketTransition$zta;->zta:Lcom/android/server/am/SocketTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/server/am/SocketTransition;->access$100()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    const-string v0, "persist.vendor.orm.restart"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/SocketTransition;->access$202(Z)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
