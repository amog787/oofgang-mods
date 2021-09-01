.class public Lcom/android/settings/display/darkmode/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFormatter:Ljava/time/format/DateTimeFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/settings/display/darkmode/TimeFormatter;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez p1, :cond_0

    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    const-string v0, "hh:mm a"

    .line 36
    invoke-static {v0, p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/darkmode/TimeFormatter;->mFormatter:Ljava/time/format/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method public is24HourFormat()Z
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/display/darkmode/TimeFormatter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public of(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/display/darkmode/TimeFormatter;->mFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
