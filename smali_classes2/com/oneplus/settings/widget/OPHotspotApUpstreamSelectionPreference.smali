.class public Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "OPHotspotApUpstreamSelectionPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;
    }
.end annotation


# instance fields
.field private mExistingConfigValue:I

.field private mNetworkTypeEntries:[Ljava/lang/String;

.field private mNetworkTypeSummaries:[Ljava/lang/String;

.field mRestoredNetworkTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mShouldRestore:Z

.field mUpstreamAuto:Landroid/widget/Checkable;

.field mUpstreamCell:Landroid/widget/Checkable;

.field mUpstreamWifi:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x80000000

    .line 59
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x80000000

    .line 59
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, -0x80000000

    .line 59
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mExistingConfigValue:I

    return-void
.end method

.method private addNetworkTypeUpstreamGroupViews(Landroid/view/View;)V
    .locals 2

    .line 205
    sget v0, Lcom/android/settings/R$id;->upstream_auto:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->setup(Landroid/view/View;I)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamAuto:Landroid/widget/Checkable;

    .line 206
    invoke-direct {p0, v1}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->restoreUpstreamTypeIfNeeded(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 208
    sget v0, Lcom/android/settings/R$id;->upstream_wifi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->setup(Landroid/view/View;I)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamWifi:Landroid/widget/Checkable;

    .line 209
    invoke-direct {p0, v1}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->restoreUpstreamTypeIfNeeded(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 211
    sget v0, Lcom/android/settings/R$id;->upstream_cell:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->setup(Landroid/view/View;I)Landroid/widget/Checkable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamCell:Landroid/widget/Checkable;

    .line 212
    invoke-direct {p0, v0}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->restoreUpstreamTypeIfNeeded(I)Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method private isUpstreamTypePreviouslySelected(I)Z
    .locals 3

    .line 247
    iget p0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mExistingConfigValue:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    if-ne p1, v1, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    if-nez p1, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method private restoreUpstreamTypeIfNeeded(I)Z
    .locals 1

    .line 217
    invoke-direct {p0, p1}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->isUpstreamTypePreviouslySelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mRestoredNetworkTypes:Ljava/util/ArrayList;

    .line 218
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

    .line 222
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 223
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 224
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamAuto:Landroid/widget/Checkable;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamWifi:Landroid/widget/Checkable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamCell:Landroid/widget/Checkable;

    if-eqz v2, :cond_3

    .line 225
    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamWifi:Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamCell:Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

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

.method private updateViews(I)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamAuto:Landroid/widget/Checkable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamWifi:Landroid/widget/Checkable;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 146
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamCell:Landroid/widget/Checkable;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-interface {p0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method getUpstreamType()I
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamAuto:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamWifi:Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 233
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamCell:Landroid/widget/Checkable;

    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 242
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upstream type only supports selecting one or all network types"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    .line 113
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    invoke-virtual {p0, p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->wifi_ap_upstream_type_entry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mNetworkTypeEntries:[Ljava/lang/String;

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_ap_upstream_type_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mNetworkTypeSummaries:[Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->addNetworkTypeUpstreamGroupViews(Landroid/view/View;)V

    .line 125
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->updatePositiveButton()V

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mRestoredNetworkTypes:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mShouldRestore:Z

    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onClick()V

    :cond_0
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamAuto:Landroid/widget/Checkable;

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamWifi:Landroid/widget/Checkable;

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamCell:Landroid/widget/Checkable;

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->getUpstreamType()I

    move-result p1

    .line 180
    iput p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mExistingConfigValue:I

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamAuto:Landroid/widget/Checkable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 160
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v2

    .line 161
    invoke-direct {p0, v1}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->updateViews(I)V

    move v1, p1

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamWifi:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    .line 163
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    .line 164
    invoke-direct {p0, v2}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->updateViews(I)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamCell:Landroid/widget/Checkable;

    if-ne p1, v3, :cond_2

    .line 166
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p1

    xor-int/lit8 v1, p1, 0x1

    const/4 p1, 0x2

    .line 167
    invoke-direct {p0, p1}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->updateViews(I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->updatePositiveButton()V

    :cond_3
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 107
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, 0x1

    .line 108
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setBottomShow(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 83
    check-cast p1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;

    .line 85
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 87
    iget-boolean v0, p1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->shouldRestore:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mRestoredNetworkTypes:Ljava/util/ArrayList;

    .line 90
    iget-boolean v1, p1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledAuto:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    iget-boolean v0, p1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledWifi:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mRestoredNetworkTypes:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    iget-boolean p1, p1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledCell:Z

    if-eqz p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mRestoredNetworkTypes:Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mRestoredNetworkTypes:Ljava/util/ArrayList;

    .line 102
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->updatePositiveButton()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 133
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 136
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
    iput-boolean v0, v1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->shouldRestore:Z

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamAuto:Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, v1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledAuto:Z

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamWifi:Landroid/widget/Checkable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    iput-boolean v0, v1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledWifi:Z

    .line 139
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mUpstreamCell:Landroid/widget/Checkable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    iput-boolean v2, v1, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference$SavedState;->enabledCell:Z

    return-object v1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->updatePositiveButton()V

    return-void
.end method

.method public setup(Landroid/view/View;I)Landroid/widget/Checkable;
    .locals 2

    const v0, 0x1020016

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mNetworkTypeEntries:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x1020010

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/widget/OPHotspotApUpstreamSelectionPreference;->mNetworkTypeSummaries:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 198
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    sget p0, Lcom/android/settings/R$drawable;->op_btn_image_single_choice:I

    .line 200
    sget p2, Lcom/android/settings/R$id;->marked:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    check-cast p1, Landroid/widget/Checkable;

    return-object p1
.end method
