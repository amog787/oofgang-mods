.class Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;
.super Landroid/os/Handler;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->handleError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$500(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V

    .line 248
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$400(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 239
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->removeFingerprintPreference(I)V

    .line 243
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$300(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    .line 244
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$400(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    :goto_0
    return-void
.end method
