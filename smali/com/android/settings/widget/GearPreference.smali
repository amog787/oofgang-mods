.class public Lcom/android/settings/widget/GearPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "GearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/GearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    .line 46
    sget p0, Lcom/android/settings/R$layout;->preference_widget_gear:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 57
    sget v0, Lcom/android/settings/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/android/settings/widget/GearPreference;->mOnGearClickListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 p0, 0x1

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->settings_button:I

    if-ne p1, v0, :cond_0

    .line 71
    iget-object p1, p0, Lcom/android/settings/widget/GearPreference;->mOnGearClickListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1, p0}, Lcom/android/settings/widget/GearPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/widget/GearPreference;)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/widget/GearPreference;->mOnGearClickListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    .line 41
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/widget/GearPreference;->mOnGearClickListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
