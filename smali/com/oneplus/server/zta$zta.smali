.class Lcom/oneplus/server/zta$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/OpWindowManagerService$zta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/zta;


# direct methods
.method constructor <init>(Lcom/oneplus/server/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/zta$zta;->zta:Lcom/oneplus/server/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/zta$zta;->zta:Lcom/oneplus/server/zta;

    invoke-static {v0}, Lcom/oneplus/server/zta;->zta(Lcom/oneplus/server/zta;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/zta$zta;->zta:Lcom/oneplus/server/zta;

    invoke-static {v1}, Lcom/oneplus/server/zta;->you(Lcom/oneplus/server/zta;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/server/zta$zta;->zta:Lcom/oneplus/server/zta;

    invoke-static {v1, p1}, Lcom/oneplus/server/zta;->tsu(Lcom/oneplus/server/zta;Z)Z

    iget-object p0, p0, Lcom/oneplus/server/zta$zta;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0}, Lcom/oneplus/server/zta;->qbh(Lcom/oneplus/server/zta;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
