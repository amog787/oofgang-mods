.class public Lcom/android/settings/password/CredentialCheckResultTracker;
.super Landroidx/fragment/app/Fragment;
.source "CredentialCheckResultTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/CredentialCheckResultTracker$Listener;
    }
.end annotation


# instance fields
.field private mHasResult:Z

.field private mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

.field private mResultData:Landroid/content/Intent;

.field private mResultEffectiveUserId:I

.field private mResultMatched:Z

.field private mResultTimeoutMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public clearResult()V
    .locals 2

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    .line 73
    iput v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    .line 74
    iput v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-ne v0, p1, :cond_0

    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-eqz p1, :cond_1

    .line 49
    iget-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    if-eqz v0, :cond_1

    .line 50
    iget-boolean v2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    iget-object v3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iget v5, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/settings/password/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;IIZ)V

    :cond_1
    return-void
.end method

.method public setResult(ZLandroid/content/Intent;II)V
    .locals 7

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    .line 57
    iput-object p2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    .line 58
    iput p3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    .line 59
    iput p4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    .line 62
    iget-object v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 63
    invoke-interface/range {v1 .. v6}, Lcom/android/settings/password/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;IIZ)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    :cond_0
    return-void
.end method
