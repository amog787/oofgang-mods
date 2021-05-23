.class Lcom/android/server/am/c$zta;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/c;->s(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/am/c;

.field final synthetic zta:J


# direct methods
.method constructor <init>(Lcom/android/server/am/c;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/c$zta;->you:Lcom/android/server/am/c;

    iput-wide p3, p0, Lcom/android/server/am/c$zta;->zta:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "\n"

    const-string v1, "OpRestartProcessManager"

    iget-wide v2, p0, Lcom/android/server/am/c$zta;->zta:J

    invoke-static {v2, v3}, Lcom/android/server/am/c;->zta(J)J

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/c$zta;->you:Lcom/android/server/am/c;

    invoke-static {v3}, Lcom/android/server/am/c;->you(Lcom/android/server/am/c;)Ljava/io/File;

    move-result-object v3

    const-string v4, "record.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/am/c$zta;->you:Lcom/android/server/am/c;

    invoke-static {v7}, Lcom/android/server/am/c;->you(Lcom/android/server/am/c;)Ljava/io/File;

    move-result-object v7

    const-string v8, "record_backup.txt"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/c$zta;->you:Lcom/android/server/am/c;

    new-instance v6, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/am/c$zta;->you:Lcom/android/server/am/c;

    invoke-static {v8}, Lcom/android/server/am/c;->you(Lcom/android/server/am/c;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v2, v6}, Lcom/android/server/am/c;->ssp(Lcom/android/server/am/c;Landroid/util/AtomicFile;)Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/am/c$zta;->you:Lcom/android/server/am/c;

    invoke-static {v2}, Lcom/android/server/am/c;->rtg(Lcom/android/server/am/c;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HasWarmUp : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/c;->cno()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WarmUpTime : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/c;->oif()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {}, Lcom/android/server/am/c;->ibl()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/c;->ibl()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/c$igw;

    invoke-static {v2}, Lcom/android/server/am/c$igw;->wtn(Lcom/android/server/am/c$igw;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/c$kth;

    invoke-static {v6}, Lcom/android/server/am/c$kth;->ibl(Lcom/android/server/am/c$kth;)J

    move-result-wide v7

    invoke-static {v6}, Lcom/android/server/am/c$kth;->gwm(Lcom/android/server/am/c$kth;)J

    move-result-wide v9

    add-long/2addr v7, v9

    invoke-static {v6, v7, v8}, Lcom/android/server/am/c$kth;->bvj(Lcom/android/server/am/c$kth;J)J

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/am/c$igw;->obl()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcom/android/server/am/c$zta;->you:Lcom/android/server/am/c;

    invoke-static {v0}, Lcom/android/server/am/c;->rtg(Lcom/android/server/am/c;)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    invoke-static {}, Lcom/android/server/am/c;->sis()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Finishing writting old record"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Error writing process statistics"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/am/c$zta;->you:Lcom/android/server/am/c;

    invoke-static {p0}, Lcom/android/server/am/c;->rtg(Lcom/android/server/am/c;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    invoke-static {v3}, Lcom/android/server/am/c;->tsu(Z)Z

    return-void

    :goto_3
    invoke-static {v3}, Lcom/android/server/am/c;->tsu(Z)Z

    throw p0
.end method
