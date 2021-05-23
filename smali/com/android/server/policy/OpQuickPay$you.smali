.class Lcom/android/server/policy/OpQuickPay$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpQuickPay;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
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

    iput-object p1, p0, Lcom/android/server/policy/OpQuickPay$you;->you:Lcom/android/server/policy/OpQuickPay;

    iput-object p2, p0, Lcom/android/server/policy/OpQuickPay$you;->zta:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/server/policy/OpQuickPay;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FocusWindow pid changed, restart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OpQuickPay$you;->zta:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/OpQuickPay$you;->you:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay$you;->zta:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
