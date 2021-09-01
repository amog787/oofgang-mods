.class Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;


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

    .line 207
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateDialog()V
    .locals 1

    .line 224
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->enableDelete()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 218
    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->updateDialog()V

    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->updateDialog()V

    return-void
.end method
