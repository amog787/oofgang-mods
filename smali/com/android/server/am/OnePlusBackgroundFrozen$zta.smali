.class Lcom/android/server/am/OnePlusBackgroundFrozen$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusBackgroundFrozen;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$zta;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p1

    const-string v0, "OPBF"

    if-nez p1, :cond_0

    const-string p0, "# eventChangeReceiver # onReceive # sInstance is null, return"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "# eventChangeReceiver # onReceive # intent is null, return"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# eventChangeReceiver # onReceive # action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$zta;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->G(Lcom/android/server/am/OnePlusBackgroundFrozen;Z)V

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$zta;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->G(Lcom/android/server/am/OnePlusBackgroundFrozen;Z)V

    :cond_3
    :goto_1
    return-void
.end method
