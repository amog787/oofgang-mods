.class Lcom/android/server/am/OnePlusBackgroundFrozen$dma;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dma"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusBackgroundFrozen;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$dma;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "UNDATE_SYSTEMUI_VISIBILITY_TIMEOUT"

    goto :goto_0

    :sswitch_1
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "NOTIFY_CHANGE_TIMEOUT"

    goto :goto_0

    :sswitch_2
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "ATTACH_APPLICATION_LOCKED_TIMEOUT"

    goto :goto_0

    :sswitch_3
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "BIND_SERVICE_LOCKED_TIMEOUT"

    goto :goto_0

    :sswitch_4
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPATCH_RESIZED_TIMEOUT"

    goto :goto_0

    :sswitch_5
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPATCH_APP_VISIBILITY_TIMEOUT"

    goto :goto_0

    :sswitch_6
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPLAY_EVENT_LOCAL_TIMEOUT"

    goto :goto_0

    :sswitch_7
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPLAY_EVENT_TIMEOUT"

    goto :goto_0

    :sswitch_8
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "INPUT_DEVICES_CHANGE_TIMEOUT"

    goto :goto_0

    :sswitch_9
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "PUBLISH_SERVICE_TIMEOUT"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->a(IILjava/lang/String;)V

    goto :goto_1

    :sswitch_a
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$dma;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b(Lcom/android/server/am/OnePlusBackgroundFrozen;I)I

    move-result p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v0, :cond_0

    iget p0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p0}, Landroid/os/Process;->killProcessGroup(II)I

    :cond_0
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x2328 -> :sswitch_9
        0x238c -> :sswitch_8
        0x23f0 -> :sswitch_7
        0x2422 -> :sswitch_6
        0x2454 -> :sswitch_5
        0x24b8 -> :sswitch_4
        0x251c -> :sswitch_3
        0x2580 -> :sswitch_2
        0x25e4 -> :sswitch_1
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method
