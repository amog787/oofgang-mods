.class public Lcom/android/settings/applications/DefaultAppSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DefaultAppSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/android/settings/applications/DefaultAppSettings$1;

    invoke-direct {v0}, Lcom/android/settings/applications/DefaultAppSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/DefaultAppSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 182
    new-instance v0, Lcom/android/settings/applications/DefaultAppSettings$2;

    invoke-direct {v0}, Lcom/android/settings/applications/DefaultAppSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/DefaultAppSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/android/settings/applications/DefaultAppSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    new-instance v2, Lcom/android/settings/applications/defaultapps/DefaultWorkPhonePreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/defaultapps/DefaultWorkPhonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v2, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/defaultapps/DefaultWorkBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    new-instance v2, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string/jumbo v3, "work_app_defaults"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v1

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;

    const-string v2, "assist_and_voice_input"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initDefaultAppSettings()V

    .line 99
    new-instance v1, Lcom/oneplus/settings/defaultapp/controller/DefaultCameraController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultCameraController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/oneplus/settings/defaultapp/controller/DefaultGalleryController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultGalleryController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/oneplus/settings/defaultapp/controller/DefaultMusicController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultMusicController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/oneplus/settings/defaultapp/controller/DefaultMailController;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/defaultapp/controller/DefaultMailController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 74
    invoke-static {p1}, Lcom/android/settings/applications/DefaultAppSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DefaultAppSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x82

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 69
    sget p0, Lcom/android/settings/R$xml;->app_default_settings:I

    return p0
.end method
