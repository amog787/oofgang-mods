.class Lcom/android/server/am/AppRecordManagerService$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/AppRecordManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService$sis;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppRecordManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.apprecord.action.test"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dump"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$sis;->zta:Lcom/android/server/am/AppRecordManagerService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->access$400(Lcom/android/server/am/AppRecordManagerService;Z)V

    goto/16 :goto_1

    :cond_0
    const-string p2, "dumpall"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$sis;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->access$400(Lcom/android/server/am/AppRecordManagerService;Z)V

    goto/16 :goto_1

    :cond_1
    const-string p2, "dumpsensor"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$sis;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0}, Lcom/android/server/am/AppRecordManagerService;->access$500(Lcom/android/server/am/AppRecordManagerService;)V

    goto/16 :goto_1

    :cond_2
    const-string p2, "dumplistener"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/server/am/wtn;->rtg()Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/wtn;->tsu()V

    goto/16 :goto_1

    :cond_3
    const-string p2, "dumpisolated"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$sis;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0}, Lcom/android/server/am/AppRecordManagerService;->access$600(Lcom/android/server/am/AppRecordManagerService;)V

    goto/16 :goto_1

    :cond_4
    const-string p2, "debugall"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p0, -0x1

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/AppRecordManagerService;->access$702(I)I

    goto/16 :goto_1

    :cond_5
    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "@dump@pkg@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v2, 0xa

    if-eqz p2, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$sis;->zta:Lcom/android/server/am/AppRecordManagerService;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->access$800(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p2, "@dump@uid@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$sis;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->access$900(Lcom/android/server/am/AppRecordManagerService;I)V

    goto :goto_1

    :cond_7
    const-string p2, "@debug@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x7

    if-eqz p2, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_8
    const-string p2, "@using@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    shl-int p1, v0, p1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$sis;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getPackagesUsingFlag(I)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " using "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->zgw(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "# "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void
.end method
