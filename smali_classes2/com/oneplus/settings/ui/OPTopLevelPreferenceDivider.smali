.class public Lcom/oneplus/settings/ui/OPTopLevelPreferenceDivider;
.super Landroidx/preference/Preference;
.source "OPTopLevelPreferenceDivider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTopLevelPreferenceDivider;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTopLevelPreferenceDivider;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 34
    sget p1, Lcom/android/settings/R$layout;->op_top_level_preference_divider:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 p0, 0x0

    .line 41
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 42
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method
