.class Lcom/android/server/am/SocketTransition$rtg;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SocketTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "rtg"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/SocketTransition;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SocketTransition;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SocketTransition$rtg;->zta:Lcom/android/server/am/SocketTransition;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/android/server/am/c;->vdw()Lcom/android/server/am/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/c;->irq(Z)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    if-nez p0, :cond_0

    const-string p0, "SocketTransition init list is null"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketTransition init list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
