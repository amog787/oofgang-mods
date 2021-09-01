.class public Lcom/oneplus/settings/utils/OPNotificationUtils;
.super Ljava/lang/Object;
.source "OPNotificationUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 544
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ro.config."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 545
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRingtoneAlias(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method private static hasData(Landroid/database/Cursor;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 537
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_unknown_ringtone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    const-string v2, "notification_sound"

    .line 128
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "mms_notification"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "alarm_alert"

    .line 130
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x2

    .line 133
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " settingsName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v4, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {p0, v1, p1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getRingtoneAlias(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    invoke-static {p0, p2}, Lcom/oneplus/settings/utils/OPNotificationUtils;->restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "ringtone"

    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ringtone_2"

    .line 141
    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPNotificationUtils;->restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    :cond_4
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->oneplus_ringtones_oneplus_tune:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 147
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->oneplus_notifications_meet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 151
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->oneplus_notifications_free:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_7
    :goto_2
    return-object p1
.end method

.method private static restoreRingtoneIfNotExist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 492
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 497
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v8, 0x0

    .line 502
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "title"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 505
    :try_start_1
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPNotificationUtils;->hasData(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 506
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 510
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPNotificationUtils;->getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 506
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 512
    invoke-static {v8}, Lcom/oneplus/settings/utils/OPNotificationUtils;->hasData(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 516
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v1

    .line 519
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 528
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v8, :cond_4

    .line 531
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, v8

    move-object v8, v0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p1, v8

    move-object v8, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p1, v8

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v8

    :goto_0
    :try_start_2
    const-string v0, "OPNotificationUtils"

    const-string v1, "RemoteException in restoreRingtoneIfNotExist()"

    .line 525
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_3

    .line 528
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz p1, :cond_4

    .line 531
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    return-void

    :catchall_2
    move-exception p0

    :goto_2
    if-eqz v8, :cond_5

    .line 528
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz p1, :cond_6

    .line 531
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_6
    throw p0
.end method
