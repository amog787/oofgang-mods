.class Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;
.super Ljava/lang/Object;
.source "UstWfcStatusTracker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/UstWfcStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "onServiceConnected"

    .line 58
    invoke-static {p1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$000(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$302(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 60
    iget-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$402(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Z)Z

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 61
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {p2}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$500(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/os/Messenger;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$300(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/os/Messenger;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "onServiceDisconnected"

    .line 71
    invoke-static {p1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$000(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$302(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 73
    iget-object p0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;->this$0:Lcom/oneplus/settings/controllers/UstWfcStatusTracker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->access$402(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Z)Z

    return-void
.end method
