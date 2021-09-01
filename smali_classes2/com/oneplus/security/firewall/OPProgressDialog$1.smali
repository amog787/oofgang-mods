.class Lcom/oneplus/security/firewall/OPProgressDialog$1;
.super Landroid/os/Handler;
.source "OPProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/firewall/OPProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/firewall/OPProgressDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/OPProgressDialog;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/oneplus/security/firewall/OPProgressDialog$1;->this$0:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/security/firewall/OPProgressDialog;

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/security/firewall/OPProgressDialog;->dismiss()V

    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/oneplus/security/firewall/OPProgressDialog$1;->this$0:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-static {p1}, Lcom/oneplus/security/firewall/OPProgressDialog;->access$100(Lcom/oneplus/security/firewall/OPProgressDialog;)Lcom/oneplus/security/firewall/OPProgressDialog$OnTimeOutListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 51
    iget-object p1, p0, Lcom/oneplus/security/firewall/OPProgressDialog$1;->this$0:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-static {p1}, Lcom/oneplus/security/firewall/OPProgressDialog;->access$100(Lcom/oneplus/security/firewall/OPProgressDialog;)Lcom/oneplus/security/firewall/OPProgressDialog$OnTimeOutListener;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/security/firewall/OPProgressDialog$1;->this$0:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-interface {p1, v0}, Lcom/oneplus/security/firewall/OPProgressDialog$OnTimeOutListener;->onTimeOut(Lcom/oneplus/security/firewall/OPProgressDialog;)V

    .line 52
    iget-object p0, p0, Lcom/oneplus/security/firewall/OPProgressDialog$1;->this$0:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-virtual {p0}, Lcom/oneplus/security/firewall/OPProgressDialog;->dismiss()V

    goto :goto_0

    .line 41
    :cond_2
    iget-object p0, p0, Lcom/oneplus/security/firewall/OPProgressDialog$1;->this$0:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/oneplus/security/firewall/OPProgressDialog;->access$002(Lcom/oneplus/security/firewall/OPProgressDialog;J)J

    .line 42
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/security/firewall/OPProgressDialog;

    .line 43
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method
