.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "AppDataUsage.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;
    }
.end annotation


# static fields
.field public static OSUidDetail:Lcom/android/settingslib/net/UidDetail;


# instance fields
.field private items:[Ljava/lang/String;

.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroidx/preference/PreferenceCategory;

.field private final mAppPrefCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/util/ArraySet<",
            "Landroidx/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppSettings:Landroidx/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleText:Landroidx/preference/Preference;

.field private mCycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDisabledData:Landroidx/preference/SwitchPreference;

.field private mDisabledWifi:Landroidx/preference/SwitchPreference;

.field private mEnd:J

.field private mForegroundUsage:Landroidx/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mLabel:Ljava/lang/CharSequence;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

.field private mSelectedCycle:J

.field private mStart:J

.field private mSubId:I

.field mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroidx/preference/Preference;

.field final mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mUsageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation
.end field

.field private restrictBackgroundChooseIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    .line 111
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mSubId:I

    new-array v1, v0, [Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->items:[Ljava/lang/String;

    .line 157
    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    .line 582
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 595
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 646
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$4;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppPrefCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/datausage/AppDataUsage;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/datausage/AppDataUsage;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/settings/datausage/AppDataUsage;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/RestrictedPreference;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/datausage/AppDataUsage;)[Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->items:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/datausage/AppDataUsage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/AppDataUsage;)J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mSelectedCycle:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/datausage/AppDataUsage;)Landroid/util/ArraySet;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private addUid(I)V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 482
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAdaptiveIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 360
    :try_start_0
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    return-object p1

    .line 362
    :cond_0
    instance-of p0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 364
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    .line 365
    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, p0, v0

    .line 366
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 371
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getAppRestrictBackground()Z
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    .line 523
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getUnrestrictData()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 529
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p0, p0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateFireWallState()V
    .locals 5

    .line 693
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getApplicationInfoByUid(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 694
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 695
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 697
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/oneplus/settings/utils/OPFirewallUtils;->selectFirewallRuleByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/utils/OPFirewallRule;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {v0}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 699
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 701
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    if-eqz v0, :cond_3

    .line 703
    invoke-virtual {v0}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 704
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 706
    :cond_3
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updatePrefs(ZZ)V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    .line 463
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 462
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, p1, 0x1

    .line 465
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 466
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 470
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 472
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 473
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 474
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method bindData(I)V
    .locals 9

    .line 491
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUsageData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/net/NetworkCycleDataForUid;

    .line 501
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUid;->getBackgroudUsage()J

    move-result-wide v3

    .line 502
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUid;->getForegroudUsage()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v3, v1

    move-wide v5, v3

    :goto_1
    add-long v7, v3, v5

    .line 507
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    const/16 v0, 0x97

    if-ne p1, v0, :cond_2

    .line 508
    invoke-static {}, Lcom/android/settings/datausage/DataUsageUtils;->getVtDataUsageBytes()J

    move-result-wide v3

    .line 509
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 510
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 516
    :cond_2
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 517
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v6}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 518
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public changeRestrictBackgroundType(I)V
    .locals 2

    .line 815
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p0, p0, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->setAppBackgroundDataType(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppDataUsage"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x157

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 438
    sget p0, Lcom/android/settings/R$xml;->app_data_usage:I

    return p0
.end method

.method getUidDetailProvider()Lcom/android/settingslib/net/UidDetailProvider;
    .locals 1

    .line 458
    new-instance v0, Lcom/android/settingslib/net/UidDetailProvider;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 166
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "app_item"

    .line 171
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-eqz p1, :cond_1

    const-string v1, "network_template"

    .line 172
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 173
    :goto_1
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-eqz p1, :cond_2

    const-string v1, "network_cycles"

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 175
    :goto_2
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycles:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    const-string v1, "selected_cycle"

    .line 176
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_3

    :cond_3
    const-wide/16 v1, 0x0

    :goto_3
    iput-wide v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mSelectedCycle:J

    .line 178
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v1, :cond_4

    .line 179
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    .line 180
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 179
    invoke-static {v1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_7

    const-string v1, "uid"

    if-eqz p1, :cond_5

    .line 183
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_4

    .line 184
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_4
    if-ne v1, v2, :cond_6

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 189
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 190
    new-instance v4, Lcom/android/settingslib/AppItem;

    invoke-direct {v4, v1}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 191
    invoke-virtual {v4, v1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    goto :goto_7

    :cond_7
    move v1, v3

    .line 194
    :goto_5
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 195
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 198
    :cond_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 199
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v1, v1, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_a

    if-eqz p1, :cond_9

    const-string v1, "restricted"

    .line 200
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v3

    :goto_6
    if-eqz v1, :cond_a

    .line 201
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    :cond_a
    :goto_7
    const-string v1, "total_usage"

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroidx/preference/Preference;

    const-string v1, "foreground_usage"

    .line 208
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroidx/preference/Preference;

    const-string v1, "background_usage"

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroidx/preference/Preference;

    if-eqz p1, :cond_b

    const-string v1, "arg_subid"

    .line 212
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_8

    :cond_b
    move p1, v3

    :goto_8
    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mSubId:I

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mSubId:I

    invoke-static {p1, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object p1

    .line 214
    aget-wide v4, p1, v3

    iput-wide v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    const/4 v1, 0x1

    .line 215
    aget-wide v4, p1, v1

    iput-wide v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    iget-wide v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    const-string v4, "pf_cycle"

    .line 217
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleText:Landroidx/preference/Preference;

    .line 218
    invoke-virtual {v4, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "disabled_mobile"

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    const-string p1, "disabled_wifi"

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    .line 222
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-eqz p1, :cond_c

    .line 223
    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 227
    :cond_c
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x3e7

    if-eq v2, p1, :cond_d

    .line 230
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->updateFireWallState()V

    goto :goto_9

    .line 234
    :cond_d
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 235
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_9
    const-string p1, "cycle"

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/SpinnerPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    .line 238
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 241
    new-instance p1, Lcom/android/settings/datausage/CycleAdapter;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p1, v2, v4, v5}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUidDetailProvider()Lcom/android/settingslib/net/UidDetailProvider;

    move-result-object p1

    .line 245
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    const-string v4, "app_list"

    const-string v5, "app_settings"

    const-string v6, "restrict_background_uss"

    const-string v7, "restrict_background"

    const-string/jumbo v8, "unrestricted_data_saver"

    if-lez v2, :cond_18

    .line 247
    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 248
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v2, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p1

    .line 250
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    const/16 v9, 0x97

    if-ne v2, v9, :cond_e

    .line 251
    new-instance p1, Lcom/android/settingslib/net/UidDetail;

    invoke-direct {p1}, Lcom/android/settingslib/net/UidDetail;-><init>()V

    .line 252
    sget v2, Lcom/android/settings/R$string;->data_usage_video_call_title:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/android/settings/R$drawable;->ic_video_call_icon:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 256
    :cond_e
    iget-object v2, p1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 257
    iget-object p1, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 258
    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 259
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 260
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_b

    .line 262
    :cond_f
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-eqz p1, :cond_11

    .line 264
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    .line 265
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v9, v9, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 264
    invoke-virtual {p1, v2, v3, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 271
    iget-object v9, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v2

    .line 273
    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v2, v0

    :goto_a
    if-nez v2, :cond_10

    .line 276
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 279
    :cond_10
    invoke-direct {p0, v2}, Lcom/android/settings/datausage/AppDataUsage;->getAdaptiveIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 281
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 285
    :catch_1
    :cond_11
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result p1

    if-nez p1, :cond_12

    .line 286
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 287
    invoke-virtual {p0, v7}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 288
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 289
    invoke-virtual {p0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 290
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_b

    .line 292
    :cond_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/R$array;->restrict_background_values:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->items:[Ljava/lang/String;

    .line 293
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 294
    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

    .line 296
    invoke-virtual {p0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 297
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v6, v6, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p1, v2, v6}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAppType(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    .line 300
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->items:[Ljava/lang/String;

    array-length v6, v2

    if-le v6, p1, :cond_13

    .line 301
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

    aget-object p1, v2, p1

    invoke-virtual {v6, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    :cond_13
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

    new-instance v2, Lcom/android/settings/datausage/AppDataUsage$1;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 313
    :goto_b
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 314
    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    .line 316
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 317
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 321
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 322
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p1, v6, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_14

    move v3, v1

    :cond_15
    if-nez v3, :cond_16

    .line 329
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 330
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    .line 333
    :cond_16
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-le p1, v1, :cond_17

    .line 334
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroidx/preference/PreferenceCategory;

    .line 335
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x3

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppPrefCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_c

    .line 338
    :cond_17
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_c

    .line 341
    :cond_18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 342
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v2, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p1

    .line 343
    iget-object v1, p1, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 344
    iget-object p1, p1, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 345
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    .line 347
    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 348
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 349
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 350
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 352
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_c
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 390
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 391
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 398
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 399
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return v1

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v0, :cond_1

    .line 403
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p0, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    return v1

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledWifi:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 408
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, p1, Lcom/android/settingslib/AppItem;->key:I

    .line 409
    new-instance p1, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/content/Context;IZI)V

    new-array p0, v1, [Ljava/lang/Void;

    .line 410
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDisabledData:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 412
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, p1, Lcom/android/settingslib/AppItem;->key:I

    .line 413
    new-instance p1, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/content/Context;IZI)V

    new-array p0, v1, [Ljava/lang/Void;

    .line 414
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p0, p0, Lcom/android/settingslib/AppItem;->key:I

    .line 427
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 426
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 429
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 433
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 379
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 380
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 383
    :cond_0
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUidDataCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 536
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 538
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const-string v1, "AppDataUsage"

    if-eqz p1, :cond_1

    .line 542
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    .line 543
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 542
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 545
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping UID because cannot find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v0

    .line 549
    :goto_1
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v3, v3, Lcom/android/settingslib/AppItem;->key:I

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v0

    .line 551
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 553
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/android/settings/R$layout;->op_settings_entity_header:I

    invoke-virtual {v5, v6, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 555
    invoke-static {v4, p0, p2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 557
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    .line 558
    invoke-virtual {p2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    .line 559
    invoke-virtual {p2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    .line 560
    invoke-virtual {p2, v0, v0}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 562
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 563
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 564
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    .line 566
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 568
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of p2, p2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p2, :cond_3

    const-string/jumbo p2, "updateState drawable instanceof LayerDrawable"

    .line 569
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {p2}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    .line 571
    invoke-static {p2}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget p2, Lcom/android/settings/R$id;->entity_header_icon:I

    .line 572
    invoke-virtual {p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_3
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 676
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    :cond_0
    return-void
.end method

.method public showRestrictBackgroundDialog()V
    .locals 4

    .line 789
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 790
    sget v1, Lcom/android/settings/R$string;->restrict_background_uss_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 791
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->items:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    new-instance v3, Lcom/android/settings/datausage/AppDataUsage$5;

    invoke-direct {v3, p0}, Lcom/android/settings/datausage/AppDataUsage$5;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 806
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method updatePrefs()V
    .locals 2

    .line 448
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 450
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updateUssPreference()V

    :cond_0
    return-void
.end method

.method public updateUssPreference()V
    .locals 4

    .line 820
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 819
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 821
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundUss:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_2

    .line 825
    iget v2, p0, Lcom/android/settings/datausage/AppDataUsage;->restrictBackgroundChooseIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 p0, 0x0

    .line 826
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 828
    :cond_1
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 829
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 830
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_2
    :goto_0
    return-void
.end method
