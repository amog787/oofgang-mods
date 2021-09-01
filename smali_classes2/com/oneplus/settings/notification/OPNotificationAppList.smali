.class public Lcom/oneplus/settings/notification/OPNotificationAppList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;,
        Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static PROGRESS_MIN_SHOW_TIME:J

.field private static WILL_SHOW_PROGRESS_TIME:J

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private emptyView:Landroid/view/View;

.field private mAllowLEDApps:Landroidx/preference/PreferenceCategory;

.field private mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHandler1:Landroid/os/Handler;

.field private mHasShowProgress:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mNotAllowLEDApps:Landroidx/preference/PreferenceCategory;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private mRoot:Landroidx/preference/PreferenceScreen;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllowLEDApps:Z

.field private mShowNotAllowLEDApps:Z

.field private mShowPromptRunnable:Ljava/lang/Runnable;

.field private mShowPromptTime:J

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const-wide/16 v0, 0x12c

    .line 76
    sput-wide v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->WILL_SHOW_PROGRESS_TIME:J

    const-wide/16 v0, 0x1f4

    .line 77
    sput-wide v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->PROGRESS_MIN_SHOW_TIME:J

    .line 170
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$3;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    .line 67
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowAllowLEDApps:Z

    .line 75
    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowNotAllowLEDApps:Z

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler1:Landroid/os/Handler;

    .line 261
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$4;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 330
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$6;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/notification/OPNotificationAppList;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHasShowProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/LauncherApps;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/Comparator;
    .locals 1

    .line 50
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/notification/OPNotificationAppList;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowPromptTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/notification/OPNotificationAppList;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppsList()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;Ljava/util/ArrayList;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->refreshDisplayedItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/android/settings/notification/NotificationBackend;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " preference activities"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " ;_;"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPNotificationAppList"

    .line 235
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 239
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 240
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 241
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    if-nez v1, :cond_1

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring notification preference activity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    :cond_1
    iget-object v2, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 255
    :cond_2
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 256
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    .locals 4

    .line 185
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;-><init>()V

    .line 186
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    .line 187
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    .line 189
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading application label for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPNotificationAppList"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iget-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    .line 194
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object p0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget p1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, p0, p1}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    .line 196
    iget-object p0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget p1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, p0, p1}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getHighPriority(Ljava/lang/String;I)Z

    .line 197
    iget-object p0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget p1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, p0, p1}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getSensitive(Ljava/lang/String;I)Z

    .line 198
    iget-object p0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getLedDisabled(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->ledDisabled:Z

    return-object v0
.end method

.method private loadAppsList()V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPNotificationAppList"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private refreshDisplayedItems(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->resetUI()V

    const/4 v0, 0x0

    .line 292
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 293
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    .line 295
    new-instance v2, Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 296
    iget-object v3, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.oneplus.deskclock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.android.incallui"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.google.android.calendar"

    .line 297
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.oneplus.calendar"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.android.dialer"

    .line 298
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    const-string v4, "com.oneplus.dialer"

    .line 299
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 302
    :cond_0
    iget-object v3, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 303
    iget-object v3, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v3, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 305
    new-instance v3, Lcom/oneplus/settings/notification/OPNotificationAppList$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$5;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;I)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 317
    iget-boolean v3, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->ledDisabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 318
    iput-boolean v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowNotAllowLEDApps:Z

    .line 319
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 321
    :cond_1
    iput-boolean v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowAllowLEDApps:Z

    .line 322
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 324
    :goto_1
    iget-boolean v1, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->ledDisabled:Z

    xor-int/2addr v1, v4

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 326
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->removeCatagoryIfNoneApp()V

    .line 327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Refreshed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " displayed items"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPNotificationAppList"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeCatagoryIfNoneApp()V
    .locals 2

    .line 278
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowNotAllowLEDApps:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 283
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowAllowLEDApps:Z

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    return-void
.end method

.method private resetUI()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 272
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowNotAllowLEDApps:Z

    .line 274
    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowAllowLEDApps:Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    sget p1, Lcom/android/settings/R$xml;->op_app_notification_list_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 137
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    .line 138
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 139
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroidx/preference/PreferenceScreen;

    const-string p1, "op_notification_allow_led"

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroidx/preference/PreferenceCategory;

    const-string p1, "op_notification_not_allow_led"

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 167
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method protected final onPostExecute()V
    .locals 6

    .line 102
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHasShowProgress:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowPromptTime:J

    sub-long/2addr v2, v4

    .line 104
    sget-wide v4, Lcom/oneplus/settings/notification/OPNotificationAppList;->PROGRESS_MIN_SHOW_TIME:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler1:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/notification/OPNotificationAppList$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$2;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppsList()V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppsList()V

    :goto_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHasShowProgress:Z

    .line 87
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$1;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowPromptRunnable:Ljava/lang/Runnable;

    .line 98
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler1:Landroid/os/Handler;

    sget-wide v1, Lcom/oneplus/settings/notification/OPNotificationAppList;->WILL_SHOW_PROGRESS_TIME:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 161
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 148
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->loading_container:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    .line 152
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->onPreExecute()V

    .line 155
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->resetUI()V

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->onPostExecute()V

    return-void
.end method
