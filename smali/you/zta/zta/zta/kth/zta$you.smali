.class Lyou/zta/zta/zta/kth/zta$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/kth/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lyou/zta/zta/zta/kth/zta;


# direct methods
.method constructor <init>(Lyou/zta/zta/zta/kth/zta;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/kth/zta$you;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lyou/zta/zta/zta/kth/zta$you;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {v0}, Lyou/zta/zta/zta/kth/zta;->kth(Lyou/zta/zta/zta/kth/zta;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p0, Lyou/zta/zta/zta/kth/zta$you;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {p1, v2}, Lyou/zta/zta/zta/kth/zta;->bio(Lyou/zta/zta/zta/kth/zta;Z)Z

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lyou/zta/zta/zta/kth/zta$you;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {p1, v3}, Lyou/zta/zta/zta/kth/zta;->bio(Lyou/zta/zta/zta/kth/zta;Z)Z

    goto :goto_0

    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    sget-object p2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lyou/zta/zta/zta/kth/zta$you;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {p1, v2}, Lyou/zta/zta/zta/kth/zta;->igw(Lyou/zta/zta/zta/kth/zta;Z)Z

    goto :goto_0

    :cond_2
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lyou/zta/zta/zta/kth/zta$you;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {p1, v3}, Lyou/zta/zta/zta/kth/zta;->igw(Lyou/zta/zta/zta/kth/zta;Z)Z

    :cond_3
    :goto_0
    iget-object p0, p0, Lyou/zta/zta/zta/kth/zta$you;->zta:Lyou/zta/zta/zta/kth/zta;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lyou/zta/zta/zta/kth/zta;->wtn(Lyou/zta/zta/zta/kth/zta;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
