.class Lcom/android/server/am/OnePlusBackgroundFrozen$5;
.super Landroid/app/IUidObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBackgroundFrozen;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$5;->this$0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ssp(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event onUidActive uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->bio(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V

    :cond_1
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ssp(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event onUidGone uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |disabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->kth(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    :cond_1
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ssp(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event onUidIdle uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |disabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->bio(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V

    :cond_1
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ssp(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "event onUidStateChanged uid:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " |procState:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->cno(Lcom/android/server/am/OnePlusBackgroundFrozen;II)V

    :cond_1
    return-void
.end method
