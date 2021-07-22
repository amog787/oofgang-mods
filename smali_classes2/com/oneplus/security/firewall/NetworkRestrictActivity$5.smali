.class Lcom/oneplus/security/firewall/NetworkRestrictActivity$5;
.super Landroid/database/ContentObserver;
.source "NetworkRestrictActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/firewall/NetworkRestrictActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/security/firewall/NetworkRestrictActivity;Landroid/os/Handler;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$5;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 236
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$5;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->access$400(Lcom/oneplus/security/firewall/NetworkRestrictActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNetworkRestrictObserver uri="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkRestrictActivity"

    invoke-static {p2, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictActivity$5;->this$0:Lcom/oneplus/security/firewall/NetworkRestrictActivity;

    const/4 p1, 0x1

    const-wide/16 v0, 0x3e8

    invoke-static {p0, p1, v0, v1}, Lcom/oneplus/security/firewall/NetworkRestrictActivity;->access$500(Lcom/oneplus/security/firewall/NetworkRestrictActivity;IJ)V

    :cond_0
    return-void
.end method
