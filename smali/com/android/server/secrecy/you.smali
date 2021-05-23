.class public Lcom/android/server/secrecy/you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/you$you;
    }
.end annotation


# static fields
.field private static final bio:I = 0x1

.field private static final bvj:Ljava/lang/String; = "encrypt_adb"

.field private static final cno:Ljava/lang/String; = "SecrecyService.SecrecyConfig"

.field private static final dma:Ljava/lang/String; = "rc4_key"

.field private static final gck:Ljava/lang/String; = "imei"

.field private static ibl:Lcom/android/server/secrecy/you; = null

.field private static final igw:I = 0x2

.field private static final kth:Ljava/lang/Object;

.field private static final oif:Ljava/lang/String; = "encrypt_log"

.field private static final qbh:Ljava/lang/String; = "encrypt_app"

.field private static final wtn:I = 0x3

.field private static final ywr:Ljava/lang/String; = "last_download_time"


# instance fields
.field private rtg:Lcom/android/server/secrecy/sis/sis;

.field private sis:[B

.field private ssp:Ljava/lang/String;

.field private tsu:Landroid/os/Handler;

.field private final you:[B

.field private final zta:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/you;->kth:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/mnt/vendor/persist/engineermode/engineermode_config"

    iput-object v0, p0, Lcom/android/server/secrecy/you;->zta:Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/secrecy/you;->you:[B

    return-void
.end method

.method private bio()Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/io/File;

    const-string v0, "/mnt/vendor/persist/engineermode/engineermode_config"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_2
    return-object v0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw p0
.end method

.method private dma()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/secrecy/you;->sis:[B

    if-nez v0, :cond_0

    const-string p0, "SecrecyService.SecrecyConfig"

    const-string v0, "RC4Key is null, skip save action"

    invoke-static {p0, v0}, Lcom/android/server/secrecy/sis/ssp/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/secrecy/sis/sis;->wtn(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/secrecy/sis/sis;->wtn(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/server/secrecy/sis/sis;->wtn(I)Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {v6}, Lcom/android/server/secrecy/sis/sis;->ssp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/secrecy/you;->ssp:Ljava/lang/String;

    if-eqz v7, :cond_1

    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/server/secrecy/you;->ssp:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    const-string v7, "rc4_key"

    iget-object v8, p0, Lcom/android/server/secrecy/you;->sis:[B

    invoke-static {v8}, Landroid/secrecy/RC4;->encodeHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "encrypt_log"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "true"

    const-string v9, "false"

    if-eqz v3, :cond_2

    move-object v3, v8

    goto :goto_0

    :cond_2
    move-object v3, v9

    :goto_0
    :try_start_2
    invoke-virtual {v0, v7, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "encrypt_app"

    if-eqz v4, :cond_3

    move-object v4, v8

    goto :goto_1

    :cond_3
    move-object v4, v9

    :goto_1
    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "encrypt_adb"

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v9

    :goto_2
    invoke-virtual {v0, v3, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "last_download_time"

    invoke-virtual {v0, v3, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "utf-8"

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/secrecy/you;->qbh(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-object v1, v2

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_5
    throw p0

    :catch_2
    :goto_4
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_6
    :goto_5
    return-void
.end method

.method private kth()V
    .locals 13

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const-string v2, "ro.boot.project_name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "17819"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "load_config"

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/secrecy/sis/ssp/sis;->ssp()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p0, v1, v7, v3}, Lcom/android/server/secrecy/sis/sis;->ear(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/secrecy/you;->bio()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {v2}, Lcom/android/server/secrecy/sis/sis;->kth()Z

    move-result v2

    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const-string v11, "utf-8"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v8, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "rc4_key"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SecrecyService.SecrecyConfig"

    const-string v3, "RC4Key is null, use defaultPolicy"

    invoke-static {v0, v3}, Lcom/android/server/secrecy/sis/ssp/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/secrecy/sis/sis;->tsu(Ljava/util/Map;Z)V

    iget-object p0, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p0, v1, v7}, Lcom/android/server/secrecy/sis/sis;->cjf(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :cond_2
    :try_start_3
    invoke-static {v0}, Landroid/secrecy/RC4;->decodeHexRC4(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/you;->sis:[B

    iget-object v9, p0, Lcom/android/server/secrecy/you;->you:[B

    invoke-static {v9, v0}, Landroid/secrecy/RC4;->mixSbox([B[B)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "imei"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/android/server/secrecy/you;->ssp:Ljava/lang/String;

    :cond_3
    const-string v0, "encrypt_log"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v9, "true"

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    const-string v11, "encrypt_app"

    invoke-virtual {v8, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_1

    :cond_5
    move v11, v2

    :goto_1
    const-string v12, "encrypt_adb"

    invoke-virtual {v8, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {v0, v1, v7, v3}, Lcom/android/server/secrecy/sis/sis;->ear(Ljava/util/Map;Ljava/lang/String;Z)V

    const-string v0, "last_download_time"

    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p0, v0}, Lcom/android/server/secrecy/sis/sis;->gwm(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_1
    :try_start_7
    iget-object v0, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/secrecy/sis/sis;->tsu(Ljava/util/Map;Z)V

    iget-object p0, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p0, v1, v7}, Lcom/android/server/secrecy/sis/sis;->cjf(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    return-void

    :catchall_0
    move-exception p0

    move-object v9, v10

    goto :goto_2

    :catch_3
    move-object v9, v10

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v9, :cond_7

    :try_start_9
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :cond_7
    throw p0

    :catch_5
    :goto_3
    if-eqz v9, :cond_8

    :try_start_a
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    :cond_8
    :goto_4
    return-void
.end method

.method private qbh(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/mnt/vendor/persist/engineermode/engineermode_config"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/BufferedOutputStream;

    invoke-direct {p0, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V

    throw p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic sis(Lcom/android/server/secrecy/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/secrecy/you;->dma()V

    return-void
.end method

.method public static ssp()Lcom/android/server/secrecy/you;
    .locals 2

    sget-object v0, Lcom/android/server/secrecy/you;->kth:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/secrecy/you;->ibl:Lcom/android/server/secrecy/you;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/secrecy/you;

    invoke-direct {v1}, Lcom/android/server/secrecy/you;-><init>()V

    sput-object v1, Lcom/android/server/secrecy/you;->ibl:Lcom/android/server/secrecy/you;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/secrecy/you;->ibl:Lcom/android/server/secrecy/you;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic you(Lcom/android/server/secrecy/you;)Lcom/android/server/secrecy/sis/sis;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/secrecy/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/secrecy/you;->kth()V

    return-void
.end method


# virtual methods
.method public cno()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/you;->tsu:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/secrecy/you;->tsu:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public gck(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/you;->tsu:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/secrecy/you;->tsu:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/secrecy/you;->tsu:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public igw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/you;->ssp:Ljava/lang/String;

    return-void
.end method

.method public rtg(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "SecrecyConfig dump"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mRC4Key  = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/secrecy/you;->sis:[B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mRC4Sbox = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/secrecy/you;->you:[B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mImei = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/secrecy/you;->ssp:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public tsu(J)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/you;->sis:[B

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Landroid/secrecy/RC4;->longToBytes(J)[B

    move-result-object p1

    const/16 p2, 0x100

    new-array p2, p2, [B

    iget-object p0, p0, Lcom/android/server/secrecy/you;->you:[B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, p1}, Landroid/secrecy/RC4;->encrypt([B[B)V

    invoke-static {p1}, Landroid/secrecy/RC4;->encodeHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wtn(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/secrecy/RC4;->decodeHex(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/secrecy/you;->sis:[B

    return-void
.end method

.method public ywr(Lcom/android/server/secrecy/sis/sis;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/secrecy/you;->rtg:Lcom/android/server/secrecy/sis/sis;

    new-instance p1, Lcom/android/server/secrecy/you$you;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/secrecy/you$you;-><init>(Lcom/android/server/secrecy/you;Landroid/os/Looper;Lcom/android/server/secrecy/you$zta;)V

    iput-object p1, p0, Lcom/android/server/secrecy/you;->tsu:Landroid/os/Handler;

    return-void
.end method
