.class public Lcom/android/server/OpPowerControllerService$dma;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dma"
.end annotation


# static fields
.field private static final cno:Ljava/lang/String; = "idle-records.xml"


# instance fields
.field public rtg:Landroid/util/AtomicFile;

.field private sis:Ljava/time/Duration;

.field final synthetic ssp:Lcom/android/server/OpPowerControllerService;

.field private tsu:Ljava/time/LocalDateTime;

.field private you:Ljava/time/LocalTime;

.field private final zta:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OpPowerControllerService$gck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/OpPowerControllerService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "idle-records.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$dma;->rtg:Landroid/util/AtomicFile;

    return-void
.end method

.method private bvj(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "idle-items"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v2, Lcom/android/server/OpPowerControllerService;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "last"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OpPowerControllerService$gck;

    const-string v4, "OpPowerControllerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write idle iteam: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "localStart"

    invoke-virtual {v3}, Lcom/android/server/OpPowerControllerService$gck;->tsu()Ljava/time/LocalDateTime;

    move-result-object v5

    sget-object v6, Lcom/android/server/OpPowerControllerService;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v5, v6}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "localEnd"

    invoke-virtual {v3}, Lcom/android/server/OpPowerControllerService$gck;->sis()Ljava/time/LocalDateTime;

    move-result-object v5

    sget-object v6, Lcom/android/server/OpPowerControllerService;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v5, v6}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duration"

    invoke-virtual {v3}, Lcom/android/server/OpPowerControllerService$gck;->you()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "idle-items"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService$dma;->rtg()Ljava/time/LocalTime;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService$dma;->tsu()Ljava/time/Duration;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const-string v2, "deep-sleep"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/OpPowerControllerService;->SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v2}, Ljava/time/LocalTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "start"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Ljava/time/Duration;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "duration"

    invoke-interface {p1, v1, v0, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "deep-sleep"

    invoke-interface {p1, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private igw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Failed parsing idle "

    const-string v4, "OpPowerControllerService"

    :goto_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_0

    if-eq v5, v7, :cond_0

    goto :goto_0

    :cond_0
    if-ne v5, v6, :cond_11

    const-string v5, "idle-items"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    const-wide/16 v8, 0x3e8

    const-string v6, "failed by simple date format, retry by milliseconds"

    const/4 v10, 0x0

    if-eqz v5, :cond_1

    :try_start_1
    const-string v5, "last"

    invoke-interface {v2, v10, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    sget-object v11, Lcom/android/server/OpPowerControllerService;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {v5, v11}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "last record time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v12}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/android/server/OpPowerControllerService$dma;->oif(Ljava/time/LocalDateTime;)V
    :try_end_2
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_0
    :try_start_3
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    div-long/2addr v11, v8

    iget-object v5, v1, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v5}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object v5

    const/4 v13, 0x0

    invoke-static {}, Ljava/time/OffsetDateTime;->now()Ljava/time/OffsetDateTime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v14

    invoke-static {v11, v12, v13, v14}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/server/OpPowerControllerService$dma;->oif(Ljava/time/LocalDateTime;)V

    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    const-string v12, "duration"

    const-string v13, "length"

    const/4 v14, 0x4

    const/4 v15, 0x3

    if-eq v11, v7, :cond_b

    if-ne v11, v15, :cond_2

    :try_start_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_b

    :cond_2
    if-eq v11, v15, :cond_a

    if-ne v11, v14, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Lcom/android/server/OpPowerControllerService$gck;

    iget-object v9, v1, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-direct {v8, v9}, Lcom/android/server/OpPowerControllerService$gck;-><init>(Lcom/android/server/OpPowerControllerService;)V

    const-string v9, "rawStart"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iget-object v9, v1, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {v9, v14, v15}, Lcom/android/server/OpPowerControllerService;->millisToLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/OpPowerControllerService$gck;->cno(Ljava/time/LocalDateTime;)V

    :cond_4
    const-string v9, "rawEnd"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iget-object v9, v1, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {v9, v14, v15}, Lcom/android/server/OpPowerControllerService;->millisToLocalDateTime(J)Ljava/time/LocalDateTime;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/OpPowerControllerService$gck;->ssp(Ljava/time/LocalDateTime;)V

    :cond_5
    invoke-interface {v2, v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/OpPowerControllerService$gck;->rtg(Ljava/time/Duration;)V

    :cond_6
    const-string v9, "localStart"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    sget-object v11, Lcom/android/server/OpPowerControllerService;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {v9, v11}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/OpPowerControllerService$gck;->cno(Ljava/time/LocalDateTime;)V

    :cond_7
    const-string v9, "localEnd"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    sget-object v11, Lcom/android/server/OpPowerControllerService;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {v9, v11}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/OpPowerControllerService$gck;->ssp(Ljava/time/LocalDateTime;)V

    :cond_8
    invoke-interface {v2, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {v9}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/OpPowerControllerService$gck;->rtg(Ljava/time/Duration;)V

    :cond_9
    invoke-virtual {v8}, Lcom/android/server/OpPowerControllerService$gck;->tsu()Ljava/time/LocalDateTime;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v8}, Lcom/android/server/OpPowerControllerService$gck;->sis()Ljava/time/LocalDateTime;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v8}, Lcom/android/server/OpPowerControllerService$gck;->you()Ljava/time/Duration;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, v1, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    const-wide/16 v8, 0x3e8

    goto/16 :goto_2

    :cond_b
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v7, :cond_12

    if-ne v8, v15, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_12

    :cond_c
    if-eq v8, v15, :cond_10

    if-ne v8, v14, :cond_d

    goto :goto_4

    :cond_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "deep-sleep"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "start"

    invoke-interface {v2, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v8, :cond_e

    :try_start_5
    invoke-static {v8}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v11}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/server/OpPowerControllerService$dma;->qbh(Ljava/time/LocalTime;)V
    :try_end_5
    .catch Ljava/time/format/DateTimeParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_1
    :try_start_6
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v11, v1, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v11}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object v11

    const-wide/16 v16, 0x3e8

    div-long v8, v8, v16

    invoke-static {v8, v9}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/android/server/OpPowerControllerService$dma;->qbh(Ljava/time/LocalTime;)V

    goto :goto_6

    :cond_e
    :goto_5
    const-wide/16 v16, 0x3e8

    :goto_6
    invoke-interface {v2, v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v11, v1, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v11}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object v11

    invoke-static {v8, v9}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/android/server/OpPowerControllerService$dma;->ywr(Ljava/time/Duration;)V

    :cond_f
    invoke-interface {v2, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v8, :cond_b

    :try_start_7
    invoke-static {v8}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v9}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/OpPowerControllerService$dma;->ywr(Ljava/time/Duration;)V
    :try_end_7
    .catch Ljava/time/format/DateTimeParseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_2
    :try_start_8
    const-string v8, "failed to parse duration"

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v8}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/server/OpPowerControllerService$dma;->ywr(Ljava/time/Duration;)V

    goto/16 :goto_4

    :cond_10
    const-wide/16 v16, 0x3e8

    goto/16 :goto_4

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not start tag found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method


# virtual methods
.method public bio()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cno()Ljava/time/LocalDateTime;
    .locals 2

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$5700(Lcom/android/server/OpPowerControllerService;)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$5700(Lcom/android/server/OpPowerControllerService;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService$dma;->rtg()Ljava/time/LocalTime;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$2900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$dma;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService$dma;->tsu()Ljava/time/Duration;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public dma()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->rtg:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/OpPowerControllerService$dma;->igw(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpPowerControllerService"

    const-string v2, "Error "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "OpPowerControllerService"

    const-string v3, "Error restoreIdleItemsLocked"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$5500()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading idle items from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$dma;->rtg:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPowerControllerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_6
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OpPowerControllerService$gck;

    const-string v2, "OpPowerControllerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/OpPowerControllerService$gck;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :cond_1
    :goto_2
    return-void

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "OpPowerControllerService"

    const-string v2, "Error "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    throw p0

    :catch_3
    move-exception p0

    const-string v0, "OpPowerControllerService"

    const-string v1, "Error restoreIdleItemsLocked"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_2
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method public gck()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->you:Ljava/time/LocalTime;

    iput-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->sis:Ljava/time/Duration;

    iput-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->tsu:Ljava/time/LocalDateTime;

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->rtg:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public kth()Ljava/time/LocalDateTime;
    .locals 2

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$5600(Lcom/android/server/OpPowerControllerService;)Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$5600(Lcom/android/server/OpPowerControllerService;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->you:Ljava/time/LocalTime;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->you:Ljava/time/LocalTime;

    invoke-static {v0, p0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public oif(Ljava/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$dma;->tsu:Ljava/time/LocalDateTime;

    return-void
.end method

.method qbh(Ljava/time/LocalTime;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$dma;->you:Ljava/time/LocalTime;

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$5500()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDeepSleepStart="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->you:Ljava/time/LocalTime;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerControllerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public rtg()Ljava/time/LocalTime;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->you:Ljava/time/LocalTime;

    return-object p0
.end method

.method public sis()[[D
    .locals 8

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    const-class v1, D

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v3, v2

    :goto_0
    iget-object v5, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OpPowerControllerService$gck;

    invoke-virtual {v6}, Lcom/android/server/OpPowerControllerService$gck;->tsu()Ljava/time/LocalDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v6

    int-to-double v6, v6

    aput-wide v6, v5, v2

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OpPowerControllerService$gck;

    invoke-virtual {v6}, Lcom/android/server/OpPowerControllerService$gck;->you()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v6

    long-to-double v6, v6

    aput-wide v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ssp()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->tsu:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public tsu()Ljava/time/Duration;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->sis:Ljava/time/Duration;

    return-object p0
.end method

.method public wtn()V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/OpPowerControllerService$dma;->oif(Ljava/time/LocalDateTime;)V

    :try_start_0
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/OpPowerControllerService$dma;->bvj(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/OpPowerControllerService$dma$zta;

    invoke-direct {v2, p0, v0}, Lcom/android/server/OpPowerControllerService$dma$zta;-><init>(Lcom/android/server/OpPowerControllerService$dma;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OpPowerControllerService"

    const-string v1, "Error writing idle items"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public you(Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OpPowerControllerService$gck;

    invoke-virtual {v1, p1}, Lcom/android/server/OpPowerControllerService$gck;->zta(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method ywr(Ljava/time/Duration;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$dma;->sis:Ljava/time/Duration;

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$5500()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDeepSleepDuration="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->sis:Ljava/time/Duration;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerControllerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public zta(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V
    .locals 2

    new-instance v0, Lcom/android/server/OpPowerControllerService$gck;

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$dma;->ssp:Lcom/android/server/OpPowerControllerService;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/OpPowerControllerService$gck;-><init>(Lcom/android/server/OpPowerControllerService;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$2100()I

    move-result v1

    if-le p2, v1, :cond_0

    iget-object p2, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$dma;->zta:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addIdleItem: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerControllerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
