.class public Lcom/oneplus/settings/timer/timepower/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field private static mCurrentTime:J


# direct methods
.method public static getNearestTime(Ljava/lang/String;)[J
    .locals 11

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 55
    fill-array-data v1, :array_0

    if-nez p0, :cond_0

    return-object v1

    .line 60
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-gt v5, v0, :cond_3

    if-ne v4, v5, :cond_1

    mul-int/lit8 v6, v5, 0x6

    add-int/lit8 v7, v6, -0x6

    add-int/lit8 v8, v6, -0x4

    .line 66
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v6, v0

    .line 67
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 65
    invoke-static {v7, v6}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getUTC(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-ne v0, v5, :cond_2

    mul-int/lit8 v6, v5, 0x6

    add-int/lit8 v7, v6, -0x6

    add-int/lit8 v8, v6, -0x4

    .line 71
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v6, v0

    .line 72
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 70
    invoke-static {v7, v6}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getUTC(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-wide/32 v5, 0x5265c00

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 77
    sget-wide v7, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 79
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-wide v9, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    cmp-long p0, v7, v9

    if-nez p0, :cond_4

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v5

    aput-wide v7, v1, v0

    goto :goto_2

    .line 83
    :cond_4
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v4

    .line 82
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v1, v0

    .line 87
    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_7

    .line 88
    sget-wide v7, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 90
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-wide v9, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    cmp-long p0, v7, v9

    if-nez p0, :cond_6

    .line 91
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v5

    aput-wide v2, v1, v4

    goto :goto_3

    .line 94
    :cond_6
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v4

    .line 93
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v4

    :cond_7
    :goto_3
    return-object v1

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private static getUTC(II)J
    .locals 3

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 104
    sget-wide v1, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->mCurrentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    .line 105
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 106
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p1, 0x0

    .line 107
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 108
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method
