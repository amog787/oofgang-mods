.class public Lcom/android/settings/notification/app/ConversationNotificationSettings;
.super Lcom/android/settings/notification/app/NotificationSettings;
.source "ConversationNotificationSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/notification/app/NotificationSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    .line 81
    new-instance v1, Lcom/android/settings/notification/app/ConversationHeaderPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/notification/app/ConversationHeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/ConversationPriorityPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/app/ConversationPriorityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/HighImportancePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/app/HighImportancePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/SoundPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/android/settings/notification/app/SoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/VibrationPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/app/VibrationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/VisibilityPreferenceController;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/notification/app/VisibilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/LightsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/app/LightsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/BadgePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/app/BadgePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/NotificationsOffPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/app/NotificationsOffPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/app/BubblePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/app/BubblePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;ZLcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/ConversationDemotePreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/app/ConversationDemotePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/BubbleCategoryPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/app/BubbleCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/app/BubbleLinkPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/notification/app/BubbleLinkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConvoSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x726

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 75
    sget p0, Lcom/android/settings/R$xml;->conversation_notification_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 60
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/app/NotificationPreferenceController;

    .line 61
    instance-of v1, v0, Landroid/preference/PreferenceManager$OnActivityResultListener;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Landroid/preference/PreferenceManager$OnActivityResultListener;

    .line 63
    invoke-interface {v0, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 43
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationSettings;->onResume()V

    .line 44
    iget v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mUid:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationSettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/app/NotificationPreferenceController;

    .line 51
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationSettings;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    iget-object v6, p0, Lcom/android/settings/notification/app/NotificationSettings;->mConversationDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/settings/notification/app/NotificationSettings;->mConversationInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v8, p0, Lcom/android/settings/notification/app/NotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/notification/app/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 53
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void

    :cond_2
    :goto_1
    const-string v0, "ConvoSettings"

    const-string v1, "Missing package or uid or packageinfo or channel"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
