.class Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 593
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-static {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$800(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    .line 585
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 586
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->lockpattern_too_many_failed_confirmation_attempts:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 588
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 586
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
