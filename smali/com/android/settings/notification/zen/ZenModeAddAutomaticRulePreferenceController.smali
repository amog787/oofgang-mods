.class public Lcom/android/settings/notification/zen/ZenModeAddAutomaticRulePreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenModeAddAutomaticRulePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;
    }
.end annotation


# instance fields
.field private final mZenServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string/jumbo v0, "zen_mode_add_automatic_rule"

    .line 38
    invoke-direct {p0, p1, v0, p2, p4}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 39
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeAddAutomaticRulePreferenceController;->mZenServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "zen_mode_add_automatic_rule"

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 57
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_add_automatic_rule"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;-><init>(Lcom/android/settings/notification/zen/ZenModeAddAutomaticRulePreferenceController;)V

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddAutomaticRulePreferenceController;->mZenServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-static {p1, v0, v1, p0}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->show(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$PositiveClickListener;Lcom/android/settings/utils/ZenServiceListing;)V

    const/4 p0, 0x1

    return p0
.end method
