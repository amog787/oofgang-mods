.class Lcom/android/server/am/oif$kth;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/oif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "kth"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/oif;


# direct methods
.method private constructor <init>(Lcom/android/server/am/oif;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/oif$kth;->zta:Lcom/android/server/am/oif;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/oif;Lcom/android/server/am/oif$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/oif$kth;-><init>(Lcom/android/server/am/oif;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/server/am/oif$kth;->zta:Lcom/android/server/am/oif;

    invoke-static {p1}, Lcom/android/server/am/oif;->rtg(Lcom/android/server/am/oif;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1e70

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/oif$kth;->zta:Lcom/android/server/am/oif;

    invoke-static {p0}, Lcom/android/server/am/oif;->rtg(Lcom/android/server/am/oif;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/oif$kth;->zta:Lcom/android/server/am/oif;

    invoke-static {p1}, Lcom/android/server/am/oif;->rtg(Lcom/android/server/am/oif;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1e73

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
