.class public Lcom/oneplus/settings/others/OPExperienceImprovementFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPExperienceImprovementFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/oneplus/settings/others/OPExperienceImprovementFragment$1;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPExperienceImprovementFragment$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPExperienceImprovementFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

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

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;

    invoke-direct {v1, p1}, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v2, Lcom/oneplus/settings/others/OPUserExperienceSwitchPreferenceController;

    invoke-direct {v2, p1}, Lcom/oneplus/settings/others/OPUserExperienceSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v3, Lcom/oneplus/settings/others/OPSystemStabilitySwitchPreferenceController;

    invoke-direct {v3, p1}, Lcom/oneplus/settings/others/OPSystemStabilitySwitchPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v4, Lcom/oneplus/settings/others/OPSplashScreeenInfoServiceSwitchPreferenceController;

    invoke-direct {v4, p1}, Lcom/oneplus/settings/others/OPSplashScreeenInfoServiceSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v5, Lcom/oneplus/settings/others/OPServiceMessageSwitchPreferenceController;

    invoke-direct {v5, p1}, Lcom/oneplus/settings/others/OPServiceMessageSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v6, Lcom/oneplus/settings/others/OPServiceAppUpdatePreferenceController;

    invoke-direct {v6, p1}, Lcom/oneplus/settings/others/OPServiceAppUpdatePreferenceController;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v7, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;

    invoke-direct {v7, p1}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPExperienceImprovementFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 30
    sget p0, Lcom/android/settings/R$xml;->op_experience_improvement_programs:I

    return p0
.end method
