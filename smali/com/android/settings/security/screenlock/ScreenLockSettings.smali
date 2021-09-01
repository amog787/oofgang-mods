.class public Lcom/android/settings/security/screenlock/ScreenLockSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ScreenLockSettings.java"

# interfaces
.implements Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    .line 117
    new-instance v0, Lcom/android/settings/security/screenlock/ScreenLockSettings$1;

    sget v1, Lcom/android/settings/R$xml;->screen_lock_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/security/screenlock/ScreenLockSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/dashboard/DashboardFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v1, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    const-string v2, "security_setting_lock_screen_notif"

    const-string v3, "security_setting_lock_screen_notif_work_header"

    const-string v4, "security_setting_lock_screen_notif_work"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 100
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance p2, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;

    sget v1, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-direct {p2, p0, v1, p3}, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance p2, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;

    sget v1, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-direct {p2, p0, v1, p3}, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance p2, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;

    sget v1, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-direct {p2, p0, v1, p3}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance p2, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/OwnerInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance p1, Lcom/oneplus/settings/security/DisableQuickSettingsWhenLockedPreferenceController;

    sget p2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->MY_USER_ID:I

    invoke-direct {p1, p0, p2, p3}, Lcom/oneplus/settings/security/DisableQuickSettingsWhenLockedPreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 78
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 79
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ScreenLockSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4f1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$xml;->screen_lock_settings:I

    return p0
.end method

.method public onOwnerInfoUpdated()V
    .locals 1

    .line 85
    const-class v0, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    return-void
.end method
