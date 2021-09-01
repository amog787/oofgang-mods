.class Lcom/oneplus/settings/aboutphone/OPAboutPhone$6;
.super Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;
.source "OPAboutPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/aboutphone/OPAboutPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$6;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-direct {p0}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public uimRemoteSimlockGenerateHMACResponse(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "uimRemoteSimlockGenerateHMACResponse token:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", responseCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAboutPhone"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uimRemoteSimlockGetSharedKeyResponse(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "uimRemoteSimlockProcessSimlockDataResponse token:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", responseCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAboutPhone"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uimRemoteSimlockGetSimlockStatusResponse(IIIJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uimRemoteSimlockGetSimlockStatusResponse token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", responseCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", unlockStatus:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", unlockTime:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPAboutPhone"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p1

    .line 316
    :goto_1
    new-instance p3, Landroid/os/Message;

    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    .line 317
    iput p1, p3, Landroid/os/Message;->what:I

    .line 318
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$6;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/OPNetworkUnlockUtils;->getNetworkUnlockStatus(Landroid/content/Context;)Z

    move-result p1

    if-eq p1, p2, :cond_3

    .line 321
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$6;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$700(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 322
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$6;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$700(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 p4, 0x32

    invoke-virtual {p1, p3, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 324
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$6;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/oneplus/settings/aboutphone/OPNetworkUnlockUtils;->saveNetworkUnlockStatus(Landroid/content/Context;Z)V

    .line 325
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$6;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$400(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 326
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$6;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$400(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->updateNetworkUnlockStatus(Ljava/lang/Boolean;)V

    :cond_3
    return-void
.end method

.method public uimRemoteSimlockGetVersionResponse(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uimRemoteSimlockGetVersionResponse token:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", responseCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", majorVersion:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", minorVersion:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAboutPhone"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uimRemoteSimlockProcessSimlockDataResponse(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "uimRemoteSimlockProcessSimlockDataResponse token:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", responseCode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAboutPhone"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
