.class Lcom/android/settings/EditPinPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const p0, 0x1020003

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_0

    const/16 p1, 0x12

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p1, 0x5

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTextAlignment(I)V

    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onDialogClosed(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0, p1}, Lcom/android/settings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings/EditPinPreference;Z)V

    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    return-void
.end method

.method public showPinDialog()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->onClick()V

    :cond_1
    return-void
.end method
