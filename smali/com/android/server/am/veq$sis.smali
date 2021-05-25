.class Lcom/android/server/am/veq$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/veq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# static fields
.field public static final you:I = 0x1


# instance fields
.field final synthetic zta:Lcom/android/server/am/veq;


# direct methods
.method public constructor <init>(Lcom/android/server/am/veq;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/veq$sis;->zta:Lcom/android/server/am/veq;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/veq;->you()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TSDHandler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/am/veq;->you()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "recv EVENT_FRONT_PKG_CHANGED"

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "packagName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/veq$sis;->zta:Lcom/android/server/am/veq;

    invoke-static {p0, p1}, Lcom/android/server/am/veq;->rtg(Lcom/android/server/am/veq;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
