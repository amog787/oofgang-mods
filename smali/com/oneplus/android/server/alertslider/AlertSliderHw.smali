.class public Lcom/oneplus/android/server/alertslider/AlertSliderHw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/alertslider/AlertSliderHw$AlertSliderUnsupportException;,
        Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;,
        Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;
    }
.end annotation


# static fields
.field private static final bio:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/tri_state_hall_data"

.field public static final bvj:I = -0x1

.field private static final cno:Z

.field private static final dma:I = 0x4

.field private static final gck:I = 0x2

.field private static final ibl:Ljava/lang/String; = "three_Key_mode"

.field private static final igw:Ljava/lang/String; = "soc:tri_state_key"

.field private static final kth:Ljava/lang/String; = "/sys/bus/platform/devices/soc:tri_state_key/hall_data_calib"

.field public static final oif:I = 0x3

.field public static final qbh:I = 0x2

.field private static final ssp:Ljava/lang/String; = "AlertSliderHw"

.field private static final wtn:I = 0x1

.field public static final ywr:I = 0x1


# instance fields
.field private rtg:Landroid/os/PowerManager$WakeLock;

.field private sis:Landroid/content/Context;

.field private tsu:Lcom/oneplus/android/server/alertslider/zta;

.field private you:Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;

.field private zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->cno:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/android/server/alertslider/zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;-><init>(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)V

    iput-object v0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    new-instance v0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;-><init>(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)V

    iput-object v0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->you:Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->sis:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->tsu:Lcom/oneplus/android/server/alertslider/zta;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string v0, "AlertSliderHw"

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->rtg:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private static bio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "to"

    const-string v1, "writeStringToFile Write"

    const-string v2, "close wrong"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeStringToFile sorry write wrong:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :goto_2
    return v3

    :catchall_1
    move-exception v3

    :goto_3
    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    throw v3
.end method

.method private static cno(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "readStringFromFile io close exception :"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "AlertSliderHw"

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readStringFromFile file not exists : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v3, v1

    :goto_3
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readStringFromFile io exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_3
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readStringFromFile path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v3

    :goto_5
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    const-string p1, "readStringFromFile invalid file path"

    goto/16 :goto_1
.end method

.method private kth(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "three_Key_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->tsu:Lcom/oneplus/android/server/alertslider/zta;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/alertslider/sis;->cno(I)V

    :cond_0
    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->rtg:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/alertslider/AlertSliderHw;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->kth(I)V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    return-object p0
.end method

.method static synthetic zta()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->cno:Z

    return v0
.end method


# virtual methods
.method public rtg()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/android/server/alertslider/AlertSliderHw$AlertSliderUnsupportException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    invoke-virtual {v0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->zta()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-string v2, "cable."

    const-string v3, "AlertSliderHw"

    const/4 v4, 0x3

    const/4 v5, -0x1

    if-ge v1, v4, :cond_1

    const/16 v6, 0x400

    :try_start_0
    new-array v7, v6, [C

    new-instance v8, Ljava/io/FileReader;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    invoke-virtual {v10}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/state"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7, v0, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    invoke-virtual {v8}, Ljava/io/FileReader;->close()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7, v0, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    add-int/lit8 v5, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-ne v0, v5, :cond_2

    goto :goto_2

    :cond_2
    if-ne v4, v5, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    :try_start_1
    sget-boolean v0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->cno:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    invoke-virtual {v5}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/state\nstate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    move v5, v4

    :goto_3
    const-string v0, ""

    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_2
    move v5, v4

    :catch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta:Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;

    invoke-virtual {p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found while attempting to determine initial switch state"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v4, v5

    :cond_4
    :goto_5
    return v4

    :cond_5
    new-instance p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$AlertSliderUnsupportException;

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$AlertSliderUnsupportException;-><init>()V

    throw p0
.end method

.method public ssp()Z
    .locals 8

    const-string v0, "AlertSliderHw"

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->you:Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;

    invoke-virtual {v1}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$zta;->zta()V

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->rtg()I

    move-result v1
    :try_end_0
    .catch Lcom/oneplus/android/server/alertslider/AlertSliderHw$AlertSliderUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->tsu:Lcom/oneplus/android/server/alertslider/zta;

    invoke-virtual {v2, v1}, Lcom/oneplus/android/server/alertslider/zta;->you(I)V
    :try_end_1
    .catch Lcom/oneplus/android/server/alertslider/AlertSliderHw$AlertSliderUnsupportException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :catch_1
    const-string v2, "device is not support AlertSlider"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->tsu:Lcom/oneplus/android/server/alertslider/zta;

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->kth(I)V

    :cond_1
    const-string p0, "/mnt/vendor/persist/engineermode/tri_state_hall_data"

    invoke-static {v0, p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->cno(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const-string v5, ",|;"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v5, p0

    const/4 v6, 0x6

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, p0, v1

    aput-object v7, v6, v1

    aget-object v7, p0, v4

    aput-object v7, v6, v4

    aget-object v7, p0, v3

    aput-object v7, v6, v3

    aget-object v3, p0, v2

    aput-object v3, v6, v2

    const/4 v2, 0x4

    aget-object v3, p0, v2

    aput-object v3, v6, v2

    const/4 v2, 0x5

    aget-object p0, p0, v2

    aput-object p0, v6, v2

    const-string p0, "%s,%s,%s,%s,%s,%s"

    invoke-static {v5, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v2, "/sys/bus/platform/devices/soc:tri_state_key/hall_data_calib"

    invoke-static {v0, v2, p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->bio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v4

    :cond_5
    :goto_1
    const-string p0, "invalid hall data need to be saved"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
