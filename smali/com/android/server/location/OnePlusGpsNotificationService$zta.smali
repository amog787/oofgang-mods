.class Lcom/android/server/location/OnePlusGpsNotificationService$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/OnePlusGpsNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/location/OnePlusGpsNotificationService;


# direct methods
.method constructor <init>(Lcom/android/server/location/OnePlusGpsNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/OnePlusGpsNotificationService$zta;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/OnePlusGpsNotificationService$zta;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-static {v0}, Lcom/android/server/location/OnePlusGpsNotificationService;->access$000(Lcom/android/server/location/OnePlusGpsNotificationService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "forcePackageName"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-boolean p2, Lcom/android/server/location/OnePlusGpsNotificationService;->DEBUG:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/location/OnePlusGpsNotificationService;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReceiver packageName  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/OnePlusGpsNotificationService$zta;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-static {p0}, Lcom/android/server/location/OnePlusGpsNotificationService;->access$200(Lcom/android/server/location/OnePlusGpsNotificationService;)Landroid/app/ActivityManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
