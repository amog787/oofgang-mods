.class Lcom/oneplus/android/server/bluetooth/cno$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/cno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/bluetooth/cno;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/bluetooth/cno;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/cno$zta;->zta:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "Server Socket wait accept timeout"

    const/16 v3, 0xa0

    const-string v4, "OpBluetoothStackEvent"

    if-eq v1, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unnknow message: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unnknow type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno$zta;->zta:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {p0}, Lcom/oneplus/android/server/bluetooth/cno;->kth(Lcom/oneplus/android/server/bluetooth/cno;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno$zta;->zta:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/bluetooth/cno;->wtn(Lcom/oneplus/android/server/bluetooth/cno;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno$zta;->zta:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/bluetooth/cno;->igw(Lcom/oneplus/android/server/bluetooth/cno;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno$zta;->zta:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/bluetooth/cno;->bio(Lcom/oneplus/android/server/bluetooth/cno;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno$zta;->zta:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {p0}, Lcom/oneplus/android/server/bluetooth/cno;->kth(Lcom/oneplus/android/server/bluetooth/cno;)V

    return-void
.end method
