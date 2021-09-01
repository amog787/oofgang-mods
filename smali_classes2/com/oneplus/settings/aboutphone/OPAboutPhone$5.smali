.class Lcom/oneplus/settings/aboutphone/OPAboutPhone$5;
.super Ljava/lang/Object;
.source "OPAboutPhone.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 286
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$5;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "OPAboutPhone"

    const-string v0, "mSimLockConnection service connected"

    .line 290
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$5;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p2}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$502(Lcom/oneplus/settings/aboutphone/OPAboutPhone;Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    .line 293
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$5;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p1}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$5;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p2}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$600(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;->registerCallback(Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;)I

    .line 294
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhone$5;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-static {p0}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhone;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;->uimRemoteSimlockGetSimlockStatus(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "OPAboutPhone"

    const-string p1, "mSimLockConnection service disconnected"

    .line 302
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
