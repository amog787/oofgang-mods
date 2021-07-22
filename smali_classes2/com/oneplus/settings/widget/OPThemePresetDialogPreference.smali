.class public Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "OPThemePresetDialogPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;,
        Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mOnOPThemePresetDialogClickListener:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;

.field private mThemeColorChecked:Landroid/widget/CheckedTextView;

.field private mThemeDarkChecked:Landroid/widget/CheckedTextView;

.field private mThemeLightChecked:Landroid/widget/CheckedTextView;

.field private mThemeMCLChecked:Landroid/widget/CheckedTextView;

.field private themeChooose:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 47
    sget v0, Landroidx/preference/R$attr;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    .line 60
    sget v0, Lcom/android/settings/R$id;->oneplus_theme_preset_mcl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeMCLChecked:Landroid/widget/CheckedTextView;

    .line 61
    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v0, Lcom/android/settings/R$id;->oneplus_theme_preset_color:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeColorChecked:Landroid/widget/CheckedTextView;

    .line 63
    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget v0, Lcom/android/settings/R$id;->oneplus_theme_preset_light:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeLightChecked:Landroid/widget/CheckedTextView;

    .line 65
    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcom/android/settings/R$id;->oneplus_theme_preset_dark:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeDarkChecked:Landroid/widget/CheckedTextView;

    .line 67
    invoke-virtual {p1, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeMCLChecked:Landroid/widget/CheckedTextView;

    sget v0, Lcom/android/settings/R$string;->oneplus_theme_preset_mcl:I

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportAVGTheme()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeMCLChecked:Landroid/widget/CheckedTextView;

    sget v0, Lcom/android/settings/R$string;->op_theme_2__title:I

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportSwTheme()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeMCLChecked:Landroid/widget/CheckedTextView;

    sget v0, Lcom/android/settings/R$string;->op_starwar_mode_title:I

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 75
    :cond_2
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportCustomeTheme()Z

    move-result p1

    if-nez p1, :cond_3

    .line 76
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeMCLChecked:Landroid/widget/CheckedTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 79
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentCustomizationTheme(Landroid/content/Context;)I

    move-result p1

    .line 81
    sget v0, Lcom/android/settings/R$drawable;->op_btn_image_single_choice_selector:I

    .line 82
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeColorChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 83
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeLightChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 84
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeDarkChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    .line 85
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeMCLChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    .line 89
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeColorChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    .line 91
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeLightChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_6

    .line 93
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeDarkChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 95
    iget-object p0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeMCLChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 129
    instance-of v0, p1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 130
    iput v0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->themeChooose:I

    .line 131
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeMCLChecked:Landroid/widget/CheckedTextView;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x3

    .line 132
    iput v1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->themeChooose:I

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeColorChecked:Landroid/widget/CheckedTextView;

    if-ne v1, p1, :cond_1

    .line 135
    iput v0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->themeChooose:I

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeLightChecked:Landroid/widget/CheckedTextView;

    if-ne v0, p1, :cond_2

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->themeChooose:I

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mThemeDarkChecked:Landroid/widget/CheckedTextView;

    if-ne v0, p1, :cond_3

    const/4 p1, 0x1

    .line 141
    iput p1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->themeChooose:I

    .line 144
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mOnOPThemePresetDialogClickListener:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;

    if-eqz p1, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 146
    iget-object p1, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->mOnOPThemePresetDialogClickListener:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;

    iget p0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->themeChooose:I

    invoke-interface {p1, p0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;->onDialogClickListener(I)V

    :cond_4
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    check-cast p1, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;

    .line 122
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 117
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 102
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 108
    :cond_0
    new-instance v1, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 109
    iget p0, p0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;->themeChooose:I

    iput p0, v1, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;->value:I

    return-object v1
.end method
