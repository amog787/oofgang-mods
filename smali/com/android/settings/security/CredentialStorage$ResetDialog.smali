.class Lcom/android/settings/security/CredentialStorage$ResetDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/android/settings/security/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/security/CredentialStorage;)V
    .locals 1

    .line 169
    iput-object p1, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x1040014

    .line 171
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->credentials_reset_hint:I

    .line 172
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 173
    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 174
    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 176
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 177
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/security/CredentialStorage;Lcom/android/settings/security/CredentialStorage$1;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/security/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 182
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 187
    iget-boolean p1, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-nez p1, :cond_0

    .line 188
    iget-object p0, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 193
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/security/CredentialStorage;->access$100(Lcom/android/settings/security/CredentialStorage;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;

    iget-object p0, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/security/CredentialStorage;Lcom/android/settings/security/CredentialStorage$1;)V

    new-array p0, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/security/CredentialStorage;->access$300(Lcom/android/settings/security/CredentialStorage;I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "CredentialStorage"

    const-string v0, "Failed to launch credential confirmation for a secure user."

    .line 197
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
