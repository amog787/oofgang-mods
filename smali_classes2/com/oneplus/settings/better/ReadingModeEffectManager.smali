.class public Lcom/oneplus/settings/better/ReadingModeEffectManager;
.super Ljava/lang/Object;
.source "ReadingModeEffectManager.java"


# static fields
.field private static mChromaticAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

.field private static mMonoAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmpChromaticAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmpMonoAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mChromaticAppMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mMonoAppMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpChromaticAppMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpMonoAppMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 46
    iget-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    iget-object p0, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mContext:Landroid/content/Context;

    const-string p1, "activity"

    .line 48
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/better/ReadingModeEffectManager;
    .locals 1

    .line 52
    sget-object v0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/oneplus/settings/better/ReadingModeEffectManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/better/ReadingModeEffectManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    .line 56
    :cond_0
    sget-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    return-object p0
.end method

.method private loadChromaticApp()V
    .locals 1

    const/4 v0, 0x2

    .line 131
    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->loadClassAppList(I)V

    .line 132
    sget-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mChromaticAppMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 133
    new-instance p0, Ljava/util/HashMap;

    sget-object v0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpChromaticAppMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mChromaticAppMap:Ljava/util/Map;

    .line 134
    sget-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpChromaticAppMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private loadClassAppList(I)V
    .locals 12

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x3eb

    aput v4, v2, v3

    .line 97
    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    .line 100
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    .line 101
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 102
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    if-ne v7, v4, :cond_1

    .line 103
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 109
    iget-object v5, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/settings/utils/OPUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    new-instance v5, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    const/4 v10, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    if-nez p1, :cond_3

    .line 113
    sget-object v6, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpMonoAppMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v5, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpChromaticAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 116
    sget-object v6, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpChromaticAppMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v5, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpMonoAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 119
    :cond_4
    sget-object v5, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpChromaticAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v5, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpMonoAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method private loadMonoApp()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->loadClassAppList(I)V

    .line 139
    sget-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mMonoAppMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 140
    new-instance p0, Ljava/util/HashMap;

    sget-object v0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpMonoAppMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mMonoAppMap:Ljava/util/Map;

    .line 141
    sget-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mTmpMonoAppMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private removeTask(Ljava/lang/String;)V
    .locals 4

    const/4 p0, 0x0

    .line 183
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x2

    const/4 v3, -0x2

    .line 184
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v1, :cond_2

    .line 195
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_2

    :cond_2
    move-object v2, p0

    :goto_2
    if-eqz v2, :cond_1

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 204
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getAppEffectSelectValue(Ljava/lang/String;)I
    .locals 1

    .line 169
    sget-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mMonoAppMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    .line 170
    sget-object v0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mChromaticAppMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public loadAppMap()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->loadChromaticApp()V

    .line 61
    invoke-direct {p0}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->loadMonoApp()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v2, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    .line 71
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 72
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 73
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 74
    iget-object v4, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 75
    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 76
    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 78
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public setAppEffectSelect(ILjava/lang/String;I)V
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 146
    invoke-direct {p0, p2}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->removeTask(Ljava/lang/String;)V

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 149
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    new-instance p0, Lcom/oneplus/settings/better/OPAppModel;

    const-string v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 153
    sget-object p3, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mChromaticAppMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mMonoAppMap:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 156
    sget-object p3, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mMonoAppMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mChromaticAppMap:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    :cond_1
    sget-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mChromaticAppMap:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object p0, Lcom/oneplus/settings/better/ReadingModeEffectManager;->mMonoAppMap:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReadingModeEffectManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
