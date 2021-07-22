.class Lcom/oneplus/settings/ui/OPProgressDialog$1;
.super Landroid/os/Handler;
.source "OPProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPProgressDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPProgressDialog;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPProgressDialog;->access$000(Lcom/oneplus/settings/ui/OPProgressDialog;)Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 37
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPProgressDialog;->access$000(Lcom/oneplus/settings/ui/OPProgressDialog;)Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-interface {p1, v0}, Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;->onTimeOut(Lcom/oneplus/settings/ui/OPProgressDialog;)V

    .line 38
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/oneplus/settings/ui/OPProgressDialog;

    .line 33
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method
