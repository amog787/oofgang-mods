.class public Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "OPHotspotApBandSelectionPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;
    }
.end annotation


# static fields
.field static final KEY_CHECKED_BANDS:Ljava/lang/String; = "checked_bands"

.field static final KEY_HOTSPOT_SUPER_STATE:Ljava/lang/String; = "hotspot_super_state"


# instance fields
.field mApBandRadioGroup:Landroid/widget/RadioGroup;

.field private mBandEntries:[I

.field private mBandSummaries:[Ljava/lang/String;

.field private mExistingConfigValue:I

.field mRadio2G:Landroid/widget/RadioButton;

.field mRadio5G:Landroid/widget/RadioButton;

.field mRestoredBands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mShouldRestore:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x80000000

    .line 63
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x80000000

    .line 63
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x80000000

    .line 63
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, -0x80000000

    .line 63
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method private addApBandRadioGroupViews(Landroid/widget/LinearLayout;)V
    .locals 3

    .line 175
    sget v0, Lcom/android/settings/R$id;->radio_2g:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    .line 176
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mBandSummaries:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->restoreBandIfNeeded(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 179
    sget v0, Lcom/android/settings/R$id;->radio_5g:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    .line 180
    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mBandSummaries:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->restoreBandIfNeeded(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 183
    sget v0, Lcom/android/settings/R$id;->radioGroup_ap_band:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mApBandRadioGroup:Landroid/widget/RadioGroup;

    .line 184
    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private isBandPreviouslySelected(I)Z
    .locals 4

    .line 216
    iget v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/16 p0, 0x8

    if-eq v0, p0, :cond_0

    return v1

    :cond_0
    return v2

    .line 222
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mBandEntries:[I

    array-length v0, p0

    if-nez v0, :cond_2

    aget p0, p0, v1

    goto :goto_0

    :cond_2
    aget p0, p0, v2

    :goto_0
    if-ne p1, p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 220
    :cond_4
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mBandEntries:[I

    aget p0, p0, v1

    if-ne p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private restoreBandIfNeeded(I)Z
    .locals 1

    .line 189
    invoke-direct {p0, p1}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->isBandPreviouslySelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updatePositiveButton()V
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 195
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 196
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    if-eqz v2, :cond_3

    .line 197
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method getWifiBand()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 205
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 211
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wifi Config only supports selecting one or all bands"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    .line 111
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    invoke-virtual {p0, p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->wifi_ap_band_summary_full:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mBandSummaries:[Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_ap_band_config_full:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mBandEntries:[I

    .line 120
    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->addApBandRadioGroupViews(Landroid/widget/LinearLayout;)V

    .line 123
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->updatePositiveButton()V

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mShouldRestore:Z

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->updatePositiveButton()V

    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onClick()V

    :cond_0
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->getWifiBand()I

    move-result p1

    .line 160
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, 0x1

    .line 106
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setBottomShow(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 84
    check-cast p1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;

    .line 86
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 88
    iget-boolean v0, p1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 91
    iget-boolean v1, p1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    iget-boolean p1, p1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 100
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->updatePositiveButton()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 131
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, v1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio2G:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, v1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    .line 136
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mRadio5G:Landroid/widget/RadioButton;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, v1, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    return-object v1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->updatePositiveButton()V

    return-void
.end method

.method public setExistingConfigValue(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->mExistingConfigValue:I

    return-void
.end method
