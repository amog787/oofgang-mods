.class public Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenAutomaticRuleHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mRule:Landroid/app/AutomaticZenRule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "pref_app_header"

    .line 49
    invoke-direct {p0, p1, v0, p3}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 84
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->ic_timelapse:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->ic_event:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 92
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "PrefControllerMixin"

    const-string v0, "Unable to load icon - PackageManager.NameNotFoundException"

    .line 94
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_app_header"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mController:Lcom/android/settings/widget/EntityHeaderController;

    if-nez v1, :cond_1

    .line 70
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 71
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    sget v2, Lcom/android/settings/R$id;->entity_header:I

    .line 72
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 71
    invoke-static {v0, v1, p1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mController:Lcom/android/settings/widget/EntityHeaderController;

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 76
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method
