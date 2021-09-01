.class public Lcom/oneplus/security/firewall/NetworkRestrictManager;
.super Ljava/lang/Object;
.source "NetworkRestrictManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;,
        Lcom/oneplus/security/firewall/NetworkRestrictManager$UpdateRulesFromQRunnable;,
        Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;,
        Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;
    }
.end annotation


# static fields
.field private static final dataLock:Ljava/lang/Object;

.field private static instance:Lcom/oneplus/security/firewall/NetworkRestrictManager;

.field private static final instanceLock:Ljava/lang/Object;


# instance fields
.field private appsIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private installedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCallBack:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 38
    sput-object v1, Lcom/oneplus/security/firewall/NetworkRestrictManager;->instanceLock:Ljava/lang/Object;

    new-array v0, v0, [B

    .line 39
    sput-object v0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->dataLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->appsIconCache:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->installedAppList:Ljava/util/List;

    .line 273
    new-instance v0, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/security/firewall/NetworkRestrictManager$1;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mHandler:Landroid/os/Handler;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mCallBack:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->installedAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getAppsUidItemsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getAllAppsUidItemsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->dataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/security/firewall/NetworkRestrictManager;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getAllAppsUidItemsMap()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/security/firewall/FirewallRule;->selectAllFirewallRulesAsMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 148
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x3e8

    const-string v7, "android.permission.INTERNET"

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 150
    iget-object v9, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 151
    iget-object v10, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v7, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    if-eqz v9, :cond_0

    .line 152
    iget v5, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-le v5, v6, :cond_0

    if-nez v8, :cond_2

    goto :goto_0

    .line 155
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 158
    :cond_3
    new-instance v5, Lcom/oneplus/security/firewall/AppUidItem;

    invoke-direct {v5}, Lcom/oneplus/security/firewall/AppUidItem;-><init>()V

    .line 159
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/oneplus/security/firewall/AppUidItem;->setAppUid(I)V

    .line 160
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 164
    iget-object v5, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 165
    iget-object v9, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6

    move v9, v8

    goto :goto_3

    :cond_6
    move v9, v3

    :goto_3
    if-eqz v5, :cond_5

    .line 166
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-le v5, v6, :cond_5

    if-nez v9, :cond_7

    goto :goto_2

    .line 169
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/security/firewall/AppUidItem;

    if-nez v1, :cond_8

    .line 171
    invoke-virtual {v5, v8}, Lcom/oneplus/security/firewall/AppUidItem;->setDataEnable(Z)V

    .line 172
    invoke-virtual {v5, v8}, Lcom/oneplus/security/firewall/AppUidItem;->setWlanEnable(Z)V

    goto :goto_6

    .line 174
    :cond_8
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/security/firewall/FirewallRule;

    if-eqz v9, :cond_b

    .line 176
    invoke-virtual {v9}, Lcom/oneplus/security/firewall/FirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v8, :cond_9

    move v10, v8

    goto :goto_4

    :cond_9
    move v10, v3

    :goto_4
    invoke-virtual {v5, v10}, Lcom/oneplus/security/firewall/AppUidItem;->setDataEnable(Z)V

    .line 177
    invoke-virtual {v9}, Lcom/oneplus/security/firewall/FirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_a

    move v9, v8

    goto :goto_5

    :cond_a
    move v9, v3

    :goto_5
    invoke-virtual {v5, v9}, Lcom/oneplus/security/firewall/AppUidItem;->setWlanEnable(Z)V

    goto :goto_6

    .line 179
    :cond_b
    invoke-virtual {v5, v8}, Lcom/oneplus/security/firewall/AppUidItem;->setDataEnable(Z)V

    .line 180
    invoke-virtual {v5, v8}, Lcom/oneplus/security/firewall/AppUidItem;->setWlanEnable(Z)V

    .line 183
    :goto_6
    new-instance v9, Lcom/oneplus/security/firewall/AppPkgItem;

    invoke-direct {v9}, Lcom/oneplus/security/firewall/AppPkgItem;-><init>()V

    .line 184
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 185
    invoke-static {v4}, Lcom/oneplus/security/utils/Utils;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v11

    invoke-virtual {v9, v11}, Lcom/oneplus/security/firewall/AppPkgItem;->setSystemApp(Z)V

    .line 186
    iget-object v11, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/oneplus/security/firewall/AppPkgItem;->setPkgName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v9, v10}, Lcom/oneplus/security/firewall/AppPkgItem;->setAppName(Ljava/lang/String;)V

    .line 188
    invoke-static {v10}, Lcom/oneplus/security/utils/HanziToPinyin;->getSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oneplus/security/firewall/AppPkgItem;->setAppSortKey(Ljava/lang/String;)V

    .line 189
    iget-object v10, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->appsIconCache:Ljava/util/Map;

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_c

    .line 191
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v11}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 192
    iget-object v11, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->appsIconCache:Ljava/util/Map;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v11, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_c
    invoke-virtual {v9, v10}, Lcom/oneplus/security/firewall/AppPkgItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {v5}, Lcom/oneplus/security/firewall/AppUidItem;->getApps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    return-object v0
.end method

.method private getAppsUidItemsMap()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/security/firewall/FirewallRule;->selectAllFirewallRulesAsMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 212
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 213
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v3, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 215
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 216
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x3e8

    const-string v7, "android.permission.INTERNET"

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 218
    iget-object v9, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 219
    iget-object v10, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v7, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    if-eqz v9, :cond_0

    .line 220
    iget v5, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-le v5, v6, :cond_0

    if-nez v8, :cond_2

    goto :goto_0

    .line 223
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 226
    :cond_3
    new-instance v5, Lcom/oneplus/security/firewall/AppUidItem;

    invoke-direct {v5}, Lcom/oneplus/security/firewall/AppUidItem;-><init>()V

    .line 227
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/oneplus/security/firewall/AppUidItem;->setAppUid(I)V

    .line 228
    iget v6, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 232
    iget-object v5, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 233
    iget-object v9, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6

    move v9, v8

    goto :goto_3

    :cond_6
    move v9, v4

    :goto_3
    if-eqz v5, :cond_5

    .line 234
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-le v5, v6, :cond_5

    if-nez v9, :cond_7

    goto :goto_2

    .line 237
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/security/firewall/AppUidItem;

    if-nez v1, :cond_8

    .line 239
    invoke-virtual {v5, v8}, Lcom/oneplus/security/firewall/AppUidItem;->setDataEnable(Z)V

    .line 240
    invoke-virtual {v5, v8}, Lcom/oneplus/security/firewall/AppUidItem;->setWlanEnable(Z)V

    goto :goto_6

    .line 242
    :cond_8
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/security/firewall/FirewallRule;

    if-eqz v9, :cond_b

    .line 244
    invoke-virtual {v9}, Lcom/oneplus/security/firewall/FirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v8, :cond_9

    move v10, v8

    goto :goto_4

    :cond_9
    move v10, v4

    :goto_4
    invoke-virtual {v5, v10}, Lcom/oneplus/security/firewall/AppUidItem;->setDataEnable(Z)V

    .line 245
    invoke-virtual {v9}, Lcom/oneplus/security/firewall/FirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v8, :cond_a

    move v9, v8

    goto :goto_5

    :cond_a
    move v9, v4

    :goto_5
    invoke-virtual {v5, v9}, Lcom/oneplus/security/firewall/AppUidItem;->setWlanEnable(Z)V

    goto :goto_6

    .line 247
    :cond_b
    invoke-virtual {v5, v8}, Lcom/oneplus/security/firewall/AppUidItem;->setDataEnable(Z)V

    .line 248
    invoke-virtual {v5, v8}, Lcom/oneplus/security/firewall/AppUidItem;->setWlanEnable(Z)V

    .line 251
    :goto_6
    new-instance v9, Lcom/oneplus/security/firewall/AppPkgItem;

    invoke-direct {v9}, Lcom/oneplus/security/firewall/AppPkgItem;-><init>()V

    .line 252
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 253
    invoke-static {v3}, Lcom/oneplus/security/utils/Utils;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v11

    invoke-virtual {v9, v11}, Lcom/oneplus/security/firewall/AppPkgItem;->setSystemApp(Z)V

    .line 254
    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/oneplus/security/firewall/AppPkgItem;->setPkgName(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v9, v10}, Lcom/oneplus/security/firewall/AppPkgItem;->setAppName(Ljava/lang/String;)V

    .line 256
    invoke-static {v10}, Lcom/oneplus/security/utils/HanziToPinyin;->getSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oneplus/security/firewall/AppPkgItem;->setAppSortKey(Ljava/lang/String;)V

    .line 257
    iget-object v10, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->appsIconCache:Ljava/util/Map;

    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_c

    .line 259
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v11}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 260
    iget-object v11, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->appsIconCache:Ljava/util/Map;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v11, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_c
    invoke-virtual {v9, v10}, Lcom/oneplus/security/firewall/AppPkgItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-virtual {v5}, Lcom/oneplus/security/firewall/AppUidItem;->getApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_d
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/security/firewall/NetworkRestrictManager;
    .locals 2

    .line 52
    sget-object v0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->instanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/oneplus/security/firewall/NetworkRestrictManager;->instance:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/oneplus/security/firewall/NetworkRestrictManager;

    invoke-direct {v1, p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/security/firewall/NetworkRestrictManager;->instance:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    .line 56
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-object p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->instance:Lcom/oneplus/security/firewall/NetworkRestrictManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public batchUpdateRules(Ljava/util/List;IILcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;II",
            "Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-static {p1}, Lcom/oneplus/security/utils/Utils;->isCollectionEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "batchUpdateRules data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",wlan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkRestrictManager"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mCallBack:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 114
    invoke-interface {p4, v0, v1}, Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;->onTaskStart(IZ)V

    .line 115
    new-instance p4, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/oneplus/security/firewall/NetworkRestrictManager$BatchUpdateRulesRunnable;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictManager;Ljava/util/List;II)V

    invoke-interface {p5, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAppList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->installedAppList:Ljava/util/List;

    return-object p0
.end method

.method public init()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_rules_from_Q"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/security/firewall/NetworkRestrictManager$UpdateRulesFromQRunnable;

    invoke-direct {v1, p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager$UpdateRulesFromQRunnable;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictManager;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public refreshAppsNetworkRestrict(Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;ZLjava/util/concurrent/Executor;)V
    .locals 2

    if-nez p3, :cond_0

    .line 87
    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mCallBack:Ljava/lang/ref/WeakReference;

    .line 90
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;->onTaskStart(IZ)V

    .line 91
    new-instance p1, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;

    invoke-direct {p1, p0, p2}, Lcom/oneplus/security/firewall/NetworkRestrictManager$RefreshTaskRunnable;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictManager;Z)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateRules(Lcom/oneplus/security/firewall/AppUidItem;II)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRules appUidItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",wlan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkRestrictManager"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->getApps()Ljava/util/List;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/security/firewall/AppPkgItem;

    .line 132
    new-instance v1, Lcom/oneplus/security/firewall/FirewallRule;

    invoke-virtual {v0}, Lcom/oneplus/security/firewall/AppPkgItem;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/oneplus/security/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/security/firewall/FirewallRule;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/security/firewall/FirewallRule;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
