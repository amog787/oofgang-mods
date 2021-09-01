.class Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;
.super Lorg/codeaurora/internal/NetworkCallbackBase;
.source "FiveGNetWorkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-direct {p0}, Lorg/codeaurora/internal/NetworkCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method public on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gConfigInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " NrConfigType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGNetWorkStatus"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 467
    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object p2

    .line 468
    invoke-virtual {p4}, Lorg/codeaurora/internal/NrConfigType;->get()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$002(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    .line 469
    iget-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    iget-object p3, p3, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->mOn5gInfomationUpdateListener:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$On5gInfomationUpdateListener;

    if-eqz p3, :cond_0

    .line 470
    invoke-static {p2}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I

    move-result p4

    invoke-interface {p3, p4}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$On5gInfomationUpdateListener;->On5gInfomationUpdate(I)V

    .line 472
    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {p0, p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_1
    return-void
.end method

.method public on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "on5gStatus: slotId= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " status="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " enableStatus="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FiveGNetWorkStatus"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnyNrBearerAllocation bearerStatus="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGNetWorkStatus"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 440
    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object p2

    .line 441
    invoke-virtual {p4}, Lorg/codeaurora/internal/BearerAllocationStatus;->get()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$402(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    .line 442
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {p0, p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrDcParam: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " dcParam="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGNetWorkStatus"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 415
    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object p2

    .line 416
    invoke-virtual {p4}, Lorg/codeaurora/internal/DcParam;->getDcnr()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$1402(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    .line 417
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {p0, p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNrIconType: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " NrIconType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGNetWorkStatus"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 483
    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object p2

    .line 484
    invoke-virtual {p4}, Lorg/codeaurora/internal/NrIconType;->get()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$302(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    .line 485
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {p0, p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrength: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " status="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " signalStrength="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGNetWorkStatus"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    if-eqz p4, :cond_0

    .line 427
    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object p2

    .line 428
    iget-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {p4}, Lorg/codeaurora/internal/SignalStrength;->getRsrp()I

    move-result v0

    invoke-static {p3, v0}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1700(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;I)I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$1602(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    .line 429
    invoke-virtual {p4}, Lorg/codeaurora/internal/SignalStrength;->getRsrp()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$1802(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    .line 430
    invoke-virtual {p4}, Lorg/codeaurora/internal/SignalStrength;->getSnr()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$1902(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    .line 431
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {p0, p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_0
    return-void
.end method

.method public onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpperLayerIndInfo plmn="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " upperLayerIndInfo="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FiveGNetWorkStatus"

    .line 450
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p3}, Lorg/codeaurora/internal/Status;->get()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 453
    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->getCurrentServiceState(I)Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;

    move-result-object p2

    .line 454
    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$2002(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    .line 455
    invoke-virtual {p4}, Lorg/codeaurora/internal/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->access$2102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I

    .line 456
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;

    invoke-static {p0, p2, p1}, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;->access$1500(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)V

    :cond_0
    return-void
.end method
