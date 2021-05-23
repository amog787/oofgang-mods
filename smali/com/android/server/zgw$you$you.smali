.class Lcom/android/server/zgw$you$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/zgw$you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/zgw$you;


# direct methods
.method public constructor <init>(Lcom/android/server/zgw$you;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/zgw$you$you;->zta:Lcom/android/server/zgw$you;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/zgw;->tsu()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpAlarmAlignment_ALIGNMENT"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x14

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/server/zgw$you$you;->zta:Lcom/android/server/zgw$you;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/zgw$you;->zta(Lcom/android/server/zgw$you;Z)Z

    iget-object p1, p0, Lcom/android/server/zgw$you$you;->zta:Lcom/android/server/zgw$you;

    invoke-static {p1}, Lcom/android/server/zgw$you;->you(Lcom/android/server/zgw$you;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/zgw$you$you;->zta:Lcom/android/server/zgw$you;

    iget-object p0, p0, Lcom/android/server/zgw$you;->ibl:Lcom/android/server/zgw;

    invoke-static {p0}, Lcom/android/server/zgw;->sis(Lcom/android/server/zgw;)Lcom/android/server/AlarmManagerService$AmsInner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$AmsInner;->getAlarmHandler()Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/zgw$you$you;->zta:Lcom/android/server/zgw$you;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/zgw$you;->zta(Lcom/android/server/zgw$you;Z)Z

    iget-object p1, p0, Lcom/android/server/zgw$you$you;->zta:Lcom/android/server/zgw$you;

    invoke-static {p1}, Lcom/android/server/zgw$you;->you(Lcom/android/server/zgw$you;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/zgw$you$you;->zta:Lcom/android/server/zgw$you;

    invoke-static {p2}, Lcom/android/server/zgw$you;->you(Lcom/android/server/zgw$you;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/zgw$you$you;->zta:Lcom/android/server/zgw$you;

    iget-object p0, p0, Lcom/android/server/zgw$you;->ibl:Lcom/android/server/zgw;

    invoke-static {p0}, Lcom/android/server/zgw;->sis(Lcom/android/server/zgw;)Lcom/android/server/AlarmManagerService$AmsInner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$AmsInner;->getAlarmHandler()Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method
