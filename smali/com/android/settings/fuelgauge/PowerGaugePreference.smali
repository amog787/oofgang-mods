.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "PowerGaugePreference.java"


# instance fields
.field private appendix:Landroid/view/View;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPowerState:I

.field private mProgress:Ljava/lang/CharSequence;

.field private mShowAnomalyIcon:Z

.field private mSwitch:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->preference_widget_summary:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 75
    iput-object p5, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 76
    iput-object p4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    return-void
.end method

.method private convertToSpanned(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<font color=\"#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\">"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 153
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    .line 154
    invoke-static {p0, p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private setButtonVisible()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 141
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 145
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->shadowView()V

    :cond_2
    :goto_1
    return-void
.end method

.method private setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 108
    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private shadowView()V
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->appendix:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updatePowerState()V
    .locals 5

    .line 125
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->high_power_app_text_red:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "D94B41"

    .line 127
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->convertToSpanned(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->high_power_app_text_nomal:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->shadowView()V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setButtonVisible()V

    return-void
.end method


# virtual methods
.method getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    return-object p0
.end method

.method public getPercent()Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 190
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 192
    sget v0, Lcom/android/settings/R$id;->widget_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 195
    sget v1, Lcom/android/settings/R$drawable;->ic_warning_24dp:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 201
    :goto_0
    sget v0, Lcom/android/settings/R$id;->widget_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    .line 202
    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->oneplus_stop_run:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->oneplus_accent_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setButtonVisible()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const v0, 0x1020016

    .line 208
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 209
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPercent(D)V
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-static {p1, p2, v0}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 88
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->updatePowerState()V

    .line 90
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    .line 100
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->updatePowerState()V

    return-void
.end method

.method public shouldShowAnomalyIcon(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    .line 177
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
