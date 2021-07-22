.class public final Lcom/oneplus/settings/utils/OPVibrateUtils;
.super Ljava/lang/Object;
.source "OPVibrateUtils.java"


# static fields
.field private static final mAlarmVibratePattern:[J

.field private static sVibratePatternrhythm:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [[J

    const/4 v1, 0x6

    new-array v1, v1, [J

    .line 63
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xa

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xe

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/16 v2, 0x12

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    new-array v0, v3, [J

    .line 70
    fill-array-data v0, :array_5

    sput-object v0, Lcom/oneplus/settings/utils/OPVibrateUtils;->mAlarmVibratePattern:[J

    return-void

    :array_0
    .array-data 8
        -0x2
        0x0
        0x3e8
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0x1f4
        0xfa
        0xa
        0x3e8
        0x1f4
        0xfa
        0xa
        0x3e8
    .end array-data

    :array_2
    .array-data 8
        -0x2
        0x0
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
    .end array-data

    :array_3
    .array-data 8
        -0x2
        0x0
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
    .end array-data

    :array_4
    .array-data 8
        -0x2
        0x0
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
    .end array-data

    :array_5
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method

.method public static getRingtoneVibrateMode(Landroid/content/Context;)I
    .locals 2

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "incoming_call_vibrate_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getVibrateLevel(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isDynamicVibrateMode(Landroid/content/Context;)Z
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "incoming_call_vibrate_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSystemRingtone(Landroid/net/Uri;I)Z
    .locals 1

    .line 189
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0, p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public static isThreeKeyMuteMode(Landroid/content/Context;)Z
    .locals 2

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "three_Key_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isThreeKeyRingMode(Landroid/content/Context;)Z
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "three_Key_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isThreeKeyVibrateMode(Landroid/content/Context;)Z
    .locals 2

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "three_Key_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isVibrateWhenRinging(Landroid/content/Context;)Z
    .locals 2

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static startVibrateByType(Landroid/os/Vibrator;)V
    .locals 7

    .line 92
    sget-object v0, Lcom/oneplus/settings/utils/OPVibrateUtils;->sVibratePatternrhythm:[[J

    if-eqz p0, :cond_4

    .line 93
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "incoming_call_vibrate_intensity"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 95
    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    .line 96
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->getRingtoneVibrateMode(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    move v2, v4

    :cond_0
    if-nez v1, :cond_1

    .line 101
    aget-object v1, v0, v2

    const-wide/16 v5, -0x1

    aput-wide v5, v1, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 103
    aget-object v1, v0, v2

    const-wide/16 v5, -0x2

    aput-wide v5, v1, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 105
    aget-object v1, v0, v2

    const-wide/16 v5, -0x3

    aput-wide v5, v1, v4

    .line 107
    :cond_3
    :goto_0
    aget-object v1, v0, v2

    invoke-virtual {p0, v1, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVibrateByType--type:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pattern:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPVibrateUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static startVibrateForAlarm(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V
    .locals 3

    .line 253
    sget-object v0, Lcom/oneplus/settings/utils/OPVibrateUtils;->mAlarmVibratePattern:[J

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x4

    .line 255
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyRingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    invoke-static {p1, v2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isSystemRingtone(Landroid/net/Uri;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "incoming_call_vibrate_intensity"

    .line 260
    invoke-static {p0, v0, p1, p2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateWithRingtoneUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_1
    const-string p0, "OPVibrateUtils"

    const-string p1, "startVibrateForAlarm--normal-vibrate"

    .line 262
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x15

    const/4 v1, 0x0

    if-lt p0, p1, :cond_2

    .line 264
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 265
    invoke-virtual {p0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 266
    invoke-virtual {p0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    .line 264
    invoke-virtual {p2, v0, v1, p0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p2, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static startVibrateForNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V
    .locals 1

    .line 237
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyMuteMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 241
    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isSystemRingtone(Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notice_vibrate_intensity"

    .line 242
    invoke-static {p0, v0, p1, p2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateWithRingtoneUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyVibrateMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "OPVibrateUtils"

    const-string p1, "startVibrateForNotification--normal-vibrate"

    .line 245
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static startVibrateForRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isSystemRingtone(Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyMuteMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isDynamicVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyRingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isDynamicVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "incoming_call_vibrate_intensity"

    .line 205
    invoke-static {p0, v0, p1, p2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateWithRingtoneUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-static {p2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateByType(Landroid/os/Vibrator;)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public static startVibrateForSms(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Vibrator;)V
    .locals 1

    .line 221
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyVibrateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyMuteMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    .line 225
    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isSystemRingtone(Landroid/net/Uri;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notice_vibrate_intensity"

    .line 226
    invoke-static {p0, v0, p1, p2}, Lcom/oneplus/settings/utils/OPVibrateUtils;->startVibrateWithRingtoneUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Vibrator;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->isThreeKeyVibrateMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "OPVibrateUtils"

    const-string p1, "startVibrateForSms--normal--vibrate"

    .line 229
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static startVibrateWithRingtoneUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Vibrator;)V
    .locals 9

    .line 276
    invoke-virtual {p3}, Landroid/os/Vibrator;->cancel()V

    .line 277
    invoke-static {p0, p2}, Lcom/oneplus/util/RingtoneManagerUtils;->getVibratorSceneId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 278
    invoke-virtual {p3, v0}, Landroid/os/Vibrator;->setVibratorEffect(I)I

    move-result v1

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x3

    new-array v3, v3, [J

    .line 282
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->getVibrateLevel(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    int-to-long v7, v1

    const/4 v2, 0x2

    aput-wide v7, v3, v2

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OPVibrateUtils--sceneId:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ringtoneUri:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " key: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "vibrateTime:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " delayTime:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " vibrateLevel:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPVibrateUtils;->getVibrateLevel(I)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPVibrateUtils"

    .line 283
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p3, v3, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method
