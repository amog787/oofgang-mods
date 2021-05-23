.class public Lcom/android/server/power/you;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static cno:Z = false

.field public static final rtg:Ljava/lang/String; = "OnePlusDiagnosisUtil"

.field public static final ssp:Ljava/lang/String; = "/data/system/power"


# instance fields
.field private final sis:I

.field private tsu:Ljava/lang/String;

.field private final you:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/power/you;->cno:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "OnePlusDiagnosisUtil"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/server/power/you;->sis:I

    new-instance p2, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/android/server/power/you;->sis:I

    invoke-direct {p2, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/power/you;->you:Ljava/util/Deque;

    iput-object p1, p0, Lcom/android/server/power/you;->tsu:Ljava/lang/String;

    const/4 p2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/android/server/power/you;->tsu:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/power/you;->zta(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p2, p1

    goto :goto_5

    :catch_0
    move-exception p0

    move-object p2, p1

    goto :goto_3

    :cond_1
    :try_start_2
    sget-boolean p0, Lcom/android/server/power/you;->cno:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t existed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got exception :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p2, :cond_3

    goto :goto_2

    :catch_2
    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz p2, :cond_4

    :try_start_5
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_4
    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/you;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/power/you;->zta:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized zta(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/you;->you:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/power/you;->sis:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/power/you;->you:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/you;->you:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bio(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/android/server/power/you;->sis:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/you;->zta(Ljava/lang/String;)V

    return-void
.end method

.method public cno(ILjava/lang/String;)V
    .locals 8

    iget v0, p0, Lcom/android/server/power/you;->sis:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "%d,%d,%s,%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/power/you;->zta(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized igw(JILjava/lang/String;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-wide/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    monitor-enter p0

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    long-to-float v8, v0

    const v9, 0x4a5bba00    # 3600000.0f

    div-float/2addr v8, v9

    sub-long v0, v6, v0

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v9, 0x0

    :try_start_1
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/power"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v9, 0x0

    move v12, v9

    :goto_0
    :try_start_3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    const-string v13, "%d,%d,%.3f,%d,%s,%s,%s"

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/Object;

    const-wide/16 v15, 0x3e8

    div-long v17, v0, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v14, v9

    div-long v15, v6, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const/4 v15, 0x2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v15

    const/4 v9, 0x5

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v9

    const/4 v9, 0x6

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :goto_1
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v9, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v9, v2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v11, v9

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v11, v9

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "OnePlusDiagnosisUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v9, :cond_2

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    if-eqz v11, :cond_5

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_3
    if-eqz v9, :cond_3

    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_3
    :cond_4
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_4
    :cond_5
    :goto_4
    monitor-exit p0

    return-void
.end method

.method public kth(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget v0, p0, Lcom/android/server/power/you;->sis:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x4

    aput-object p3, v3, p1

    const-string p1, "%d,%d,%s,%s,%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/power/you;->zta(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized rtg(JILjava/util/List;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-wide/from16 v0, p1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    long-to-float v6, v0

    const v7, 0x4a5bba00    # 3600000.0f

    div-float/2addr v6, v7

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    const-string v11, "%d,%d,%.3f,%d,%s,%s,%s\n"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const-wide/16 v13, 0x3e8

    div-long v15, v0, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v9

    div-long v13, v4, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const/4 v13, 0x2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    move-object/from16 v14, p4

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sis()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/you;->you:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/power/you;->cno:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusDiagnosisUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ssp(IJIFLjava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-wide v1, p2

    iget v3, v0, Lcom/android/server/power/you;->sis:I

    if-gtz v3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    long-to-float v7, v1

    const v8, 0x4a5bba00    # 3600000.0f

    div-float/2addr v7, v8

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0x3e8

    div-long/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v10

    const/4 v1, 0x1

    div-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x6

    aput-object p6, v8, v1

    const/4 v1, 0x7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/16 v1, 0x8

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const-string v1, "%d,%d,%d,%.3f,%d,%.2f,%s,%s,%s"

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/power/you;->zta(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized tsu()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/power"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/power/you;->tsu:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/you;->you:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "OnePlusDiagnosisUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    :catch_3
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v2

    :goto_4
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_4
    :cond_5
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_6
    monitor-exit p0

    throw v0
.end method

.method public wtn(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public declared-synchronized you()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/power/you;->tsu:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/android/server/power/you;->you:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
