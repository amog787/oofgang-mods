.class Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;)Z
    .locals 0

    .line 420
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->isInternalActivity()Z

    move-result p0

    return p0
.end method

.method private isInternalActivity()Z
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    return p0
.end method

.method private startCheckPattern(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V
    .locals 8

    .line 501
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 503
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v7, 0x0

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V

    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 508
    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$2;

    invoke-direct {v3, p0, p2, p1, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$2;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;Landroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-static {v2, p1, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$202(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startVerifyPattern(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V
    .locals 8

    .line 468
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 469
    iget v6, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    .line 470
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "challenge"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 472
    new-instance v7, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;

    invoke-direct {v7, p0, p2, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3$1;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;Landroid/content/Intent;I)V

    .line 490
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    if-ne v1, v6, :cond_0

    .line 491
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    goto :goto_0

    .line 494
    :cond_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 490
    :goto_0
    invoke-static {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$202(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPatternCleared()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$300(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "has_challenge"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 443
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    .line 445
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    new-instance v4, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, v4}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$402(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_2

    .line 450
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->isInternalActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-direct {p0, v2, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->startVerifyPattern(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V

    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1, p1, v1, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void

    .line 455
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->startCheckPattern(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPatternStart()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
