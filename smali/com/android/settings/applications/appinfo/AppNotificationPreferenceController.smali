.class public Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppNotificationPreferenceController.java"


# instance fields
.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    .line 37
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method public static getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v0, :cond_1

    .line 91
    sget p0, Lcom/android/settings/R$string;->notifications_disabled:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 92
    :cond_1
    iget v0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->channelCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 93
    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-static {p1, p0, v1}, Lcom/android/settings/notification/NotificationBackend;->getSentSummary(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 94
    :cond_2
    iget v2, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    if-ne v0, v2, :cond_3

    .line 95
    sget p0, Lcom/android/settings/R$string;->notifications_disabled:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez v2, :cond_4

    .line 98
    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    invoke-static {p1, p0, v1}, Lcom/android/settings/notification/NotificationBackend;->getSentSummary(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 100
    :cond_4
    sget v0, Lcom/android/settings/R$string;->notifications_enabled_with_info:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    .line 101
    invoke-static {p1, v3, v1}, Lcom/android/settings/notification/NotificationBackend;->getSentSummary(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$plurals;->notifications_categories_off:I

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->blockedChannelCount:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 102
    invoke-virtual {v3, v4, p0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    .line 100
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3, p2, p0, p1}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object p0

    .line 82
    invoke-static {p0, p2}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method protected getArguments()Landroid/os/Bundle;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 59
    const-class p0, Lcom/android/settings/notification/app/AppNotificationSettings;

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
