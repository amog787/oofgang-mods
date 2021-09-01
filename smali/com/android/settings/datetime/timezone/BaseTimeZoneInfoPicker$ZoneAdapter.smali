.class public Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;
.super Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.source "BaseTimeZoneInfoPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ZoneAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
        "Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;Ljava/lang/CharSequence;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener<",
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-static {p1, p2, p4}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;->createTimeZoneInfoItems(Landroid/content/Context;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;-><init>(Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;Ljava/util/Locale;ZLjava/lang/CharSequence;)V

    return-void
.end method

.method private static createTimeZoneInfoItems(Landroid/content/Context;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v7, Landroid/icu/text/SimpleDateFormat;

    .line 88
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, p2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 89
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 93
    new-instance v8, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;

    const-wide/16 v4, 0x1

    add-long v9, v1, v4

    const/4 v6, 0x0

    move-object v0, v8

    move-object v4, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;-><init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$1;)V

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v1, v9

    goto :goto_0

    :cond_0
    return-object p2
.end method
