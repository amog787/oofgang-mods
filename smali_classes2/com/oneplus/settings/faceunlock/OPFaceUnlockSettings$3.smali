.class Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;
.super Ljava/lang/Object;
.source "OPFaceUnlockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->removeFaceData()V
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

    .line 283
    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$300(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)Landroid/app/ActivityManager;

    move-result-object v0

    const-string v1, "com.oneplus.faceunlock"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killRunningTargetProcess(Landroid/app/ActivityManager;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$400(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 289
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$500(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "OPFaceUnlockSettings"

    const-string v0, "Oneplus face unlock killRunningTargetProcess"

    .line 290
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
