.class Lcom/android/server/am/qeg$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/qeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/am/qeg;

.field you:Lcom/android/server/am/BroadcastQueue;

.field zta:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/qeg;Lcom/android/server/am/BroadcastQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/qeg$you;->sis:Lcom/android/server/am/qeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/qeg$you;->zta:Z

    iput-object p2, p0, Lcom/android/server/am/qeg$you;->you:Lcom/android/server/am/BroadcastQueue;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/qeg$you;->zta:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recheck of delay broadcastqueue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qeg$you;->you:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " queue.mDelayCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/qeg$you;->you:Lcom/android/server/am/BroadcastQueue;

    iget v1, v1, Lcom/android/server/am/BroadcastQueue;->mDelayCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBroadcastDelayStrategy"

    invoke-static {v1, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/qeg$you;->zta:Z

    iget-object p0, p0, Lcom/android/server/am/qeg$you;->you:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    :cond_0
    return-void
.end method
