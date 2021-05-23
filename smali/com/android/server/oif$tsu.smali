.class Lcom/android/server/oif$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# static fields
.field public static final bio:I = 0x7

.field public static final bvj:I = 0xf

.field public static final cno:I = 0x5

.field public static final dma:I = 0xb

.field public static final gck:I = 0xa

.field public static final gwm:I = 0x11

.field public static final ibl:I = 0x10

.field public static final igw:I = 0x8

.field public static final kth:I = 0x6

.field public static final oif:I = 0xe

.field public static final qbh:I = 0xd

.field public static final rtg:I = 0x3

.field public static final sis:I = 0x1

.field public static final ssp:I = 0x4

.field public static final tsu:I = 0x2

.field public static final wtn:I = 0x9

.field public static final you:I = 0x0

.field public static final ywr:I = 0xc


# instance fields
.field final synthetic zta:Lcom/android/server/oif;


# direct methods
.method constructor <init>(Lcom/android/server/oif;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    const-string v7, "reverse_charge_failed"

    const-string v9, "bedtime_mode_custom_end_time"

    const-string v10, "bedtime_mode_custom_start_time"

    const-string v11, "bedtime_mode_auto_mode"

    const/4 v14, 0x4

    const-wide/16 v3, 0x0

    const-string v15, "NYNCG4I0TI"

    const-string v13, "appid"

    const-string v6, "/proc/wireless/quiet_mode"

    const/4 v8, 0x0

    const-string v12, "OnePlusChargingGuarder"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->kth(Lcom/android/server/oif;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "reverse_charge_failed:2"

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0, v12, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_d

    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "reverse_charge"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reverse_charge:"

    goto :goto_0

    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reverse_charge_failed:"

    goto :goto_0

    :pswitch_3
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    iget-object v1, v1, Lcom/android/server/oif;->qbh:Landroid/os/BatteryManager;

    invoke-virtual {v1, v14}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "manual_bedtime_off"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manual_bedtime_off:"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v12, v3, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_d

    :pswitch_4
    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->ivd(Lcom/android/server/oif;)V

    goto/16 :goto_d

    :pswitch_5
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "android"

    const/4 v4, 0x0

    const v5, 0x33954bd

    const/4 v6, -0x1

    invoke-interface/range {v1 .. v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel notification exception:"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :pswitch_6
    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->qeg(Lcom/android/server/oif;)Landroid/app/Notification;

    move-result-object v6

    if-eqz v6, :cond_19

    :try_start_1
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "android"

    const/4 v4, 0x0

    const v5, 0x33954bd

    const/4 v7, -0x1

    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_d

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_6

    :pswitch_7
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v11, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v10, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v9, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz v1, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v13, 0xc

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v14, 0xd

    invoke-virtual {v1, v14}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v9, v9, 0xe10

    const/16 v14, 0x3c

    mul-int/2addr v13, v14

    add-int/2addr v9, v13

    add-int/2addr v9, v1

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v13, v9

    cmp-long v1, v10, v2

    if-lez v1, :cond_0

    cmp-long v9, v13, v2

    if-gez v9, :cond_0

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v9

    const-wide/16 v13, -0x1

    invoke-virtual {v9, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v9

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v9

    :goto_2
    const-wide/16 v13, 0x3e8

    div-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v10

    div-long/2addr v2, v13

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    if-lez v1, :cond_1

    const-wide/16 v13, 0x1

    invoke-virtual {v9, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_3

    :cond_1
    invoke-static {v9, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    :goto_3
    invoke-static {v9, v10}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v13

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[quiet mode]sleepStart="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", sleepEnd="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", mContinueCharingTime="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    move-object/from16 v16, v9

    invoke-static {v15}, Lcom/android/server/oif;->f(Lcom/android/server/oif;)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v8}, Lcom/android/server/oif;->bud(Lcom/android/server/oif;)Landroid/app/AlarmManager;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v8}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v9

    const-string v11, "alarm"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    invoke-static {v8, v9}, Lcom/android/server/oif;->les(Lcom/android/server/oif;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    :cond_2
    cmp-long v8, v13, v4

    if-gez v8, :cond_4

    cmp-long v9, v4, v1

    if-gez v9, :cond_4

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->f(Lcom/android/server/oif;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v5}, Lcom/android/server/oif;->you(Lcom/android/server/oif;)J

    move-result-wide v8

    add-long/2addr v3, v8

    cmp-long v3, v13, v3

    if-lez v3, :cond_3

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v6}, Lcom/android/server/oif;->h(Lcom/android/server/oif;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v3

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v3, v6}, Lcom/android/server/oif;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oneplus.chargingguarder.close_quietmode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v4}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->bud(Lcom/android/server/oif;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set a alarm to close quiet mode in "

    goto/16 :goto_5

    :cond_4
    if-ltz v8, :cond_5

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/android/server/oif;->h(Lcom/android/server/oif;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oneplus.chargingguarder.open_quietmode"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->bud(Lcom/android/server/oif;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v4, v13, v14, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set a alarm to open quiet mode in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_5
    cmp-long v1, v1, v4

    if-gtz v1, :cond_19

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v6}, Lcom/android/server/oif;->h(Lcom/android/server/oif;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    move-object/from16 v9, v16

    invoke-virtual {v9, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {v1, v10}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oneplus.chargingguarder.open_quietmode"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v4}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->bud(Lcom/android/server/oif;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set a alarm to open quiet mode in "

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_4

    :pswitch_8
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->fto(Lcom/android/server/oif;)Lcom/android/server/oif$you;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->lqr(Lcom/android/server/oif;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->vdb(Lcom/android/server/oif;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "charging_guarder_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->veq(Lcom/android/server/oif;)Lcom/android/server/oif$sis;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->d(Lcom/android/server/oif;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->vdb(Lcom/android/server/oif;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->veq(Lcom/android/server/oif;)Lcom/android/server/oif$sis;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->vdb(Lcom/android/server/oif;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->veq(Lcom/android/server/oif;)Lcom/android/server/oif$sis;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->vdb(Lcom/android/server/oif;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->veq(Lcom/android/server/oif;)Lcom/android/server/oif$sis;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->vdb(Lcom/android/server/oif;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reverse_wireless_charging_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->veq(Lcom/android/server/oif;)Lcom/android/server/oif$sis;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->vdb(Lcom/android/server/oif;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reverse_wireless_disable_reason"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->veq(Lcom/android/server/oif;)Lcom/android/server/oif$sis;

    move-result-object v0

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_d

    :pswitch_9
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/oif$rtg;->sis:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "total_connected_duration_secs"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/oif$rtg;->tsu:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "total_suspended_duration_secs"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->zta(Lcom/android/server/oif;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "optimized_charging"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v3}, Lcom/android/server/oif;->q()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "full_charge_capacity"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/oif$rtg;->rtg:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "totalSusConChargingDurSecs"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/server/oif$rtg;->ssp:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "totalSusDisconnectedDurSecs"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0xee

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v3}, Lcom/android/server/oif;->p()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dual_cell_voltage_diff"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->ire(Lcom/android/server/oif;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wireless_charging_type"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->oxb(Lcom/android/server/oif;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "unaligned_charging"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->ibl(Lcom/android/server/oif;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "total_charging"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wireless_charging_type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v4}, Lcom/android/server/oif;->ire(Lcom/android/server/oif;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", unaligned_charging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v4}, Lcom/android/server/oif;->oxb(Lcom/android/server/oif;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", total_charging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v4}, Lcom/android/server/oif;->ibl(Lcom/android/server/oif;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/server/oif;->hmo(Lcom/android/server/oif;I)I

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/oif;->cjf(Lcom/android/server/oif;I)I

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3, v4}, Lcom/android/server/oif;->gwm(Lcom/android/server/oif;I)I

    iget-object v3, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v3}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v4}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v12, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oif$rtg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", optimized_charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->zta(Lcom/android/server/oif;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/oif$rtg;->ssp()V

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v0}, Lcom/android/server/oif;->A()V

    goto/16 :goto_d

    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0, v1}, Lcom/android/server/oif;->vdw(Lcom/android/server/oif;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v7

    if-eqz v7, :cond_19

    :try_start_2
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    const-string v3, "android"

    const-string v4, "android"

    const/4 v5, 0x0

    const v6, 0x33954bd

    const/4 v8, -0x1

    invoke-interface/range {v2 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_d

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    const-string v2, "push notification exception:"

    goto/16 :goto_1

    :pswitch_b
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/oif$rtg;->sis()V

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/oif$rtg;->rtg()V

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v1}, Lcom/android/server/oif;->o()V

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/oif;->g(Lcom/android/server/oif;J)J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->f(Lcom/android/server/oif;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "opcg_recover_charge_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    iget-object v1, v1, Lcom/android/server/oif;->qbh:Landroid/os/BatteryManager;

    invoke-virtual {v1, v14}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "manual_optimised_off"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manual_optimised_off:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->irq(Lcom/android/server/oif;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v4}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v12, v3, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_7
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->d(Lcom/android/server/oif;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_7

    :pswitch_c
    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/oif$rtg;->you()V

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    :cond_8
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v1}, Lcom/android/server/oif;->o()V

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/oif$rtg;->tsu()V

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/oif$rtg;->rtg()V

    goto/16 :goto_d

    :pswitch_d
    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v0}, Lcom/android/server/oif;->m()V

    goto/16 :goto_d

    :pswitch_e
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/oif$rtg;->rtg()V

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v1}, Lcom/android/server/oif;->o()V

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/oif;->c(Lcom/android/server/oif;I)I

    :cond_9
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->d(Lcom/android/server/oif;)Z

    move-result v1

    if-eqz v1, :cond_19

    :goto_7
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/android/server/oif;->h(Lcom/android/server/oif;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v0}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_d

    :pswitch_f
    const/16 v7, 0x9

    if-nez v2, :cond_a

    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_9

    :cond_a
    const/4 v8, 0x3

    if-eq v2, v8, :cond_c

    if-ne v2, v7, :cond_b

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_b

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    const/4 v8, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    iget-object v2, v2, Lcom/android/server/oif;->qbh:Landroid/os/BatteryManager;

    invoke-virtual {v2, v14}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/server/oif$rtg;->kth(J)V

    const/4 v8, 0x1

    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "level:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", isCharging:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", mState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v10}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v9}, Lcom/android/server/oif;->tsu(Lcom/android/server/oif;)J

    move-result-wide v9

    iget-object v11, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v11}, Lcom/android/server/oif;->rtg(Lcom/android/server/oif;)J

    move-result-wide v13

    add-long/2addr v9, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v11, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v11}, Lcom/android/server/oif;->ssp(Lcom/android/server/oif;)Z

    move-result v11

    if-eqz v11, :cond_d

    return-void

    :cond_d
    if-eqz v8, :cond_e

    const/16 v8, 0x50

    if-lt v2, v8, :cond_e

    const/16 v8, 0x64

    if-ge v2, v8, :cond_e

    iget-object v8, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v8}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v8

    if-ne v8, v5, :cond_e

    iget-object v5, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v5}, Lcom/android/server/oif;->f(Lcom/android/server/oif;)J

    move-result-wide v17

    cmp-long v5, v9, v17

    if-gtz v5, :cond_f

    :cond_e
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_17

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_17

    :cond_f
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    iget-object v1, v1, Lcom/android/server/oif;->qbh:Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->computeChargeTimeRemaining()J

    move-result-wide v7

    const-wide/16 v15, -0x1

    cmp-long v1, v7, v15

    const-wide/32 v15, 0x36ee80

    if-eqz v1, :cond_10

    add-long v17, v7, v15

    goto :goto_a

    :cond_10
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->cgv(Lcom/android/server/oif;)J

    move-result-wide v17

    add-long v17, v17, v15

    :goto_a
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->d(Lcom/android/server/oif;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    const-string v5, "/sys/class/power_supply/wireless/online"

    invoke-virtual {v1, v5}, Lcom/android/server/oif;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->cgv(Lcom/android/server/oif;)J

    move-result-wide v17

    add-long v17, v17, v15

    :cond_11
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->tsu(Lcom/android/server/oif;)J

    move-result-wide v15

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->vju(Lcom/android/server/oif;)J

    move-result-wide v19

    add-long v15, v15, v19

    sub-long v19, v15, v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    add-long v21, v21, v17

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->bud(Lcom/android/server/oif;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v23

    cmp-long v1, v21, v23

    if-lez v1, :cond_13

    const-string v1, "because of the next wake up alarm coming"

    invoke-static {v12, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v0}, Lcom/android/server/oif;->o()V

    :cond_12
    return-void

    :cond_13
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->bud(Lcom/android/server/oif;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v21

    const-wide v23, 0x7fffffffffffffffL

    cmp-long v1, v21, v23

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->bud(Lcom/android/server/oif;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    sub-long v21, v21, v23

    add-long v21, v21, v13

    sub-long v17, v21, v17

    cmp-long v1, v17, v3

    if-lez v1, :cond_14

    cmp-long v1, v21, v15

    if-gez v1, :cond_14

    const-string v1, "alarm comes first, so need to change end time"

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 p1, v2

    move-object v11, v6

    move-wide/from16 v5, v17

    move-wide/from16 v1, v21

    move-wide v3, v1

    goto :goto_b

    :cond_14
    move/from16 p1, v2

    move-object v11, v6

    move-wide v1, v15

    move-wide/from16 v5, v19

    move-wide/from16 v3, v21

    goto :goto_b

    :cond_15
    move/from16 p1, v2

    move-object v11, v6

    move-wide v1, v15

    move-wide/from16 v5, v19

    :goto_b
    new-instance v15, Ljava/text/SimpleDateFormat;

    move-object/from16 v16, v11

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v15, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "now:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",startTime:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, v13, v9

    if-ltz v2, :cond_18

    cmp-long v2, v13, v5

    if-gtz v2, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeChargeTimeRemaining:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ",end:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",alarmEnd:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v2}, Lcom/android/server/oif;->m()V

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->d(Lcom/android/server/oif;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    const-string v3, "/sys/class/power_supply/wireless/online"

    invoke-virtual {v2, v3}, Lcom/android/server/oif;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v3, v16

    invoke-static {v2, v4, v3}, Lcom/android/server/oif;->h(Lcom/android/server/oif;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-static {}, Lcom/android/server/oif$rtg;->zta()Lcom/android/server/oif$rtg;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/oif$rtg;->bio(J)V

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->e(Lcom/android/server/oif;)Lcom/android/server/oif$tsu;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-string v1, "disable Charging and send notification"

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.oneplus.charingguarder.intent.OPCG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->a(Lcom/android/server/oif;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->bud(Lcom/android/server/oif;)Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v2}, Lcom/android/server/oif;->bud(Lcom/android/server/oif;)Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_c

    :cond_17
    move/from16 p1, v2

    :cond_18
    :goto_c
    iget-object v1, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-static {v1}, Lcom/android/server/oif;->b(Lcom/android/server/oif;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    move/from16 v2, p1

    const/16 v1, 0x3c

    if-gt v2, v1, :cond_19

    const-string v1, "level is lower than 60, should enable charging"

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/oif$tsu;->zta:Lcom/android/server/oif;

    invoke-virtual {v0}, Lcom/android/server/oif;->o()V

    :cond_19
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
