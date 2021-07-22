.class public Landroidx/preference/DividerSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "DividerSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    sget v0, Landroidx/preference/R$attr;->dividerSwitchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DividerSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DividerSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    new-instance p1, Landroidx/preference/DividerSwitchPreference$1;

    invoke-direct {p1, p0}, Landroidx/preference/DividerSwitchPreference$1;-><init>(Landroidx/preference/DividerSwitchPreference;)V

    iput-object p1, p0, Landroidx/preference/DividerSwitchPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 56
    sget v0, Landroidx/preference/R$id;->left_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Landroidx/preference/DividerSwitchPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x1020018

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    sget v1, Landroidx/preference/R$id;->switchWidget:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Landroidx/preference/DividerSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p1, p0, Landroidx/preference/DividerSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 77
    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 78
    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 80
    :cond_1
    iget-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    .line 82
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/SwitchPreference;->doVibrate()V

    return-void
.end method
