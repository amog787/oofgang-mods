.class public Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;
.super Lcom/android/settings/widget/AppSwitchPreference;
.source "UnrestrictedDataAccessPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private final mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

.field private final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private final mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private final mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/datausage/DataSaverBackend;Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 47
    sget v0, Lcom/android/settings/R$layout;->restricted_switch_widget:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 48
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 49
    iput-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 50
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    .line 51
    invoke-virtual {p2, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 52
    iput-object p3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 53
    iput-object p4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 54
    iput-object p5, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 55
    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 56
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 55
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    .line 58
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->generateKey(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object p0
.end method

.method static generateKey(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDataUsageState()Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    return-object p0
.end method

.method public getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public isDisabledByAdmin()Z
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method public onAttached()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$1;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->isDisabledByAdmin()Z

    move-result v0

    const v1, 0x1020018

    .line 117
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v3, :cond_2

    iget-boolean v3, v3, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    move v3, v2

    .line 121
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 127
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 128
    sget p0, Lcom/android/settings/R$id;->restricted_icon:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x1020040

    .line 130
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_0

    .line 149
    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_0

    .line 84
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    sget v1, Lcom/android/settings/R$string;->data_usage_app_summary_title:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-super {p0}, Landroidx/preference/SwitchPreference;->onClick()V

    :goto_0
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 77
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_0

    .line 141
    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    :cond_0
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void
.end method

.method public updateState()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_2

    .line 174
    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget v0, Lcom/android/settings/R$string;->disabled_by_admin:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_1

    .line 178
    sget v0, Lcom/android/settings/R$string;->restrict_background_blacklisted:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 180
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
