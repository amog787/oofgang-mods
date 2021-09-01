.class Lcom/android/settings/development/OemUnlockPreferenceController$1;
.super Ljava/lang/Object;
.source "OemUnlockPreferenceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/OemUnlockPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/OemUnlockPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/OemUnlockPreferenceController;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController$1;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "OemUnlockPreferenceController"

    const-string v0, "mSimlockConnection service connected"

    .line 312
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController$1;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {p2}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$002(Lcom/android/settings/development/OemUnlockPreferenceController;Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    .line 315
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController$1;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$000(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/development/OemUnlockPreferenceController$1;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {p2}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$100(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;->registerCallback(Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;)I

    .line 316
    iget-object p0, p0, Lcom/android/settings/development/OemUnlockPreferenceController$1;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$000(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;->uimRemoteSimlockGetSimlockStatus(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 318
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "OemUnlockPreferenceController"

    const-string p1, "mSimlockConnection service disconnected"

    .line 323
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
