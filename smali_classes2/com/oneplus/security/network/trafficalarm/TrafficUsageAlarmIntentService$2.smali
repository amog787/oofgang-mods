.class Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;
.super Ljava/lang/Object;
.source "TrafficUsageAlarmIntentService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->showPkgRunningOutAutoCloseAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 272
    iget-object p2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$000(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$100(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p2, v1, v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setHasAlertedTrafficRunningOut(Landroid/content/Context;ZI)V

    .line 279
    iget-object p2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$100(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)I

    move-result p2

    invoke-static {p2}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p2

    invoke-static {p2}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object p2

    .line 280
    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$000(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {v2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$100(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setDataTotalState(Landroid/content/Context;ZI)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$200(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)Lcom/oneplus/security/network/NetworkPolicyEditor;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/oneplus/security/network/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const-string p2, "setPolicyLimitBytes "

    const-string v0, "setPolicyLimitBytes:4 "

    .line 282
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$2;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$300(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->setDataEnabled(Z)V

    .line 286
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
