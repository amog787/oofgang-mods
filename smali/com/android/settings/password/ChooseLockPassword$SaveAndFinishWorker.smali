.class public Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected saveAndVerifyInBackground()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget v3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->unifyProfileCredentialIfRequested()V

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1028
    iget-boolean v2, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mHasChallenge:Z

    if-eqz v2, :cond_2

    .line 1031
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget-wide v4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mChallenge:J

    iget p0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v2, v3, v4, v5, p0}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;JI)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v1, :cond_1

    const-string p0, "ChooseLockPassword"

    const-string v2, "critical: no token returned for known good password."

    .line 1037
    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v2, "hw_auth_token"

    .line 1041
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-object v1, p0

    .line 1043
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJLcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p8

    .line 1010
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    .line 1012
    iput-object p6, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p7, :cond_0

    goto :goto_0

    .line 1014
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p7

    :goto_0
    iput-object p7, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1015
    iput p8, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 1017
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->start()V

    return-void
.end method
