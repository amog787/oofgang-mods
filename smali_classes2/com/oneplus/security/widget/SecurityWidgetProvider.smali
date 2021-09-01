.class public Lcom/oneplus/security/widget/SecurityWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SecurityWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static notifyDataUsage(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SecurityWidgetProvider"

    const-string v1, "--------sendBroadcast-----------"

    .line 100
    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.security.action.DATAUSAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x11000000

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    const-string p0, "BOUND_ON_SHELF"

    .line 87
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 89
    invoke-static {p1}, Lcom/oneplus/security/utils/FunctionUtils;->isSupportTransparent(Landroid/content/Context;)Z

    move-result p0

    const-string p2, "shelf_widget_id"

    if-eqz p0, :cond_0

    .line 90
    invoke-static {p2, p3}, Lcom/oneplus/security/utils/SharedPreferenceHelper;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 92
    invoke-static {p2, p0}, Lcom/oneplus/security/utils/SharedPreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 94
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAppWidgetOptionsChanged onShelfWidgetId :"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SecurityWidgetProvider"

    invoke-static {p2, p0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/security/widget/WidgetViewService;->startService(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2

    const-string v0, "SecurityWidgetProvider"

    const-string v1, "--------onDeleted-----------"

    .line 73
    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SecurityWidgetProvider"

    const-string v1, "--------onDisabled-----------"

    .line 79
    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/widget/WidgetViewService;->stoptService(Landroid/content/Context;)V

    .line 81
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SecurityWidgetProvider"

    const-string v1, "--------onEnabled-----------"

    .line 67
    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 36
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/SecureService;->startService(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------onReceive-----------action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecurityWidgetProvider"

    invoke-static {v2, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.oneplus.security.action.DATAUSAGE_CHANGED"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/oneplus/security/widget/SecurityWidgetProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    array-length v1, v0

    if-lez v1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/widget/WidgetViewService;->startService(Landroid/content/Context;)V

    goto :goto_1

    .line 51
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security widgets length is not > 0, widgets.length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    array-length v0, v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    const-string v0, "SecurityWidgetProvider"

    const-string v1, "--------onUpdate-----------"

    .line 59
    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/widget/WidgetViewService;->startService(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/SecureService;->startService(Landroid/content/Context;)V

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method
