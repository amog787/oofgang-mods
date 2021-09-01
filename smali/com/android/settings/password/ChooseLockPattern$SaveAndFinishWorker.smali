.class public Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

.field private mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mLockVirgin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 913
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3

    .line 963
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 967
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 936
    iget v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 937
    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->unifyProfileCredentialIfRequested()V

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 943
    iget-boolean v3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mHasChallenge:Z

    if-eqz v3, :cond_2

    .line 946
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    iget-wide v5, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mChallenge:J

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;JI)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v2, :cond_1

    const-string p0, "ChooseLockPattern"

    const-string v0, "critical: no token returned for known good pattern"

    .line 952
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "hw_auth_token"

    .line 956
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-object v2, p0

    .line 958
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

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

    .line 922
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    if-eqz p7, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p7

    :goto_0
    iput-object p7, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 926
    iput-object p6, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    .line 927
    iput p8, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 929
    iget-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p8}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->mLockVirgin:Z

    .line 931
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->start()V

    return-void
.end method
