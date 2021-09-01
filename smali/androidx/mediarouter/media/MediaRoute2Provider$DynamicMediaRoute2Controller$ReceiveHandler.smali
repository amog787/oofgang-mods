.class Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller$ReceiveHandler;
.super Landroid/os/Handler;
.source "MediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;)V
    .locals 0

    .line 343
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller$ReceiveHandler;->this$1:Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    .line 347
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 348
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 349
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 350
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    .line 352
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller$ReceiveHandler;->this$1:Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;

    iget-object v3, v3, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    if-nez v3, :cond_0

    const-string p0, "MR2Provider"

    const-string p1, "Pending callback not found for control request."

    .line 354
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 357
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller$ReceiveHandler;->this$1:Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    const/4 p0, 0x3

    if-eq v0, p0, :cond_3

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const-string p0, "error"

    .line 364
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 365
    :goto_0
    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v3, p0, v2}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 361
    :cond_3
    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onResult(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method
