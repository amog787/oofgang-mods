.class Lcom/android/server/policy/OpQuickPay$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpQuickPay;->notifyAppLaunchFailedLw(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/policy/OpQuickPay;

.field final synthetic zta:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpQuickPay;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpQuickPay$zta;->you:Lcom/android/server/policy/OpQuickPay;

    iput-object p2, p0, Lcom/android/server/policy/OpQuickPay$zta;->zta:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/OpQuickPay$zta;->you:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OpQuickPay$zta;->you:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OpQuickPay$zta;->you:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OpQuickPay$zta;->you:Lcom/android/server/policy/OpQuickPay;

    iget-object v1, v1, Lcom/android/server/policy/OpQuickPay;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/policy/OpQuickPay$zta;->you:Lcom/android/server/policy/OpQuickPay;

    iget-object v2, v2, Lcom/android/server/policy/OpQuickPay;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/policy/OpQuickPay;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyAppLaunchFailedLw: killApplicationProcess failed "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/OpQuickPay$zta;->you:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay$zta;->zta:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
