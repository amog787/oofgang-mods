.class Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WidgetViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/widget/WidgetViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultDataSimChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/widget/WidgetViewService;


# direct methods
.method constructor <init>(Lcom/oneplus/security/widget/WidgetViewService;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 625
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 626
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "WidgetViewService"

    const-string p2, "------DefaultDataSimChangedReceiver-----"

    .line 627
    invoke-static {p1, p2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-static {p1}, Lcom/oneplus/security/widget/WidgetViewService;->access$300(Lcom/oneplus/security/widget/WidgetViewService;)V

    .line 629
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;->this$0:Lcom/oneplus/security/widget/WidgetViewService;

    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->requestDataUsageUpdate()V

    :cond_0
    return-void
.end method
