.class public Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
.super Ljava/lang/Object;
.source "DefaultAppLogic.java"


# static fields
.field private static final INIT_LOCK:[B

.field private static volatile instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExcludedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKeys:[Ljava/lang/String;

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 40
    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->INIT_LOCK:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    .line 46
    sget-object p1, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppValueList()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mValues:[Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initExcludedMap()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
    .locals 2

    .line 52
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->INIT_LOCK:[B

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 59
    :cond_1
    :goto_0
    sget-object p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    return-object p0
.end method

.method private initExcludedMap()V
    .locals 3

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.documentsui"

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isAppExist(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 100
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 105
    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    move p0, v1

    .line 109
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    .line 110
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private updateRelatedDefaultApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 153
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->resetDefaultApp(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getAppInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppIntent()Ljava/util/List;

    move-result-object p1

    .line 122
    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 124
    new-instance v2, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;

    invoke-direct {v2}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;-><init>()V

    const/high16 v3, 0x20000

    .line 125
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 127
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->addActivityInfo(Landroid/content/pm/ActivityInfo;)V

    goto :goto_1

    .line 129
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;

    .line 137
    invoke-virtual {v1}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->getActivityInfo()Ljava/util/List;

    move-result-object v1

    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 139
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->isAppExist(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p0, p2, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/util/List;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDefaultAppPosition defaultPackageName:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultAppLogic"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move v0, p0

    .line 263
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 264
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultAppPosition packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-ne v0, v2, :cond_3

    .line 274
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_3

    .line 275
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "com.heytap.music"

    .line 276
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, p0

    goto :goto_3

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return v0
.end method

.method public getDefaultAppPosition(Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p0, 0x0

    .line 293
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 294
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 334
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultAppPackageName appType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DefaultAppLogic"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppIntent()Ljava/util/List;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 343
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    const/high16 v6, 0x10000

    .line 345
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 347
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string v0, "android"

    .line 351
    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 353
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 355
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 360
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_5

    .line 361
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error defaultApp.size != 1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 364
    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    .line 365
    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPmDefaultAppPackageName appType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", defaultApp pkg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getSystemDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 305
    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 306
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 307
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 308
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public initDefaultAppSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initDefaultAppSettings(Z)V

    return-void
.end method

.method public initDefaultAppSettings(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/defaultapp/DataHelper;->isDefaultAppInited(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 85
    aget-object v0, v0, p1

    .line 86
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android"

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 89
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 90
    invoke-virtual {p0, v3, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->resetDefaultApp(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/settings/defaultapp/DataHelper;->setDefaultAppInited(Landroid/content/Context;)V

    return-void
.end method

.method public varargs invoke(Landroid/content/pm/PackageManager;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public resetAppByType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 318
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 319
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 320
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method resetDefaultApp(Ljava/lang/String;)V
    .locals 3

    .line 161
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 163
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getSystemDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 164
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public setDefaultApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    .line 183
    iget-object v4, v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 184
    invoke-virtual {v1, v2, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I

    move-result v5

    .line 185
    iget-object v6, v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v3}, Lcom/oneplus/settings/defaultapp/DataHelper;->setDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 187
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 188
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->updateRelatedDefaultApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v0, v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 197
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppFilter()Ljava/util/List;

    move-result-object v5

    .line 198
    invoke-virtual {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppMatchParam()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    .line 199
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    move-object/from16 v9, p2

    .line 200
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;

    .line 201
    invoke-virtual {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->getActivityInfo()Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/content/ComponentName;

    const/4 v11, 0x0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    :goto_1
    if-ltz v12, :cond_3

    .line 205
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ActivityInfo;

    .line 206
    iget-object v15, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 207
    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 208
    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v15, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    aput-object v13, v10, v12

    .line 210
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 211
    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v15, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    if-eqz v11, :cond_4

    .line 215
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v0, v12, v10, v11}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "op_default_app_browser"

    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v10, "getCallingUserId"

    new-array v12, v7, [Ljava/lang/Class;

    .line 219
    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v12, v7, [Ljava/lang/Object;

    .line 220
    invoke-virtual {v10, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 221
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v12, "setDefaultBrowserPackageName"

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Class;

    .line 222
    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v7

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-virtual {v10, v12, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v12, v13, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x1

    aput-object v0, v12, v11

    invoke-virtual {v1, v4, v10, v12}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->invoke(Landroid/content/pm/PackageManager;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 225
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDefaultAppPosition: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "DefaultAppLogic"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-ltz p4, :cond_1

    .line 233
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 237
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1, p3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 171
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
