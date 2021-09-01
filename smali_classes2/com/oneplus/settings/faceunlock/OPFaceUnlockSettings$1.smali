.class Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;
.super Ljava/lang/Object;
.source "OPFaceUnlockSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "OPFaceUnlockSettings"

    const-string v0, "Oneplus face unlock service connected"

    .line 80
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$002(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 83
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$100(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "OPFaceUnlockSettings"

    const-string v0, "Oneplus face unlock service disconnected"

    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$002(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-void
.end method
