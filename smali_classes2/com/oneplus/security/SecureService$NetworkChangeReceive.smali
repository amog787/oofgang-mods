.class Lcom/oneplus/security/SecureService$NetworkChangeReceive;
.super Landroid/content/BroadcastReceiver;
.source "SecureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/SecureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkChangeReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/SecureService;


# direct methods
.method constructor <init>(Lcom/oneplus/security/SecureService;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/oneplus/security/SecureService$NetworkChangeReceive;->this$0:Lcom/oneplus/security/SecureService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive action:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecureService"

    invoke-static {v0, p2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 252
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 253
    iget-object p1, p0, Lcom/oneplus/security/SecureService$NetworkChangeReceive;->this$0:Lcom/oneplus/security/SecureService;

    invoke-static {p1}, Lcom/oneplus/security/SecureService;->access$300(Lcom/oneplus/security/SecureService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object p0, p0, Lcom/oneplus/security/SecureService$NetworkChangeReceive;->this$0:Lcom/oneplus/security/SecureService;

    invoke-static {p0}, Lcom/oneplus/security/SecureService;->access$300(Lcom/oneplus/security/SecureService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.ANY_DATA_STATE"

    .line 255
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 256
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oneplus.intent.action.ANY_DATA_STATE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    iget-object p0, p0, Lcom/oneplus/security/SecureService$NetworkChangeReceive;->this$0:Lcom/oneplus/security/SecureService;

    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    .line 258
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 259
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oneplus.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/oneplus/security/SecureService$NetworkChangeReceive;->this$0:Lcom/oneplus/security/SecureService;

    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
