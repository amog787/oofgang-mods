.class Lcom/oneplus/security/firewall/OPProgressDialog$2;
.super Ljava/util/TimerTask;
.source "OPProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/firewall/OPProgressDialog;->onStart()V
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

    .line 161
    iput-object p1, p0, Lcom/oneplus/security/firewall/OPProgressDialog$2;->this$0:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "OPProgressDialog"

    const-string v1, "timerOutTast......"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p0, p0, Lcom/oneplus/security/firewall/OPProgressDialog$2;->this$0:Lcom/oneplus/security/firewall/OPProgressDialog;

    invoke-static {p0}, Lcom/oneplus/security/firewall/OPProgressDialog;->access$200(Lcom/oneplus/security/firewall/OPProgressDialog;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
