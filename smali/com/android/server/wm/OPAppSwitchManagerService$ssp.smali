.class Lcom/android/server/wm/OPAppSwitchManagerService$ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OPAppSwitchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ssp"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/OPAppSwitchManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/OPAppSwitchManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$ssp;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/OPAppSwitchManagerService$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OPAppSwitchManagerService$ssp;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantServiceConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPInstantAppDeviceManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$ssp;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p0, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$302(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result v0

    const-string v1, "OPInstantAppDeviceManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstantServiceConnection, disconnected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$ssp;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$302(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "instant service is died, bind again from losing connection -> rebind it in 1"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$ssp;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$500(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$ssp;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$500(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
