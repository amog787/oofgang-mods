.class public Lcom/android/settingslib/widget/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mAppendix:Landroid/widget/TextView;

.field private mAppendixVisibility:I

.field private mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendixVisibility:I

    .line 84
    invoke-direct {p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendixVisibility:I

    .line 71
    invoke-direct {p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 171
    sget v0, Lcom/android/settings/R$layout;->preference_widget_radiobutton:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 172
    sget v0, Lcom/android/settings/R$layout;->op_preference_radio:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method


# virtual methods
.method public getAppendix()Ljava/lang/CharSequence;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendix:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 129
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 131
    sget v0, Lcom/android/settings/R$id;->summary_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    .line 133
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    sget v0, Lcom/android/settings/R$id;->appendix:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendix:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 138
    iget v2, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendixVisibility:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->getAppendix()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object p0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mAppendix:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    const p0, 0x1020016

    .line 147
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    .line 149
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p1, 0x3

    .line 150
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_3
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/widget/RadioButtonPreference;->mListener:Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V

    :cond_0
    return-void
.end method
