.class Lcom/android/server/am/OnePlusBGController$ywr;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ywr"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$ywr;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$sis;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController$ywr;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    const-string p1, "plugged"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$ywr;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->s(Lcom/android/server/am/OnePlusBGController;)Z

    move-result p2

    if-eq p2, p1, :cond_5

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$ywr;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p2, p1}, Lcom/android/server/am/OnePlusBGController;->t(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Update mIsCharging to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$ywr;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->s(Lcom/android/server/am/OnePlusBGController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$ywr;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->s(Lcom/android/server/am/OnePlusBGController;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$ywr;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->G(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/OnePlusBGController$ibl;

    move-result-object p1

    const p2, 0x101df

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    goto/16 :goto_2

    :cond_2
    const-string v0, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "state"

    invoke-virtual {p2, p0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/16 p1, 0x1e6c

    if-ne p0, p1, :cond_5

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->bio()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "User is waking up, but we start to align OPCS module reset time, so do nothing at this moment."

    goto :goto_1

    :cond_3
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_PACKAGE_REMOVED, getEncodedSchemeSpecificPart= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_PACKAGE_REPLACED, getEncodedSchemeSpecificPart= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$ywr;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->G(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/OnePlusBGController$ibl;

    move-result-object p2

    const v0, 0x101dd

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :goto_2
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$ywr;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->G(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/OnePlusBGController$ibl;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_3
    return-void
.end method
