.class Lcom/oneplus/settings/OPThemeService$2;
.super Landroid/content/BroadcastReceiver;
.source "OPThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPThemeService;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPThemeService;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/oneplus/settings/OPThemeService$2;->this$0:Lcom/oneplus/settings/OPThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.settings.oneplus_theme_ready"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive arg1.getAction() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPThemeService"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Lcom/oneplus/settings/OPThemeService$2;->this$0:Lcom/oneplus/settings/OPThemeService;

    invoke-static {p1}, Lcom/oneplus/settings/OPThemeService;->access$100(Lcom/oneplus/settings/OPThemeService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object p1, p0, Lcom/oneplus/settings/OPThemeService$2;->this$0:Lcom/oneplus/settings/OPThemeService;

    invoke-static {p1}, Lcom/oneplus/settings/OPThemeService;->access$100(Lcom/oneplus/settings/OPThemeService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/OPThemeService$2;->this$0:Lcom/oneplus/settings/OPThemeService;

    invoke-static {p0}, Lcom/oneplus/settings/OPThemeService;->access$100(Lcom/oneplus/settings/OPThemeService;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
