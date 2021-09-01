.class Lcom/android/settings/biometrics/BiometricErrorDialog$1;
.super Ljava/lang/Object;
.source "BiometricErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/BiometricErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/BiometricErrorDialog;

.field final synthetic val$errMsgId:I


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/BiometricErrorDialog;I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->this$0:Lcom/android/settings/biometrics/BiometricErrorDialog;

    iput p2, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->val$errMsgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 82
    iget p1, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->val$errMsgId:I

    const/4 p2, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 84
    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->this$0:Lcom/android/settings/biometrics/BiometricErrorDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p1, :cond_1

    move p2, v0

    .line 85
    :cond_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
