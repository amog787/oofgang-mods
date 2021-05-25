.class Lcom/android/server/oxb/you$rtg;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oxb/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/oxb/you;


# direct methods
.method constructor <init>(Lcom/android/server/oxb/you;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oxb/you$rtg;->zta:Lcom/android/server/oxb/you;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string p1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "User switch => check again."

    invoke-static {p1}, Lcom/android/server/oxb/you;->j(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/oxb/you$rtg;->zta:Lcom/android/server/oxb/you;

    invoke-static {p1}, Lcom/android/server/oxb/you;->oxb(Lcom/android/server/oxb/you;)Lcom/android/server/oxb/you$kth;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/oxb/you$rtg;->zta:Lcom/android/server/oxb/you;

    invoke-static {p0}, Lcom/android/server/oxb/you;->gwm(Lcom/android/server/oxb/you;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
