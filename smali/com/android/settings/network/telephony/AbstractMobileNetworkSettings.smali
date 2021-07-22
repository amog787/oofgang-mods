.class abstract Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "AbstractMobileNetworkSettings.java"


# instance fields
.field private mHiddenControllerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRedrawRequired:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$getPreferenceControllersAsList$0(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 54
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$onExpandButtonClick$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onExpandButtonClick$2(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    .line 81
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$redrawPreferenceControllers$4(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 138
    invoke-virtual {p2, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->updateVisiblePreferenceControllers(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method private synthetic lambda$updatePreferenceStates$3(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->updateVisiblePreferenceControllers(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method private updateVisiblePreferenceControllers(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->searchForPreference(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->isPreferenceExpanded(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object p0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 113
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 116
    :cond_2
    invoke-virtual {p2, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method getPreferenceControllersAsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$Pq1caXnhffD6n-VOEzsL1irxJxg;

    invoke-direct {v1, v0}, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$Pq1caXnhffD6n-VOEzsL1irxJxg;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public synthetic lambda$redrawPreferenceControllers$4$AbstractMobileNetworkSettings(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->lambda$redrawPreferenceControllers$4(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public synthetic lambda$updatePreferenceStates$3$AbstractMobileNetworkSettings(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->lambda$updatePreferenceStates$3(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public onExpandButtonClick()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$bo6YOG7aYe8ttG4vhoq1luq3stY;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$bo6YOG7aYe8ttG4vhoq1luq3stY;

    .line 77
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$OSqqtYmfC1bCckWQ6N0SQ1RcLlo;

    invoke-direct {v2, v0}, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$OSqqtYmfC1bCckWQ6N0SQ1RcLlo;-><init>(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onExpandButtonClick()V

    return-void
.end method

.method redrawPreferenceControllers()V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mIsRedrawRequired:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mIsRedrawRequired:Z

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->getPreferenceControllersAsList()Ljava/util/List;

    move-result-object v2

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->setTelephonyAvailabilityStatus(Ljava/util/Collection;)Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    move-result-object v3

    .line 136
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    .line 137
    new-instance v5, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$asImtwOFBrFw_KxXxr9JqQzNra8;

    invoke-direct {v5, p0, v4}, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$asImtwOFBrFw_KxXxr9JqQzNra8;-><init>(Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;Landroidx/preference/PreferenceScreen;)V

    invoke-interface {v2, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redraw fragment: +"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AbsNetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v3}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->close()V

    return-void
.end method

.method searchForPreference(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 60
    invoke-virtual {p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method setTelephonyAvailabilityStatus(Ljava/util/Collection;)Lcom/android/settings/network/telephony/TelephonyStatusControlSession;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)",
            "Lcom/android/settings/network/telephony/TelephonyStatusControlSession;"
        }
    .end annotation

    .line 69
    new-instance p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$Builder;->build()Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    move-result-object p0

    return-object p0
.end method

.method protected updatePreferenceStates()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mIsRedrawRequired:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->redrawPreferenceControllers()V

    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->getPreferenceControllersAsList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$m5ehCoz_h9df7IWByDb_ijDU4wU;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/network/telephony/-$$Lambda$AbstractMobileNetworkSettings$m5ehCoz_h9df7IWByDb_ijDU4wU;-><init>(Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;Landroidx/preference/PreferenceScreen;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
