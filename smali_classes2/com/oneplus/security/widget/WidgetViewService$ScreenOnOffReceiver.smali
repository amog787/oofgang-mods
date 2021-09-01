.class Lcom/oneplus/security/widget/WidgetViewService$ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WidgetViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/widget/WidgetViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenOnOffReceiver"
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/security/widget/WidgetViewService;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 366
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ScreenOnOffReceiver action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WidgetViewService"

    invoke-static {v0, p2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 368
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 369
    sput-boolean p0, Lcom/oneplus/security/widget/WidgetViewService;->isScreenOn:Z

    .line 370
    invoke-static {p1}, Lcom/oneplus/security/widget/WidgetViewService;->startService(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 371
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 372
    sput-boolean p0, Lcom/oneplus/security/widget/WidgetViewService;->isScreenOn:Z

    :cond_1
    :goto_0
    return-void
.end method
