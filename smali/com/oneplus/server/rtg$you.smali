.class Lcom/oneplus/server/rtg$you;
.super Lcom/android/server/am/igw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field private sis:Lcom/oneplus/server/rtg$zta;

.field final synthetic tsu:Lcom/oneplus/server/rtg;

.field private you:Lcom/oneplus/frontmonitor/IFrontListener;


# direct methods
.method public constructor <init>(Lcom/oneplus/server/rtg;Lcom/oneplus/frontmonitor/IFrontListener;Lcom/oneplus/server/rtg$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/rtg$you;->tsu:Lcom/oneplus/server/rtg;

    invoke-direct {p0}, Lcom/android/server/am/igw;-><init>()V

    iput-object p2, p0, Lcom/oneplus/server/rtg$you;->you:Lcom/oneplus/frontmonitor/IFrontListener;

    iput-object p3, p0, Lcom/oneplus/server/rtg$you;->sis:Lcom/oneplus/server/rtg$zta;

    return-void
.end method


# virtual methods
.method public rtg(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/server/rtg$you;->you:Lcom/oneplus/frontmonitor/IFrontListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oneplus/frontmonitor/IFrontListener;->frontActivityChange(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "frontActivityChange ex->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpFrontMonitorService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/server/rtg$you;->tsu:Lcom/oneplus/server/rtg;

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Lcom/oneplus/server/rtg$you;->tsu:Lcom/oneplus/server/rtg;

    iget-object p0, p0, Lcom/oneplus/server/rtg$you;->you:Lcom/oneplus/frontmonitor/IFrontListener;

    invoke-static {p2, p0, p3, p4}, Lcom/oneplus/server/rtg;->zta(Lcom/oneplus/server/rtg;Lcom/oneplus/frontmonitor/IFrontListener;II)V

    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
