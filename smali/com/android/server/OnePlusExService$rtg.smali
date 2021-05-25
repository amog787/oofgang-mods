.class Lcom/android/server/OnePlusExService$rtg;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/OnePlusExService;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusExService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/android/server/OnePlusExService;->access$1202(Z)Z

    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusExService;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_8

    new-array v1, v2, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x50f001b

    iget-object v4, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {v4}, Lcom/android/server/OnePlusExService;->access$500(Lcom/android/server/OnePlusExService;)[I

    move-result-object v4

    array-length v9, v4

    iget-object v4, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {v4}, Lcom/android/server/OnePlusExService;->access$400(Lcom/android/server/OnePlusExService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "car_charger_auto_turn_on_dnd"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {v5}, Lcom/android/server/OnePlusExService;->access$400(Lcom/android/server/OnePlusExService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "op_care_charger_auto_open_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v12, "OnePlusExService"

    if-eqz v5, :cond_5

    const-string v5, "fastcharge_status"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    const-string v7, "status"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {v6, p2}, Lcom/android/server/OnePlusExService;->access$1002(Lcom/android/server/OnePlusExService;I)I

    const/4 p2, 0x3

    if-ne v5, p2, :cond_5

    invoke-static {}, Lcom/android/server/OnePlusExService;->access$1300()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {v2}, Lcom/android/server/OnePlusExService;->access$1302(Z)Z

    const-string p2, "show car charger notification"

    invoke-static {v12, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p2}, Lcom/android/server/OnePlusExService;->access$1400(Lcom/android/server/OnePlusExService;)V

    iget-object p2, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p2, p1}, Lcom/android/server/OnePlusExService;->access$1500(Lcom/android/server/OnePlusExService;Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/server/OnePlusExService;->access$802(Lcom/android/server/OnePlusExService;Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    if-eq v4, v2, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "warp_charge"

    invoke-direct {p2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p2}, Lcom/android/server/OnePlusExService;->access$1600(Lcom/android/server/OnePlusExService;)V

    iget-object p2, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p2, p1}, Lcom/android/server/OnePlusExService;->access$1700(Lcom/android/server/OnePlusExService;Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v5, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    const/4 v6, 0x0

    const v8, 0x50f001b

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lcom/android/server/OnePlusExService;->access$900(Lcom/android/server/OnePlusExService;ILandroid/content/Context;IILandroid/app/Notification$Builder;)V

    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1, v3}, Lcom/android/server/OnePlusExService;->access$1800(Lcom/android/server/OnePlusExService;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    const/4 v6, 0x0

    invoke-static {v5}, Lcom/android/server/OnePlusExService;->access$800(Lcom/android/server/OnePlusExService;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v8, 0x50f001b

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lcom/android/server/OnePlusExService;->access$900(Lcom/android/server/OnePlusExService;ILandroid/content/Context;IILandroid/app/Notification$Builder;)V

    :goto_1
    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1, v2}, Lcom/android/server/OnePlusExService;->access$1902(Lcom/android/server/OnePlusExService;Z)Z

    if-ne v4, v2, :cond_4

    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1}, Lcom/android/server/OnePlusExService;->access$700(Lcom/android/server/OnePlusExService;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1}, Lcom/android/server/OnePlusExService;->access$2000(Lcom/android/server/OnePlusExService;)V

    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1, v2}, Lcom/android/server/OnePlusExService;->access$1800(Lcom/android/server/OnePlusExService;Z)V

    :cond_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1, v11}, Lcom/android/server/OnePlusExService;->access$2100(Lcom/android/server/OnePlusExService;Ljava/lang/String;)V

    :cond_5
    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    if-nez p1, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1}, Lcom/android/server/OnePlusExService;->access$1900(Lcom/android/server/OnePlusExService;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "power disconnected broadcast, cancel car charger notification"

    invoke-static {v12, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1}, Lcom/android/server/OnePlusExService;->access$1100(Lcom/android/server/OnePlusExService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {v4}, Lcom/android/server/OnePlusExService;->access$2200(Lcom/android/server/OnePlusExService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1}, Lcom/android/server/OnePlusExService;->access$700(Lcom/android/server/OnePlusExService;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1, v3}, Lcom/android/server/OnePlusExService;->access$1902(Lcom/android/server/OnePlusExService;Z)Z

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v2}, Lcom/android/server/OnePlusExService;->access$1302(Z)Z

    goto :goto_2

    :cond_7
    invoke-static {v3}, Lcom/android/server/OnePlusExService;->access$1302(Z)Z

    :goto_2
    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1}, Lcom/android/server/OnePlusExService;->access$2300(Lcom/android/server/OnePlusExService;)I

    move-result p1

    if-ne p1, v2, :cond_8

    new-array p1, v2, [I

    aput v2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p1}, Lcom/android/server/OnePlusExService;->access$2400(Lcom/android/server/OnePlusExService;)V

    iget-object p0, p0, Lcom/android/server/OnePlusExService$rtg;->zta:Lcom/android/server/OnePlusExService;

    invoke-static {p0, v3}, Lcom/android/server/OnePlusExService;->access$1800(Lcom/android/server/OnePlusExService;Z)V

    :cond_8
    return-void
.end method
