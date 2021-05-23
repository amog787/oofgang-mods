.class Lcom/android/server/am/l$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field sis:Ljava/util/Calendar;

.field final synthetic tsu:Lcom/android/server/am/l;

.field you:Ljava/text/SimpleDateFormat;

.field zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/l;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/l$you;->tsu:Lcom/android/server/am/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/l$you;->zta:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "_yy_MM_dd"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/am/l$you;->you:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/l$you;->sis:Ljava/util/Calendar;

    const/16 p2, 0xb

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/android/server/am/l$you;->sis:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/android/server/am/l$you;->sis:Ljava/util/Calendar;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    iget-object p1, p0, Lcom/android/server/am/l$you;->zta:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/l$you;->you:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/server/am/l$you;->sis:Ljava/util/Calendar;

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
