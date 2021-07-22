.class Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$4;
.super Ljava/lang/Object;
.source "TrafficUsageAlarmIntentService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->showPkgRunningOutAlertDialog()V
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

    .line 322
    iput-object p1, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$4;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 325
    iget-object p2, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$4;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$000(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService$4;->this$0:Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;

    invoke-static {p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->access$100(Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {p2, v0, p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setHasAlertedTrafficRunningOut(Landroid/content/Context;ZI)V

    .line 326
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
