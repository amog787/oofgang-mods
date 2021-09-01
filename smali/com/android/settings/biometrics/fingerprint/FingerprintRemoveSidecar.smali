.class public Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "FingerprintRemoveSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$RemovalError;
    }
.end annotation


# instance fields
.field mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

.field private mFingerprintsRemoved:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintsRemoved:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Ljava/util/Queue;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintsRemoved:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    return-object p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3a6

    return p0
.end method

.method final inProgress()Z
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final isRemovingFingerprint(I)Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintsRemoved:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintsRemoved:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 107
    instance-of v1, v0, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v1, :cond_1

    .line 108
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0

    .line 109
    :cond_1
    instance-of v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$RemovalError;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$RemovalError;

    .line 111
    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$RemovalError;->fingerprint:Landroid/hardware/fingerprint/Fingerprint;

    iget v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$RemovalError;->errMsgId:I

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$RemovalError;->errString:Ljava/lang/CharSequence;

    invoke-interface {p1, v1, v2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_2
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    return-void
.end method

.method public startRemove(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_0

    const-string p0, "FingerprintRemoveSidecar"

    const-string p1, "Remove already in progress"

    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    .line 86
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, p2, p0}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method
