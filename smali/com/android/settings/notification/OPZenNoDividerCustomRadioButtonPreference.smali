.class public Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "OPZenNoDividerCustomRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;,
        Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/RadioButton;

.field private mChecked:Z

.field private mOnGearClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnGearClickListener;

.field private mOnRadioButtonClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 59
    sget p1, Lcom/android/settings/R$layout;->op_preference_no_divivider_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget p1, Lcom/android/settings/R$layout;->op_preference_no_divivider_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget p1, Lcom/android/settings/R$layout;->op_preference_no_divivider_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    sget p1, Lcom/android/settings/R$layout;->op_preference_no_divivider_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    .line 64
    sget p0, Lcom/android/settings/R$layout;->preference_widget_gear:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 80
    sget v0, Lcom/android/settings/R$id;->checkbox_frame:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x1020001

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 86
    iget-boolean v1, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 89
    :cond_1
    sget v0, Lcom/android/settings/R$id;->preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnGearClickListener;

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020018

    if-ne v0, v1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnGearClickListener;

    if-eqz p1, :cond_1

    .line 121
    invoke-interface {p1, p0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->checkbox_frame:I

    if-ne p1, v0, :cond_1

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz p1, :cond_1

    .line 125
    invoke-interface {p1, p0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mChecked:Z

    .line 101
    iget-object p0, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnRadioButtonClickListener(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
