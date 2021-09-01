.class Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 313
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isLockedOutStage:Z

    if-nez v0, :cond_0

    .line 314
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
