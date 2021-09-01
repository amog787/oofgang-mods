.class Lcom/oneplus/security/firewall/NetworkRestrictActivity$AppAddOrRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkRestrictActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/firewall/NetworkRestrictActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAddOrRemovedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$AppAddOrRemovedReceiver;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

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

    const-string v0, "AppAddOrRemovedReceiver action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkRestrictActivity"

    invoke-static {v0, p2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.oneplus.security.ACTION_REFRESH_APP_LIST"

    .line 252
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$AppAddOrRemovedReceiver;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    const/4 p1, 0x1

    const-wide/16 v0, 0x3e8

    invoke-static {p0, p1, v0, v1}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->access$500(Lcom/oneplus/security/firewall/NetworkRestrictActivity;IJ)V

    :cond_0
    return-void
.end method
