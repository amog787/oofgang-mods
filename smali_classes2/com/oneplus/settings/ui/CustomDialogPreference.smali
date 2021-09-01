.class public abstract Lcom/oneplus/settings/ui/CustomDialogPreference;
.super Landroidx/preference/Preference;
.source "CustomDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogLayoutResId:I

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mNeutralButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010091

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    sget-object v0, Lcom/android/internal/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 p2, 0x4

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 76
    iget p2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 313
    iput p2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mWhichButtonClicked:I

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .line 293
    iget v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 298
    iget p0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onDialogClosed(I)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 320
    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 321
    iget p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mWhichButtonClicked:I

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onDialogClosed(I)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    check-cast p1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;

    .line 379
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 380
    iget-boolean v0, p1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_1

    .line 381
    iget-object p1, p1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_1
    return-void

    .line 374
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 359
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    new-instance v1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, v1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->isDialogShowing:Z

    .line 366
    iget-object p0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public setDialogLayoutResource(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNeutralButtonText(I)V
    .locals 1

    .line 183
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setNeutralButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNeutralButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    .line 247
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    .line 249
    iput v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mWhichButtonClicked:I

    .line 251
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$style;->Theme_AlertDialog:I

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 253
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 262
    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 268
    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 276
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_4

    .line 278
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 280
    :cond_4
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 281
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
