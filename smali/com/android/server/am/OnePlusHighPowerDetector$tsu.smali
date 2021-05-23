.class Lcom/android/server/am/OnePlusHighPowerDetector$tsu;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] onChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selfChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OHPD"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ohpd_force_stop_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-object v1, p2, Lcom/android/server/am/OnePlusHighPowerDetector;->k:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p2, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Update mForceStopFetureEnabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget p2, p2, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", try to cancel both notifications"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p1

    const-string v2, "android"

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->gck()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x33954b9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-object p2, p2, Lcom/android/server/am/OnePlusHighPowerDetector;->f:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;

    const-string v2, "android"

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->gck()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x33954c1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-object v7, p1, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "[BgDetect] Error when cancel both notification"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->zta()V

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p2, 0x3

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector$dma;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JI)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    :cond_1
    :goto_1
    return-void
.end method
