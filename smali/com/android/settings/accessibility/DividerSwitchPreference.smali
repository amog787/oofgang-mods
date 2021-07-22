.class public final Lcom/android/settings/accessibility/DividerSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "DividerSwitchPreference.java"


# instance fields
.field private mDividerAllowBelow:Ljava/lang/Boolean;

.field private mDividerAllowedAbove:Ljava/lang/Boolean;

.field private mSwitchVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mDividerAllowedAbove:Ljava/lang/Boolean;

    .line 38
    iput-object p1, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mDividerAllowBelow:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mSwitchVisibility:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mDividerAllowedAbove:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mDividerAllowBelow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 48
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget p0, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mSwitchVisibility:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSwitchVisibility(I)V
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mSwitchVisibility:I

    if-eq v0, p1, :cond_0

    .line 85
    iput p1, p0, Lcom/android/settings/accessibility/DividerSwitchPreference;->mSwitchVisibility:I

    .line 86
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
