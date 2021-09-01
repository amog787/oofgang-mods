.class Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$5;
.super Ljava/lang/Object;
.source "TrafficUsageAlarmIntentService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->showDataWarnAlertDialog()V
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

    .line 352
    iput-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$5;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 356
    iget-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$5;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$000(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$5;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$100(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)I

    move-result p0

    const/4 p2, 0x1

    invoke-static {p1, p2, p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setHasDataWarnAlerted(Landroid/content/Context;ZI)V

    return-void
.end method
