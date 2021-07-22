.class public Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenCustomRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;,
        Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/RadioButton;

.field private mChecked:Z

.field private mOnGearClickListener:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnGearClickListener;

.field private mOnRadioButtonClickListener:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 59
    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target_radio:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    sget p1, Lcom/android/settings/R$layout;->op_preference_two_target_radio:I

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
    .locals 3

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

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 86
    iget-boolean v1, p0, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 91
    :cond_1
    sget v0, Lcom/android/settings/R$id;->preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    sget v1, Lcom/android/settings/R$id;->two_target_divider:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 93
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnGearClickListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 104
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->preference:I

    if-ne v0, v1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnGearClickListener;

    if-eqz p1, :cond_1

    .line 138
    invoke-interface {p1, p0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->checkbox_frame:I

    if-ne p1, v0, :cond_1

    .line 141
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p1, p0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->mChecked:Z

    .line 115
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnGearClickListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnGearClickListener;

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnRadioButtonClickListener(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
