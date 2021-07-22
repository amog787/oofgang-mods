.class Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WidgetViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/widget/WidgetViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/widget/WidgetViewService;


# direct methods
.method constructor <init>(Lcom/oneplus/security/widget/WidgetViewService;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 668
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 669
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "level"

    .line 670
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "scale"

    const/16 v1, 0x64

    .line 671
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "status"

    .line 672
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    mul-int/2addr p1, v1

    .line 673
    div-int/2addr p1, v0

    .line 674
    iget-object p2, p0, Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-static {p2}, Lcom/oneplus/security/widget/WidgetViewService;->access$400(Lcom/oneplus/security/widget/WidgetViewService;)I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    .line 677
    :cond_0
    iget-object p2, p0, Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-static {p2, p1}, Lcom/oneplus/security/widget/WidgetViewService;->access$402(Lcom/oneplus/security/widget/WidgetViewService;I)I

    .line 678
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "------BatteryReceiver------power="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WidgetViewService"

    invoke-static {v0, p2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    new-instance p2, Lcom/oneplus/security/widget/WidgetData;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/security/widget/WidgetViewService;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lcom/oneplus/security/widget/WidgetData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    const/4 p1, 0x3

    const-wide/16 v0, 0x3e8

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oneplus/security/widget/WidgetViewService;->access$200(Lcom/oneplus/security/widget/WidgetViewService;ILcom/oneplus/security/widget/WidgetData;J)V

    :cond_1
    return-void
.end method
