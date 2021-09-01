.class Lcom/oneplus/security/SecureService$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "SecureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/SecureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/SecureService;


# direct methods
.method constructor <init>(Lcom/oneplus/security/SecureService;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/oneplus/security/SecureService$1;->this$0:Lcom/oneplus/security/SecureService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "limitReached........limitName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", iface:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecureService"

    invoke-static {v0, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rmnet_data"

    .line 191
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/oneplus/security/SecureService$1;->this$0:Lcom/oneplus/security/SecureService;

    invoke-static {p1}, Lcom/oneplus/security/SecureService;->access$200(Lcom/oneplus/security/SecureService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->shouldStartDataWarnMonitorService(Landroid/content/Context;)Z

    move-result p1

    .line 193
    iget-object p2, p0, Lcom/oneplus/security/SecureService$1;->this$0:Lcom/oneplus/security/SecureService;

    invoke-static {p2}, Lcom/oneplus/security/SecureService;->access$200(Lcom/oneplus/security/SecureService;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->shouldStartRunningOutMonitorService(Landroid/content/Context;)Z

    move-result p2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/oneplus/security/SecureService$1;->this$0:Lcom/oneplus/security/SecureService;

    invoke-static {p0}, Lcom/oneplus/security/SecureService;->access$200(Lcom/oneplus/security/SecureService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->startService(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
