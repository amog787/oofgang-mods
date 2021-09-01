.class Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$credential:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    iput p4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$102(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$300(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->val$intent:Landroid/content/Intent;

    .line 482
    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const-string v2, "type"

    .line 481
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->val$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$200(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->val$intent:Landroid/content/Intent;

    iget p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->val$localEffectiveUserId:I

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method
