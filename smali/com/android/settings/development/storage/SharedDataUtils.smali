.class Lcom/android/settings/development/storage/SharedDataUtils;
.super Ljava/lang/Object;
.source "SharedDataUtils.java"


# static fields
.field private static final CALENDAR:Landroid/icu/util/Calendar;

.field private static final FORMATTER:Landroid/icu/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "MMM dd, yyyy HH:mm:ss z"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/development/storage/SharedDataUtils;->FORMATTER:Landroid/icu/text/SimpleDateFormat;

    .line 36
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/storage/SharedDataUtils;->CALENDAR:Landroid/icu/util/Calendar;

    return-void
.end method

.method static formatSize(J)Ljava/lang/String;
    .locals 2

    long-to-double p0, p0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "%.2f MB"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/settings/development/storage/SharedDataUtils;->CALENDAR:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p0, p1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 40
    sget-object p0, Lcom/android/settings/development/storage/SharedDataUtils;->FORMATTER:Landroid/icu/text/SimpleDateFormat;

    sget-object p1, Lcom/android/settings/development/storage/SharedDataUtils;->CALENDAR:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
