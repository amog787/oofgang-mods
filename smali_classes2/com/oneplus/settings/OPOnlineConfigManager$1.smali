.class Lcom/oneplus/settings/OPOnlineConfigManager$1;
.super Landroid/os/Handler;
.source "OPOnlineConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPOnlineConfigManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPOnlineConfigManager;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPOnlineConfigManager;Landroid/os/Looper;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "OPOnlineConfigManager"

    const-string v1, "settings handleMessage...."

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {v0}, Lcom/oneplus/settings/OPOnlineConfigManager;->access$000(Lcom/oneplus/settings/OPOnlineConfigManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SlaOnlineConfig"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {p0, p1}, Lcom/oneplus/settings/OPOnlineConfigManager;->access$200(Lcom/oneplus/settings/OPOnlineConfigManager;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {v0}, Lcom/oneplus/settings/OPOnlineConfigManager;->access$000(Lcom/oneplus/settings/OPOnlineConfigManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ROM_APP_OPSettings"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    .line 72
    iget-object p0, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {p0, p1}, Lcom/oneplus/settings/OPOnlineConfigManager;->access$100(Lcom/oneplus/settings/OPOnlineConfigManager;Lorg/json/JSONArray;)V

    :goto_0
    return-void
.end method
