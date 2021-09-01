.class public Lcom/android/settings/gestures/PreventRingingGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PreventRingingGestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    new-instance v0, Lcom/android/settings/gestures/PreventRingingGestureSettings$1;

    sget v1, Lcom/android/settings/R$xml;->prevent_ringing_gesture_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/gestures/PreventRingingGestureSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/gestures/PreventRingingGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/android/settings/gestures/PreventRingingGestureSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v1, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance p1, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 48
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/gestures/PreventRingingGestureSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 76
    sget p0, Lcom/android/settings/R$string;->help_uri_prevent_ringing_gesture:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RingingGestureSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x550

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 71
    sget p0, Lcom/android/settings/R$xml;->prevent_ringing_gesture_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method
