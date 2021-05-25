.class Lcom/android/server/am/ywr$sis;
.super Lcom/android/server/am/ywr$you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ywr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/am/ywr;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ywr;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/ywr$sis;->sis:Lcom/android/server/am/ywr;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ywr$you;-><init>(Lcom/android/server/am/ywr;Lcom/android/server/am/ywr$zta;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->kth:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-static {p1, p0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/bvj;)V

    return-void
.end method


# virtual methods
.method public ywr(ILjava/lang/String;Z)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noteGpsChanged ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppRecordTest"

    invoke-static {p3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->ssp(I)I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ywr$sis;->sis:Lcom/android/server/am/ywr;

    sget-object p2, Lcom/android/server/am/AppRecordManager$ListenerType;->kth:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GPS for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " are not using!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/am/ywr;->zta(Lcom/android/server/am/ywr;Lcom/android/server/am/AppRecordManager$ListenerType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
