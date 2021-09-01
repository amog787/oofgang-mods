.class public Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;,
        Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;,
        Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;,
        Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;",
        "Landroid/hardware/input/InputManager$InputDeviceListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceId:I

.field private mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 63
    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->onKeyboardLayoutClicked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->onSetupLayoutsButtonClicked()V

    return-void
.end method

.method private onKeyboardLayoutClicked(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/KeyboardLayout;

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 168
    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method private onSetupLayoutsButtonClicked()V
    .locals 1

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-interface {v0, p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;->onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method private updateSwitchHintVisibility()V
    .locals 2

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 218
    sget v1, Lcom/android/settings/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x21d

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "layout"

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 78
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "inputDeviceIdentifier"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/settings/R$string;->keyboard_layout_dialog_title:I

    .line 103
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->keyboard_layout_dialog_setup_button:I

    new-instance v2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$2;-><init>(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;)V

    .line 104
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    new-instance v2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;-><init>(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;)V

    const/4 v3, -0x1

    .line 111
    invoke-virtual {v1, p1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$layout;->keyboard_layout_dialog_switch_hint:I

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    .line 120
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance p1, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;-><init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V

    return-object p1
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 2

    .line 203
    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 210
    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;",
            "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ")V"
        }
    .end annotation

    .line 181
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 182
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget-object v0, p2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    iget v0, p2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setCheckedItem(I)V

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget p2, p2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    .line 193
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->updateSwitchHintVisibility()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    .line 143
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 130
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 135
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceId:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    const-string v0, "inputDeviceIdentifier"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
