.class public Lcom/oneplus/settings/ringtone/OPRingtoneManager;
.super Ljava/lang/Object;
.source "OPRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    }
.end annotation


# static fields
.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static mDefaultUri:Landroid/net/Uri;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "title_key"

    const-string v3, "_data"

    .line 100
    filled-new-array {v0, v1, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 108
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setType(I)V

    return-void
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 205
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=1 or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    const-string p0, ") "

    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static constructWhereClause(I)[Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_3

    .line 265
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSystemProductionRingtone()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "/system/product/media/audio/ringtones/%"

    .line 266
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "/product/media/audio/ringtones/%"

    .line 268
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSystemProductionRingtone()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "/system/product/media/audio/alarms/%"

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p0, "/product/media/audio/alarms/%"

    .line 253
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 258
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSystemProductionRingtone()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "/system/product/media/audio/notifications/%"

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p0, "/product/media/audio/notifications/%"

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    return-object p0
.end method

.method private static constructWhereClauseWithOP1(I)[Ljava/lang/String;
    .locals 5

    .line 221
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSystemProductionRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/system/product/media/audio/"

    goto :goto_0

    :cond_0
    const-string v0, "/product/media/audio/"

    .line 227
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportCustomeTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/mnt/vendor/op1/"

    goto :goto_1

    :cond_1
    const-string v1, "/op1/"

    :goto_1
    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v3, 0x4

    if-eq p0, v3, :cond_2

    const/16 v3, 0x8

    if-eq p0, v3, :cond_3

    const-string p0, "ringtones/%"

    goto :goto_2

    :cond_2
    const-string p0, "alarms/%"

    goto :goto_2

    :cond_3
    const-string p0, "notifications/%"

    :goto_2
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    return-object v2
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 8

    .line 371
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    and-int/lit8 p1, p1, 0x1

    const-string v2, "none"

    if-eqz p1, :cond_2

    const-string v0, "op_ringtone_df"

    .line 377
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringtone"

    .line 378
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-static {v4, v0, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 385
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 384
    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    if-eqz v0, :cond_8

    if-nez p1, :cond_4

    goto :goto_3

    .line 393
    :cond_4
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 396
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 398
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_5

    .line 399
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz v1, :cond_6

    .line 405
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "RingtoneManager"

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return-object p1

    :goto_2
    if-eqz v1, :cond_7

    .line 405
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_7
    throw p0

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 390
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public static getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 9

    const/4 v0, 0x0

    if-ltz p1, :cond_a

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "ringtone"

    const-string v1, "op_ringtone1_df"

    goto :goto_0

    .line 295
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "op_ringtone2_df"

    .line 298
    :goto_0
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "none"

    if-eqz v2, :cond_4

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 302
    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "op_ringtone_df"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 307
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez p1, :cond_3

    move-object p1, v3

    :cond_3
    invoke-static {v2, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 311
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 310
    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    if-nez p1, :cond_5

    return-object v1

    .line 317
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    .line 323
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 325
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_7

    .line 326
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    if-eqz v0, :cond_8

    .line 332
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "RingtoneManager"

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    return-object v1

    :goto_3
    if-eqz v0, :cond_9

    .line 332
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_9
    throw p0

    :cond_a
    :goto_4
    return-object v0
.end method

.method public static getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 465
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ro.config."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 466
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 7

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " like ? or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " like ? )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSortByTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "track"

    goto :goto_0

    :cond_0
    const-string v0, "title_key"

    :goto_0
    move-object v6, v0

    .line 188
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 190
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    .line 188
    invoke-direct/range {v1 .. v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 192
    new-instance v0, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getLocatRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;II)Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
    .locals 11

    .line 605
    new-instance v7, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;

    const/4 v8, 0x0

    invoke-direct {v7, v8, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_7

    .line 606
    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 609
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtoneUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "RingtoneManager"

    invoke-static {v9, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "mime_type"

    const-string v3, "_data"

    const-string v10, "title"

    if-eqz v1, :cond_1

    .line 614
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    filled-new-array {v10, v3, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    move-object v8, v1

    goto :goto_1

    .line 621
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "_display_name"

    filled-new-array {v4, v3, v2, v10}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :goto_1
    if-eqz v8, :cond_4

    .line 628
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 629
    invoke-static {p0, p1, v8, p2, p3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateRingtoneForInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 631
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    .line 632
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    .line 635
    :cond_2
    iput-object v0, v7, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_3

    .line 645
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v7

    :cond_4
    if-eqz v8, :cond_5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 642
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_5

    goto :goto_2

    :catch_1
    move-exception v0

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    .line 645
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v7

    :goto_3
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 647
    :cond_6
    throw v0

    :cond_7
    :goto_4
    return-object v7
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 0

    .line 478
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingForType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "ringtone"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "notification_sound"

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string p0, "alarm_alert"

    return-object p0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    const-string p0, "mms_notification"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 9

    .line 431
    sget-object v0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 440
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "ringtone"

    .line 444
    invoke-static {p0, v6}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getDefaultRingtoneFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v8, 0x0

    aput-object p0, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 440
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 446
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 447
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 448
    sget-object p0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "RingtoneManager"

    const-string v2, "RemoteException: "

    .line 452
    invoke-static {v1, v2, p0}, Lcom/oneplus/settings/ringtone/OPMyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 455
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_2
    sget-object p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mDefaultUri:Landroid/net/Uri;

    return-object p0

    :goto_1
    if-eqz v0, :cond_3

    .line 455
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_3
    throw p0
.end method

.method public static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x2

    .line 472
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 473
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 471
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 0

    .line 876
    invoke-static {p0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static isRingSimSwitchOn(Landroid/content/Context;)Z
    .locals 2

    .line 871
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_sim_sw"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSystemRingtone(Landroid/content/Context;Landroid/net/Uri;I)Z
    .locals 9

    .line 484
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isSystemRingtoneForMCL(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "media"

    .line 493
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 496
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "_data like ?"

    .line 498
    invoke-static {p2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructWhereClause(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, p1

    .line 496
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 499
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_4

    const/4 p0, 0x1

    if-eqz v1, :cond_3

    .line 506
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return p0

    :cond_4
    if-eqz v1, :cond_5

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "RingtoneManager"

    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_6

    .line 506
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_6
    throw p0
.end method

.method public static isSystemRingtoneForMCL(Landroid/content/Context;Landroid/net/Uri;I)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "media"

    .line 519
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    const-string v6, "_data like ? or _data like ? "

    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    .line 526
    invoke-static {p2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->constructWhereClauseWithOP1(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, p1

    .line 524
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 527
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_3

    const/4 p0, 0x1

    if-eqz v1, :cond_2

    .line 534
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return p0

    :cond_3
    if-eqz v1, :cond_4

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "RingtoneManager"

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_5

    .line 534
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_5
    throw p0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 278
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static ringtoneRestoreFromDefault(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 13

    .line 546
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "is_ringtone"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    const-string v1, "is_notification"

    :cond_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    const-string v1, "is_alarm"

    :cond_2
    if-eqz v1, :cond_5

    const-string p1, "ringtone"

    .line 564
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 567
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ro.config."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "."

    .line 569
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringtoneRestoreFromDefault: title = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RingtoneManager"

    invoke-static {v5, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=1 and "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 p0, 0x1

    new-array v10, p0, [Ljava/lang/String;

    aput-object p1, v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 578
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 579
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    .line 580
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ringtoneRestoreFromDefault: ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, p0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object p2, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    const-string p0, "RemoteException: "

    .line 584
    invoke-static {v5, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    :cond_4
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 587
    throw p0

    :cond_5
    :goto_4
    return-object p2
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 3

    .line 745
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 752
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 754
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "none"

    :goto_0
    const-string v2, "op_ringtone_df"

    .line 752
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 756
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 758
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "ringtone_2"

    .line 756
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 761
    :cond_3
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public static setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 3

    if-ltz p1, :cond_4

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "none"

    if-nez p1, :cond_2

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 357
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "op_ringtone1_df"

    .line 355
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 359
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_3

    .line 362
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "op_ringtone2_df"

    .line 360
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 367
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setFilterColumnsList(I)V
    .locals 2

    .line 136
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 137
    invoke-interface {p0}, Ljava/util/List;->clear()V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "is_ringtone"

    .line 140
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const-string v1, "is_notification"

    if-eqz v0, :cond_1

    .line 144
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    .line 148
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    const-string p1, "is_alarm"

    .line 152
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static setRingSimSwitch(Landroid/content/Context;I)V
    .locals 1

    .line 866
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_sim_sw"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static updateActualRingtone(Landroid/content/Context;)V
    .locals 7

    .line 766
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_ringtone_df"

    .line 765
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 768
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "none"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 770
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, v4

    :goto_1
    const-string v6, "ringtone"

    .line 768
    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 772
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz v0, :cond_4

    .line 774
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 775
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_2
    const-string v0, "ringtone_2"

    .line 772
    invoke-static {p0, v0, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static updateActualRingtone2(Landroid/content/Context;)V
    .locals 6

    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_ringtone1_df"

    .line 808
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_ringtone2_df"

    .line 810
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getStaticDefaultRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "none"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_4

    .line 823
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 824
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    :goto_2
    move-object v1, v4

    :goto_3
    if-nez v0, :cond_6

    move-object v0, v4

    goto :goto_4

    .line 825
    :cond_6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_4
    if-nez v1, :cond_7

    goto :goto_5

    .line 826
    :cond_7
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_5
    const/4 v1, 0x0

    .line 827
    invoke-static {p0, v1, v0}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    const/4 v0, 0x1

    .line 828
    invoke-static {p0, v0, v4}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public static updateDb(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 3

    .line 846
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    return-void

    .line 849
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_2

    const-string p2, "is_ringtone"

    .line 859
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    const-string p2, "is_alarm"

    .line 852
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    const-string p2, "is_notification"

    .line 856
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 862
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static updateRingtoneForInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;II)Landroid/net/Uri;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 657
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 658
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 657
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object p1

    :cond_0
    const/4 v4, 0x1

    .line 661
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 664
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportCustomeTheme()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "/mnt/vendor/op1/"

    goto :goto_0

    :cond_1
    const-string v6, "/op1/"

    .line 667
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSystemProductionRingtone()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v5, :cond_2

    const-string v7, "/system/product/media/audio/"

    .line 668
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    return-object p1

    :cond_3
    if-eqz v5, :cond_e

    const-string v7, "/product/media/audio/"

    .line 672
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_7

    .line 676
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/storage/emulated/legacy"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 677
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 678
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 680
    sget-object v15, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "_id"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    new-array v13, v4, [Ljava/lang/String;

    aput-object v5, v13, v6

    const/4 v14, 0x0

    const-string v12, "_data=?"

    move-object v10, v15

    .line 684
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const-string v10, "is_alarm"

    const/16 v11, 0x8

    const-string v12, "is_notification"

    const-string v13, "is_ringtone"

    if-eqz v9, :cond_8

    .line 687
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 688
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v15, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 689
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    if-ne v2, v4, :cond_5

    .line 691
    invoke-virtual {v5, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_5
    if-eq v2, v8, :cond_7

    if-ne v2, v11, :cond_6

    goto :goto_1

    .line 697
    :cond_6
    invoke-virtual {v5, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 694
    :cond_7
    :goto_1
    invoke-virtual {v5, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 699
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    .line 701
    :cond_8
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "_data"

    .line 702
    invoke-virtual {v6, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "title"

    .line 704
    invoke-virtual {v6, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "mime_type"

    .line 706
    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v4, :cond_9

    .line 708
    invoke-virtual {v6, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    :cond_9
    if-eq v2, v8, :cond_b

    if-ne v2, v11, :cond_a

    goto :goto_3

    .line 714
    :cond_a
    invoke-virtual {v6, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 711
    :cond_b
    :goto_3
    invoke-virtual {v6, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 717
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data=\""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v15, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v15, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    :goto_5
    if-eqz v9, :cond_c

    .line 722
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_c
    if-lez p4, :cond_d

    add-int/lit8 v2, p4, -0x1

    .line 725
    invoke-static {v0, v2, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_6

    .line 727
    :cond_d
    invoke-static {v0, v2, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :goto_6
    return-object v1

    :cond_e
    :goto_7
    return-object p1
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object p0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public inferStreamType()I
    .locals 2

    .line 157
    iget p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x5

    return p0
.end method

.method public setType(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 131
    iput p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->mType:I

    .line 132
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setFilterColumnsList(I)V

    return-void

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
