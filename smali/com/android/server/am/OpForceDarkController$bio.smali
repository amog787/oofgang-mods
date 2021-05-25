.class Lcom/android/server/am/OpForceDarkController$bio;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OpForceDarkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "bio"
.end annotation


# static fields
.field static final cno:Ljava/lang/String; = "uid"

.field static final rtg:Ljava/lang/String; = "pkgName"

.field static final sis:I = 0x3e9

.field static final ssp:Ljava/lang/String; = "pkgChangeAction"

.field static final tsu:I = 0x3ea

.field static final you:I = 0x3e8


# instance fields
.field final synthetic zta:Lcom/android/server/am/OpForceDarkController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController$bio;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController$bio;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p0, p1}, Lcom/android/server/am/OpForceDarkController;->access$1400(Lcom/android/server/am/OpForceDarkController;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController$bio;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p0}, Lcom/android/server/am/OpForceDarkController;->access$1300(Lcom/android/server/am/OpForceDarkController;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$bio;->zta:Lcom/android/server/am/OpForceDarkController;

    const-string v0, "OnePlusForceDarkConfig"

    invoke-static {p1, v0}, Lcom/android/server/am/OpForceDarkController;->access$1100(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$bio;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$bio;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController$bio;->zta:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p0}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
