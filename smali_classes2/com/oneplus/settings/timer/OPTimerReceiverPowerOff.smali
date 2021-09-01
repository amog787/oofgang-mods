.class public Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;
.super Landroid/content/BroadcastReceiver;
.source "OPTimerReceiverPowerOff.java"


# instance fields
.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    .line 24
    iput-object v0, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private cancleNewPlanLastPowerOn(Landroid/content/Context;)V
    .locals 3

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "def_timepower_config"

    .line 233
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 235
    invoke-static {p0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object p0

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 240
    aget-wide v1, p0, v1

    const-string p0, "time"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "com.qualcomm.qti.poweroffalarm"

    .line 241
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static checkSwitch(Landroid/content/Context;Z)Z
    .locals 12

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "def_timepower_config"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 263
    fill-array-data v2, :array_0

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    new-array v3, v1, [I

    .line 264
    fill-array-data v3, :array_1

    const-class v4, Z

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    move v4, v0

    move v5, v4

    :goto_0
    const/4 v6, 0x6

    const/4 v7, 0x1

    if-gt v4, v6, :cond_1

    add-int/lit8 v8, v4, 0x6

    .line 267
    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 268
    aget-object v9, v2, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v0

    .line 269
    aget-object v9, v2, v5

    const/4 v10, 0x4

    invoke-virtual {v4, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v7

    .line 270
    aget-object v9, v3, v5

    const/4 v11, 0x5

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v10

    aput-boolean v10, v9, v0

    .line 271
    aget-object v9, v3, v5

    invoke-virtual {v4, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v4

    aput-boolean v4, v9, v7

    add-int/2addr v5, v7

    move v4, v8

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 275
    aget-object p0, v3, v0

    aget-boolean p0, p0, v7

    if-eqz p0, :cond_3

    return v7

    .line 279
    :cond_2
    aget-object p0, v3, v7

    aget-boolean p0, p0, v7

    if-eqz p0, :cond_3

    return v7

    :cond_3
    return v0

    nop

    :array_0
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data
.end method

.method static intToBool(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPowerOffEnable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static isPowerOnEnable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 247
    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_timepower_config"

    .line 41
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v3

    const-string v4, "power"

    .line 47
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    const-string v4, "com.android.settings.action.REQUEST_POWER_OFF"

    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    const-wide/16 v7, 0x0

    const-string v9, "android.intent.action.TIME_SET"

    const-string v11, "com.android.settings.POWER_OP_OFF"

    const-string v12, "alarm"

    const/4 v13, 0x1

    const/high16 v14, 0x11000000

    const/4 v15, 0x0

    if-nez v4, :cond_7

    .line 58
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 59
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 60
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 88
    :cond_0
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v10, 0x10000000

    if-eqz v4, :cond_4

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 93
    aget-wide v18, v3, v13

    sub-long v16, v16, v18

    const-wide/32 v18, 0x5265c00

    sub-long v16, v16, v18

    rem-long v16, v16, v18

    cmp-long v4, v16, v7

    if-ltz v4, :cond_1

    const-wide/32 v7, 0xea60

    cmp-long v7, v16, v7

    if-gtz v7, :cond_2

    :cond_1
    if-gez v4, :cond_3

    const-wide/32 v7, -0x52571a0

    cmp-long v4, v16, v7

    if-lez v4, :cond_3

    :cond_2
    return-void

    .line 102
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {v4, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    const-string v4, "com.android.settings.POWER_CONFIRM_OP_OFF"

    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 130
    iget-object v4, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_5

    .line 131
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v4, 0x0

    .line 132
    iput-object v4, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 135
    :cond_5
    iget-object v4, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    const v7, 0x1000000a

    const-string v8, "TimepowerWakeLock"

    .line 136
    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 139
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 141
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.extra.KEY_CONFIRM"

    .line 142
    invoke-virtual {v4, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const-string v4, "com.android.settings.POWER_CANCEL_OP_OFF"

    .line 146
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 160
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v4, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    const/high16 v8, 0x8000000

    .line 166
    invoke-static {v1, v15, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 172
    invoke-virtual {v7, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 63
    :cond_7
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOffEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 64
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    aget-wide v10, v3, v13

    cmp-long v7, v10, v7

    if-eqz v7, :cond_8

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 73
    aget-wide v10, v3, v15

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Power on alarm with flag set:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "boot"

    .line 74
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    const/high16 v8, 0x8000000

    .line 80
    invoke-static {v1, v15, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 84
    aget-wide v10, v3, v13

    invoke-virtual {v7, v15, v10, v11, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_8
    :goto_1
    const-string v4, "com.android.settings.POWER_OP_ON"

    .line 181
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 182
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 183
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 184
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 187
    :cond_9
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v2

    if-nez v2, :cond_b

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 193
    invoke-static {v1, v13, v0, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 194
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 196
    aget-wide v3, v3, v15

    invoke-virtual {v2, v15, v3, v4, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 199
    :cond_a
    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 203
    :cond_b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    const/high16 v5, 0x8000000

    .line 209
    invoke-static {v1, v15, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 211
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 212
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->cancleNewPlanLastPowerOn(Landroid/content/Context;)V

    .line 213
    aget-wide v5, v3, v15

    invoke-virtual {v4, v15, v5, v6, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.codeaurora.poweroffalarm.action.SET_ALARM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.qualcomm.qti.poweroffalarm"

    .line 218
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    aget-wide v2, v3, v15

    const-string v4, "time"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 220
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 222
    :cond_c
    invoke-virtual {v4, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_d
    :goto_2
    return-void
.end method
