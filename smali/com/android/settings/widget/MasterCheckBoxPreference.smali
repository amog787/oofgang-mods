.class public Lcom/android/settings/widget/MasterCheckBoxPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "MasterCheckBoxPreference.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field private mEnableCheckBox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/MasterCheckBoxPreference;)Landroid/widget/CheckBox;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MasterCheckBoxPreference;Z)Z
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    .line 59
    sget p0, Lcom/android/settings/R$layout;->preference_widget_master_checkbox:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/android/settings/widget/MasterCheckBoxPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MasterCheckBoxPreference$1;-><init>(Lcom/android/settings/widget/MasterCheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_0
    sget v0, Lcom/android/settings/R$id;->checkboxWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean p0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 110
    iget-object p0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    .line 103
    iget-object p0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setCheckBoxEnabled(Z)V

    return-void
.end method
