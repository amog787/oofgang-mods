.class Lcom/android/server/wm/OPAppSwitchManagerService$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OPAppSwitchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/OPAppSwitchManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OPAppSwitchManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$zta;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "OPAppSwitchManagerService"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "keeps opos service alive[screen]"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService$zta;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$100(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "opos service is still alive[screen]"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService$zta;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    const-string v0, "com.opos.ads"

    invoke-static {p2, p1, v0}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$200(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "opos service is died, bind again[screen]"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$zta;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposService()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$zta;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$300(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/os/IBinder;

    move-result-object p1

    const-string p2, "OPInstantAppDeviceManagerService"

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "instant service is still alive[screen]"

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "instant service is died, bind again[screen]"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$zta;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantService()V

    :cond_6
    :goto_1
    return-void
.end method
