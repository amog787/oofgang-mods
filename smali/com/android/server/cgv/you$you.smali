.class Lcom/android/server/cgv/you$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cgv/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/cgv/you;


# direct methods
.method constructor <init>(Lcom/android/server/cgv/you;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cgv/you$you;->zta:Lcom/android/server/cgv/you;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x6

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/cgv/you$you;->zta:Lcom/android/server/cgv/you;

    invoke-static {p0}, Lcom/android/server/cgv/you;->you(Lcom/android/server/cgv/you;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
