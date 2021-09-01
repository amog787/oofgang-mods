.class public Lcom/android/settingslib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$AppFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$AppEntry;,
        Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settingslib/applications/ApplicationsState$Callbacks;,
        Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settingslib/applications/ApplicationsState$MainHandler;,
        Lcom/android/settingslib/applications/ApplicationsState$Session;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final INSTALL_OR_UPDATE_DATE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final THEME_OVERLAY_CATEGORYS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sInstance:Lcom/android/settingslib/applications/ApplicationsState;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAdminRetrieveFlags:I

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurComputingSizeUserId:I

.field mCurComputingSizeUuid:Ljava/util/UUID;

.field mCurId:J

.field final mEntriesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field mHaveInstantApps:Z

.field private mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mIpm:Landroid/content/pm/IPackageManager;

.field final mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mStats:Landroid/app/usage/StorageStatsManager;

.field final mSystemModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemPersistApplications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mThread:Landroid/os/HandlerThread;

.field final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 100
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 107
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->THEME_OVERLAY_CATEGORYS:Ljava/util/ArrayList;

    .line 1776
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 1797
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1807
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1818
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INSTALL_OR_UPDATE_DATE_COMPARATOR:Ljava/util/Comparator;

    .line 1829
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1849
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1863
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1876
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1893
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1918
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1948
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1959
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$14;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$14;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1970
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$15;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$15;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1981
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$16;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$16;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1992
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$17;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$17;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2005
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$18;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$18;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2033
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$19;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$19;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2094
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$20;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$20;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2109
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$21;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$21;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2124
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$22;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$22;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 2140
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$23;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$23;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V
    .locals 7

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    const-wide/16 v0, 0x1

    .line 160
    iput-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    .line 166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 173
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 174
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemPersistApplications:Ljava/util/HashMap;

    .line 216
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 218
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    .line 219
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 220
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 221
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    .line 222
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p1

    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_0

    aget v4, p1, v3

    .line 223
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ApplicationsState.Loader"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 227
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 228
    new-instance p1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const p1, 0x408200

    .line 231
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    const p1, 0x8200

    .line 234
    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 237
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object p1

    .line 238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ModuleInfo;

    .line 239
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->isHidden()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    .line 250
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getSystemPersistMetaData(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p2}, Lcom/android/settingslib/applications/ApplicationsState;->addForceStopWhiteList(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_2

    .line 269
    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    .line 271
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 274
    :catch_0
    :goto_3
    :try_start_1
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 88
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->THEME_OVERLAY_CATEGORYS:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(II)Z
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->addUser(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->removeUser(I)V

    return-void
.end method

.method private addForceStopWhiteList(Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .line 278
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemPersistApplications:Ljava/util/HashMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addUser(I)V
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 748
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 751
    iget-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz p1, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 756
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 758
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 759
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 761
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private static anyAppIsRemoved(Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .line 440
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 444
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    return v3

    .line 449
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 450
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v4, 0x800000

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 451
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 453
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    if-nez v6, :cond_3

    .line 455
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 456
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_3
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v5, v4}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 465
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v2, v4}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    .line 468
    :cond_6
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-eqz v2, :cond_7

    .line 471
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_7
    return v3

    :cond_8
    return v1
.end method

.method private getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    const/4 v0, 0x0

    .line 559
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 561
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 562
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 7

    .line 782
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 783
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up entry of pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ApplicationsState"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    .line 788
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->isHiddenModule(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No AppEntry for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (hidden module)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 795
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating AppEntry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 798
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 800
    :cond_1
    iget-object p0, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq p0, p1, :cond_2

    .line 801
    iput-object p1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    .line 124
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p0

    return-object p0
.end method

.method static getInstance(Landroid/app/Application;Landroid/content/pm/IPackageManager;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 2

    .line 129
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;-><init>(Landroid/app/Application;Landroid/content/pm/IPackageManager;)V

    sput-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    .line 133
    :cond_0
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 832
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/Utils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSystemPersistMetaData(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .line 284
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 285
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 286
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p1, "persist"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p1, :cond_0

    .line 821
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide p0, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x2

    return-wide p0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p1, :cond_0

    .line 812
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    iget-wide p0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/16 p0, -0x2

    return-wide p0
.end method

.method private static hasFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 295
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$requestSize$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 3

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 604
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 601
    invoke-virtual {v0, v1, p2, v2}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 607
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 606
    invoke-virtual {v1, v2, p1}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v1

    .line 608
    new-instance p1, Landroid/content/pm/PackageStats;

    invoke-direct {p1, p2, p3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 609
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide p2

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 610
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide p2

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 611
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p2

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :try_start_1
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 618
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query stats: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApplicationsState"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :try_start_2
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method private removeUser(I)V
    .locals 4

    .line 766
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 769
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 770
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 771
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 774
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 775
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 778
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method addPackage(Ljava/lang/String;I)V
    .locals 4

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "ApplicationsState"

    const-string v2, "addPackage acquired lock"

    .line 658
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ApplicationsState"

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    const-string p0, "ApplicationsState"

    const-string p1, "addPackage release lock: not resumed"

    .line 664
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    monitor-exit v0

    return-void

    .line 667
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    const-string p0, "ApplicationsState"

    const-string p1, "Package already exists!"

    .line 668
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ApplicationsState"

    const-string p1, "addPackage release lock: already exists"

    .line 669
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    monitor-exit v0

    return-void

    .line 672
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 673
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 672
    :goto_0
    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_3

    .line 676
    monitor-exit v0

    return-void

    .line 678
    :cond_3
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x1

    if-nez p2, :cond_5

    .line 679
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    .line 681
    monitor-exit v0

    return-void

    .line 683
    :cond_4
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 685
    :cond_5
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 686
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 688
    :cond_6
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 690
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 692
    :cond_7
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 693
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    const-string p0, "ApplicationsState"

    const-string p1, "addPackage releasing lock"

    .line 695
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method clearEntries()V
    .locals 2

    const/4 v0, 0x0

    .line 481
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .line 509
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 512
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 513
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    return-void
.end method

.method doPauseLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 521
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 522
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    :cond_0
    return-void
.end method

.method doResumeIfNeededLocked()V
    .locals 8

    .line 319
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 323
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 324
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$1;)V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 325
    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 329
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 330
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 333
    :try_start_0
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_2

    .line 334
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    :cond_2
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 339
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    :goto_1
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 338
    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 341
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "ApplicationsState"

    const-string v6, "Error during doResumeIfNeededLocked"

    .line 343
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 347
    :cond_4
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 350
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    goto :goto_3

    :cond_5
    move v3, v4

    .line 352
    :goto_2
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 353
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-boolean v0, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 357
    :cond_6
    :goto_3
    iput-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 358
    iput-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 359
    :goto_4
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_d

    .line 360
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 363
    iget-boolean v5, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_8

    .line 364
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    .line 365
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 369
    :cond_7
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 371
    :cond_8
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settingslib/applications/ApplicationsState;->isHiddenModule(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 372
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    add-int/lit8 v5, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v4, v5

    goto :goto_6

    .line 375
    :cond_9
    iget-boolean v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    if-nez v5, :cond_a

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 376
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 379
    :cond_a
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_b

    .line 381
    iget v6, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v0

    if-lez v6, :cond_b

    .line 382
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 387
    :cond_b
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_c

    .line 389
    iput-object v3, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    :cond_c
    :goto_6
    add-int/2addr v4, v0

    goto :goto_4

    .line 393
    :cond_d
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->anyAppIsRemoved(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 395
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    .line 397
    :cond_e
    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 399
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method

.method public ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 1

    .line 570
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    .line 573
    :cond_0
    monitor-enter p1

    .line 574
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;)Z

    .line 575
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ensureLabelDescription(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 1

    .line 584
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->labelDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 587
    :cond_0
    monitor-enter p1

    .line 588
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabelDescriptionLocked(Landroid/content/Context;)V

    .line 589
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 5

    const-string v0, "ApplicationsState"

    const-string v1, "getEntry about to acquire lock..."

    .line 529
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 540
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 543
    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "ApplicationsState"

    const-string p2, "getEntry couldn\'t reach PackageManager"

    .line 545
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    monitor-exit v0

    return-object v2

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 550
    invoke-direct {p0, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    :cond_2
    const-string p0, "ApplicationsState"

    const-string p1, "...getEntry releasing lock"

    .line 553
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 555
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public haveDisabledApps()Z
    .locals 0

    .line 488
    iget-boolean p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    return p0
.end method

.method public haveInstantApps()Z
    .locals 0

    .line 492
    iget-boolean p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    return p0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 646
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 647
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 648
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public invalidatePackage(Ljava/lang/String;I)V
    .locals 0

    .line 742
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 743
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    return-void
.end method

.method isHiddenModule(Ljava/lang/String;)Z
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 501
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method isSystemModule(Ljava/lang/String;)Z
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$requestSize$0$ApplicationsState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/applications/ApplicationsState;->lambda$requestSize$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    return-void
.end method

.method public newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;
    .locals 1

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p0

    return-object p0
.end method

.method public newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;
    .locals 1

    .line 311
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$Session;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)V

    .line 312
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    .line 313
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method rebuildActiveSessions()V
    .locals 5

    .line 839
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 840
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v1, :cond_0

    .line 841
    monitor-exit v0

    return-void

    .line 843
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 844
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 845
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 846
    iget-boolean v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v3, :cond_1

    .line 847
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removePackage(Ljava/lang/String;I)V
    .locals 6

    .line 702
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "ApplicationsState"

    const-string v2, "removePackage acquired lock"

    .line 703
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ApplicationsState"

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v1, :cond_5

    .line 707
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const-string v3, "ApplicationsState"

    .line 708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 710
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 713
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 714
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 715
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 716
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 717
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 718
    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_1

    .line 719
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 724
    :cond_2
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 725
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 726
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 727
    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 728
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 733
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 734
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    const-string p0, "ApplicationsState"

    const-string p1, "removePackage releasing lock"

    .line 737
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestSize(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "ApplicationsState"

    const-string v1, "requestSize about to acquire lock..."

    .line 593
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_0

    .line 596
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    invoke-static {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    new-instance v3, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string p0, "ApplicationsState"

    const-string p1, "...requestSize releasing lock"

    .line 627
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setInterestingConfigChanges(Lcom/android/settingslib/applications/InterestingConfigChanges;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    return-void
.end method
