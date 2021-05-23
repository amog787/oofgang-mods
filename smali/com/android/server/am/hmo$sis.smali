.class Lcom/android/server/am/hmo$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/hmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/hmo;


# direct methods
.method constructor <init>(Lcom/android/server/am/hmo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/hmo$sis;->zta:Lcom/android/server/am/hmo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/am/hmo$sis;->zta:Lcom/android/server/am/hmo;

    iget-boolean p1, p1, Lcom/android/server/am/hmo;->zta:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# mPackageReceiver # onReceive # action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const-string v3, " uid:"

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/hmo$sis;->zta:Lcom/android/server/am/hmo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# mPackageReceiver # onReceive # mPkgMap replaced "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/server/am/hmo;->gck(II)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_0
    sget-object p2, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/android/server/am/hmo;->gck(II)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    sget-object p2, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/android/server/am/hmo;->gck(II)I

    move-result p0

    invoke-virtual {p2, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_3
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/hmo$sis;->zta:Lcom/android/server/am/hmo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# mPackageReceiver # onReceive # mPkgMap added "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/server/am/hmo;->gck(II)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method
