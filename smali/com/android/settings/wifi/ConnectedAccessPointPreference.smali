.class public Lcom/android/settings/wifi/ConnectedAccessPointPreference;
.super Lcom/android/settings/wifi/LongPressAccessPointPreference;
.source "ConnectedAccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mIsCaptivePortal:Z

.field private mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZLandroidx/fragment/app/Fragment;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p4

    move-object v6, p6

    .line 44
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected getWidgetLayoutResourceId()I
    .locals 0

    .line 54
    sget p0, Lcom/android/settings/R$layout;->preference_widget_gear_optional_background:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 76
    sget v0, Lcom/android/settings/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v1, Lcom/android/settings/R$id;->settings_button_no_background:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 80
    iget-boolean v1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-boolean p0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->settings_button:I

    if-ne p1, v0, :cond_0

    .line 87
    iget-object p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;

    if-eqz p1, :cond_0

    .line 88
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    .line 61
    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setShowDivider(Z)V

    .line 62
    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    if-eqz v0, :cond_0

    .line 63
    sget v0, Lcom/android/settings/R$string;->wifi_tap_to_sign_in:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method public setCaptivePortal(Z)V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    if-eq v0, p1, :cond_0

    .line 95
    iput-boolean p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    .line 49
    sget p1, Lcom/android/settings/R$layout;->op_preference_access_point:I

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;

    .line 69
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    return-void
.end method
