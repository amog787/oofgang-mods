.class abstract Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDeviceNameEdited:Z

.field private mDeviceNameUpdated:Z

.field mDeviceNameView:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 118
    sget v1, Lcom/android/settings/R$layout;->dialog_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    sget v1, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 120
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object v0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 101
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 177
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 179
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 180
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 183
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz p0, :cond_2

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected abstract getDeviceName()Ljava/lang/String;
.end method

.method protected abstract getDialogTitle()I
.end method

.method public synthetic lambda$onCreateDialog$0$BluetoothNameDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$BluetoothNameDialogFragment(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "device_name"

    .line 85
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_name_edited"

    .line 86
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 88
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDialogTitle()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->bluetooth_rename_button:I

    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothNameDialogFragment$pGuotXbZkr5ej_7pdbB840goZcw;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothNameDialogFragment$pGuotXbZkr5ej_7pdbB840goZcw;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    .line 91
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 96
    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothNameDialogFragment$UwiP0mVIJKgl9XIciCSL5BjtkO4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothNameDialogFragment$UwiP0mVIJKgl9XIciCSL5BjtkO4;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 106
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 154
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 155
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 160
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 163
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    const-string v0, "device_name_edited"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected abstract setDeviceName(Ljava/lang/String;)V
.end method

.method updateDeviceName()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    const/4 v1, 0x0

    .line 171
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 172
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
