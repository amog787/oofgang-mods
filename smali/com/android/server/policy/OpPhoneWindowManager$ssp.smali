.class Lcom/android/server/policy/OpPhoneWindowManager$ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$ssp;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ssp;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2100(Lcom/android/server/policy/OpPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ssp;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1200(Lcom/android/server/policy/OpPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ssp;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->access$2102(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPhoneWindowManager"

    const-string v1, "Back key double tap runnable perform action back."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$ssp;->zta:Lcom/android/server/policy/OpPhoneWindowManager;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    :cond_1
    return-void
.end method
