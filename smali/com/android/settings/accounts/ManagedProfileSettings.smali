.class public Lcom/android/settings/accounts/ManagedProfileSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ManagedProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

.field private mManagedUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/android/settings/accounts/ManagedProfileSettings$1;

    invoke-direct {v0}, Lcom/android/settings/accounts/ManagedProfileSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/ManagedProfileSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserHandle;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method private getManagedUserFromArgument()Landroid/os/UserHandle;
    .locals 3

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.extra.USER"

    .line 102
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {p0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ManagedProfileSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x191

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$xml;->managed_profile_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string/jumbo p1, "user"

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getManagedUserFromArgument()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    if-nez p1, :cond_0

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 79
    :cond_0
    const-class p1, Lcom/android/settings/accounts/WorkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accounts/WorkModePreferenceController;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Lcom/android/settings/accounts/WorkModePreferenceController;->setManagedUser(Landroid/os/UserHandle;)V

    .line 80
    const-class p1, Lcom/android/settings/accounts/ContactSearchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accounts/ContactSearchPreferenceController;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Lcom/android/settings/accounts/ContactSearchPreferenceController;->setManagedUser(Landroid/os/UserHandle;)V

    .line 81
    const-class p1, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;

    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {p1, p0}, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->setManagedUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    new-instance p1, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/ManagedProfileSettings;Lcom/android/settings/accounts/ManagedProfileSettings$1;)V

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
