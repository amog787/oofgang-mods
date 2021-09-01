.class public Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;
.super Ljava/lang/Object;
.source "OnepulsCalendarUtil.java"


# static fields
.field private static final LUNAR_INFOS:[I

.field private static final START_CALENDAR:Ljava/util/GregorianCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x96

    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    .line 41
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x76c

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    return-void

    :array_0
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method private static daysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 99
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    const/16 v4, 0x76c

    if-ge v2, v4, :cond_0

    .line 102
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    rsub-int/lit8 v4, v4, 0x0

    .line 108
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr v4, p1

    :goto_0
    sub-int p1, v2, v1

    .line 116
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v5, p1, :cond_1

    .line 117
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    add-int/2addr v4, p1

    .line 118
    invoke-virtual {p0, v0, v0}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start after end erro:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLeapMonth(I)I
    .locals 1

    .line 55
    sget-object v0, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static getLeapMonthDays(I)I
    .locals 1

    .line 59
    invoke-static {p0}, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->getLeapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const/high16 v0, 0xf0000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getMonthDays(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0xc

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    rsub-int/lit8 p1, p1, 0x10

    shl-int p1, v0, p1

    .line 75
    sget-object v0, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "month over erro:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getYearDays(I)I
    .locals 4

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 85
    sget-object v2, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->LUNAR_INFOS:[I

    add-int/lit16 v3, p0, -0x76c

    aget v2, v2, v3

    const v3, 0xfff0

    and-int/2addr v2, v3

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {p0}, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->getLeapMonthDays(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static solarToLunar(Ljava/util/Calendar;)Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sget-object v3, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    const/4 v4, 0x2

    .line 219
    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    sget-object v4, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->START_CALENDAR:Ljava/util/GregorianCalendar;

    const/4 v5, 0x5

    .line 220
    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 218
    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 221
    invoke-static {v0, p0}, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->daysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x76c

    move v3, v0

    :goto_0
    const/16 v4, 0x801

    if-gt v1, v4, :cond_1

    .line 224
    invoke-static {v1}, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->getYearDays(I)I

    move-result v3

    sub-int v4, p0, v3

    if-ge v4, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move p0, v4

    goto :goto_0

    .line 233
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->getLeapMonth(I)I

    move-result v4

    if-lez v4, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    move v7, v0

    move v6, v2

    :goto_3
    const/16 v8, 0xc

    if-gt v6, v8, :cond_5

    add-int/lit8 v3, v4, 0x1

    if-ne v6, v3, :cond_3

    if-eqz v5, :cond_3

    .line 242
    invoke-static {v1}, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->getLeapMonthDays(I)I

    move-result v3

    add-int/lit8 v6, v6, -0x1

    move v5, v0

    move v7, v2

    goto :goto_4

    .line 247
    :cond_3
    invoke-static {v1, v6}, Lcom/google/android/material/picker/calendar/OnepulsCalendarUtil;->getMonthDays(II)I

    move-result v3

    :goto_4
    sub-int/2addr p0, v3

    if-gtz p0, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    add-int/2addr p0, v3

    .line 259
    new-instance v3, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;

    if-ne v6, v4, :cond_6

    goto :goto_6

    :cond_6
    move v2, v0

    :goto_6
    and-int v0, v7, v2

    invoke-direct {v3, v1, v6, p0, v0}, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;-><init>(IIIZ)V

    return-object v3
.end method
