.class Lcom/android/server/hmo$zta;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hmo;->d0(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cno:Lcom/android/server/hmo;

.field final synthetic rtg:Z

.field final synthetic sis:Ljava/lang/String;

.field final synthetic ssp:Landroid/os/DropBoxManager;

.field final synthetic tsu:J

.field final synthetic you:I

.field final synthetic zta:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/hmo;Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;JZLandroid/os/DropBoxManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    iput-object p3, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    iput p4, p0, Lcom/android/server/hmo$zta;->you:I

    iput-object p5, p0, Lcom/android/server/hmo$zta;->sis:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/server/hmo$zta;->tsu:J

    iput-boolean p8, p0, Lcom/android/server/hmo$zta;->rtg:Z

    iput-object p9, p0, Lcom/android/server/hmo$zta;->ssp:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "Error close input stream"

    const-string v1, "-b"

    iget-object v2, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    iget v5, p0, Lcom/android/server/hmo$zta;->you:I

    invoke-virtual {v4, v5}, Lcom/android/server/hmo;->u(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reason: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/hmo$zta;->sis:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    const-string v3, "--------- beginning of CPU usage\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    invoke-static {v3}, Lcom/android/server/hmo;->m(Lcom/android/server/hmo;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    invoke-static {v3}, Lcom/android/server/hmo;->m(Lcom/android/server/hmo;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v3

    iget-wide v5, p0, Lcom/android/server/hmo$zta;->tsu:J

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRelUserTime:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    invoke-static {v5}, Lcom/android/server/hmo;->m(Lcom/android/server/hmo;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mRelSystemTime:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    invoke-static {v5}, Lcom/android/server/hmo;->m(Lcom/android/server/hmo;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mRelIrqTime:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    invoke-static {v5}, Lcom/android/server/hmo;->m(Lcom/android/server/hmo;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mRelIdleTime:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    invoke-static {v5}, Lcom/android/server/hmo;->m(Lcom/android/server/hmo;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    const-string v3, "--------- beginning of battery history\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v5, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    iget-object v5, v5, Lcom/android/server/hmo;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    iget-object v5, v5, Lcom/android/server/hmo;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/hmo$tsu;

    iget-object v6, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/hmo$tsu;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    invoke-static {v3}, Lcom/android/server/hmo;->n(Lcom/android/server/hmo;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v5, 0x800

    const-string v6, "logcat_for_overheat"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/high16 v5, 0x40000

    iget-object v6, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x64

    sub-int/2addr v5, v6

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "OverHeatingDiagnosis"

    if-lez v5, :cond_1

    :try_start_0
    iget-object v8, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    const-string v9, "--------- beginning of overheat history\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    const-string v9, "\n\n[[TRUNCATED]]"

    invoke-static {v6, v5, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Lcom/android/server/qbh$zta;->tsu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-lez v3, :cond_4

    iget-object v5, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/16 v8, 0x11

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "/system/bin/timeout"

    aput-object v9, v8, v2

    const-string v9, "-k"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    const-string v11, "15s"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "10s"

    aput-object v11, v8, v9

    const/4 v9, 0x4

    const-string v11, "/system/bin/logcat"

    aput-object v11, v8, v9

    const/4 v9, 0x5

    const-string v11, "-v"

    aput-object v11, v8, v9

    const/4 v9, 0x6

    const-string v11, "threadtime"

    aput-object v11, v8, v9

    const/4 v9, 0x7

    aput-object v1, v8, v9

    const/16 v9, 0x8

    const-string v11, "events"

    aput-object v11, v8, v9

    const/16 v9, 0x9

    aput-object v1, v8, v9

    const-string v9, "system"

    aput-object v9, v8, v4

    const/16 v4, 0xb

    aput-object v1, v8, v4

    const/16 v4, 0xc

    const-string v9, "main"

    aput-object v9, v8, v4

    const/16 v4, 0xd

    aput-object v1, v8, v4

    const/16 v1, 0xe

    const-string v4, "crash"

    aput-object v4, v8, v1

    const/16 v1, 0xf

    const-string v4, "-t"

    aput-object v4, v8, v1

    const/16 v1, 0x10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-direct {v6, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_3
    const-string v4, "Error close output stream"

    invoke-static {v7, v4, v3}, Lcom/android/server/qbh$zta;->tsu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_5
    const-string v4, "Error close error stream"

    invoke-static {v7, v4, v3}, Lcom/android/server/qbh$zta;->tsu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v1, 0x2000

    :try_start_6
    new-array v1, v1, [C

    :goto_4
    invoke-virtual {v3, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v5, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catchall_0
    move-exception p0

    move-object v5, v3

    goto :goto_6

    :catch_3
    move-exception v1

    move-object v5, v3

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception v1

    :goto_5
    :try_start_8
    const-string v2, "Error running logcat"

    invoke-static {v7, v2, v1}, Lcom/android/server/qbh$zta;->tsu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_8

    :catch_5
    move-exception v1

    invoke-static {v7, v0, v1}, Lcom/android/server/qbh$zta;->tsu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :goto_6
    if-eqz v5, :cond_3

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    invoke-static {v7, v0, v1}, Lcom/android/server/qbh$zta;->tsu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_7
    throw p0

    :cond_4
    :goto_8
    iget-boolean v0, p0, Lcom/android/server/hmo$zta;->rtg:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hmo$zta;->cno:Lcom/android/server/hmo;

    invoke-virtual {v1}, Lcom/android/server/hmo;->w()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, p0, Lcom/android/server/hmo$zta;->ssp:Landroid/os/DropBoxManager;

    iget-object p0, p0, Lcom/android/server/hmo$zta;->zta:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "overheat"

    invoke-virtual {v0, v1, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
