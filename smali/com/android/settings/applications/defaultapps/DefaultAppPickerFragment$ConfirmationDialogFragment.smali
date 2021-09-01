.class public Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DefaultAppPickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmationDialogFragment"
.end annotation


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x317

    return p0
.end method

.method public init(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_key"

    .line 136
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra_message"

    .line 137
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 139
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 160
    instance-of p2, p1, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;

    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    .line 162
    check-cast p1, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;

    const-string p2, "extra_key"

    .line 163
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 150
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "extra_message"

    .line 151
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 152
    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 p1, 0x1040000

    .line 153
    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method
