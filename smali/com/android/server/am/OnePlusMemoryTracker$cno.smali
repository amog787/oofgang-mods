.class Lcom/android/server/am/OnePlusMemoryTracker$cno;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusMemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cno"
.end annotation


# static fields
.field public static final sis:I = 0x1

.field public static final tsu:I = 0x2

.field public static final you:I


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusMemoryTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusMemoryTracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p1, v1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1202(Lcom/android/server/am/OnePlusMemoryTracker;Z)Z

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$700()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mStartReportNoCache is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1200(Lcom/android/server/am/OnePlusMemoryTracker;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPMT"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    const-string v2, "pid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v1}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$700()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkgName : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pss: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OPMT"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$800(Lcom/android/server/am/OnePlusMemoryTracker;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {v2}, Lcom/android/server/am/OnePlusMemoryTracker;->access$800(Lcom/android/server/am/OnePlusMemoryTracker;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {v2}, Lcom/android/server/am/OnePlusMemoryTracker;->access$800(Lcom/android/server/am/OnePlusMemoryTracker;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusMemoryTracker$bio;

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OnePlusMemoryTracker$bio;->zta(J)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {v2}, Lcom/android/server/am/OnePlusMemoryTracker;->access$800(Lcom/android/server/am/OnePlusMemoryTracker;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/OnePlusMemoryTracker$bio;

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {v3, v0, v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker$bio;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$900(Lcom/android/server/am/OnePlusMemoryTracker;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p0, v0, v1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$902(Lcom/android/server/am/OnePlusMemoryTracker;J)J

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$700()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "OPMT"

    const-string p1, "ignore first no cache mdm event"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$900(Lcom/android/server/am/OnePlusMemoryTracker;)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1000()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_7

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$700()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "OPMT"

    const-string p1, "ignore this no cache mdm event"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1100(Lcom/android/server/am/OnePlusMemoryTracker;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p0, v0, v1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$902(Lcom/android/server/am/OnePlusMemoryTracker;J)J

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$400(Lcom/android/server/am/OnePlusMemoryTracker;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$500(Lcom/android/server/am/OnePlusMemoryTracker;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$cno;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->access$600(Lcom/android/server/am/OnePlusMemoryTracker;)V

    :cond_9
    :goto_1
    return-void
.end method
