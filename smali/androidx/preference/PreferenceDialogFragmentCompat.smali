.class public abstract Landroidx/preference/PreferenceDialogFragmentCompat;
.super Landroidx/fragment/app/DialogFragment;
.source "PreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDialogLayoutRes:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Landroidx/preference/DialogPreference;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/preference/PreferenceDialogFragmentCompat;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Landroidx/preference/PreferenceDialogFragmentCompat;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 61
    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 0

    .line 288
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x5

    .line 289
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/DialogPreference;
    .locals 2

    .line 251
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/DialogPreference$TargetFragment;

    .line 255
    invoke-interface {v1, v0}, Landroidx/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DialogPreference;

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    .line 257
    :cond_0
    iget-object p0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    return-object p0
.end method

.method protected needInputMethod()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    const v0, 0x102000b

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 320
    iget-object p0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    const/16 v0, 0x8

    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 325
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, v0, :cond_2

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 339
    iput p2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroidx/preference/DialogPreference$TargetFragment;

    if-eqz v1, :cond_4

    .line 97
    check-cast v0, Landroidx/preference/DialogPreference$TargetFragment;

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 102
    invoke-interface {v0, v1}, Landroidx/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DialogPreference;

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    .line 103
    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 104
    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 105
    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 106
    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    .line 107
    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogLayoutResource()I

    move-result p1

    iput p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    .line 109
    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 113
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 111
    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.layout"

    .line 125
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    const-string v0, "PreferenceDialogFragment.icon"

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 128
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    :goto_1
    return-void

    .line 93
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Target fragment must implement TargetFragment interface"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x2

    .line 151
    iput v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 153
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 155
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 162
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 167
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 170
    instance-of p1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 171
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setBottomShow(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 175
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 176
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->needInputMethod()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 177
    iget-object p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->requestInputMethod(Landroid/app/Dialog;)V

    .line 180
    :cond_2
    iget-object p0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->dialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 300
    iget p0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 305
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 306
    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 224
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 226
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroidx/preference/PreferenceDialogFragmentCompat$1;

    invoke-direct {v1, p0}, Landroidx/preference/PreferenceDialogFragmentCompat$1;-><init>(Landroidx/preference/PreferenceDialogFragmentCompat;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public abstract onDialogClosed(Z)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 344
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 345
    iget p1, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mPositiveButtonText:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mNegativeButtonText:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogMessage:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 141
    iget v0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogLayoutRes:I

    const-string v1, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    iget-object p0, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
