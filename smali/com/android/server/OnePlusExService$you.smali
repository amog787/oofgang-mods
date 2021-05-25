.class Lcom/android/server/OnePlusExService$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/OnePlusExService;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusExService$you;->zta:Lcom/android/server/OnePlusExService;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/OnePlusExService$you;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1}, Lcom/android/server/OnePlusExService;->access$100(Lcom/android/server/OnePlusExService;)V

    iget-object p1, p0, Lcom/android/server/OnePlusExService$you;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1}, Lcom/android/server/OnePlusExService;->access$200(Lcom/android/server/OnePlusExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/OnePlusExService$you;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p0}, Lcom/android/server/OnePlusExService;->access$200(Lcom/android/server/OnePlusExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    return-void
.end method
