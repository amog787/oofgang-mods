.class Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;
.super Landroid/os/Handler;
.source "OPFaceUnlockSettings.java"


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

    .line 92
    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$200(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    :goto_0
    return-void
.end method
