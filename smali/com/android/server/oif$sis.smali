.class Lcom/android/server/oif$sis;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/oif;


# direct methods
.method public constructor <init>(Lcom/android/server/oif;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9

    const-string p1, "charging_guarder_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "OnePlusChargingGuarder"

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->vdb(Lcom/android/server/oif;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/oif;->sis(Lcom/android/server/oif;I)I

    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->zta(Lcom/android/server/oif;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->zta(Lcom/android/server/oif;)I

    move-result p1

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v4}, Lcom/android/server/oif;->zta(Lcom/android/server/oif;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "switch"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v4}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v5}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v0, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->zta(Lcom/android/server/oif;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->zta(Lcom/android/server/oif;)I

    move-result p1

    if-ne p1, v3, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-virtual {p1}, Lcom/android/server/oif;->o()V

    :cond_3
    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->d(Lcom/android/server/oif;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "reverse_wireless_charging_status"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x11

    const/16 v5, 0xc

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->vdb(Lcom/android/server/oif;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object v0

    const/16 v7, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v7, 0xbb8

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_0
    const-string p1, "reverse_wireless_disable_reason"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "temp_over_heat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v6

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    const-string v0, "low_power"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reverseChargeDisableReason:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object p1

    const/16 v0, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    const-string p1, "bedtime_mode_auto_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    const-string v2, "opcg_recover_charge_data"

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v0, v3, v4}, Lcom/android/server/oif;->g(Lcom/android/server/oif;J)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v7}, Lcom/android/server/oif;->f(Lcom/android/server/oif;)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v7}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "/proc/wireless/quiet_mode"

    invoke-static {p1, v0, v6}, Lcom/android/server/oif;->h(Lcom/android/server/oif;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_a
    const-string p1, "bedtime_mode_custom_start_time"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "bedtime_mode_custom_end_time"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    iget-object p1, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p1, v3, v4}, Lcom/android/server/oif;->g(Lcom/android/server/oif;J)J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p2}, Lcom/android/server/oif;->f(Lcom/android/server/oif;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p2}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/server/oif$sis;->zta:Lcom/android/server/oif;

    invoke-static {p0}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_c
    return-void
.end method
