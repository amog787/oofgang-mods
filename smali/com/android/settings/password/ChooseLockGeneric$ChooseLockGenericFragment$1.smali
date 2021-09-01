.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ChooseLockGenericFragment"

    const-string v0, "Oneplus face unlock service connected"

    .line 198
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$002(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Z)Z

    .line 200
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$102(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ChooseLockGenericFragment"

    const-string v0, "Oneplus face unlock service disconnected"

    .line 204
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$002(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Z)Z

    .line 206
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$102(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-void
.end method
