.class public Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutofillPickerConfirmationDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    .line 105
    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$000(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->setCancelListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
