.class public Lcom/oneplus/settings/OPOnlineConfigManager;
.super Ljava/lang/Object;
.source "OPOnlineConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPOnlineConfigManager$OnSupportConfigCompleteParseListener;,
        Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;,
        Lcom/oneplus/settings/OPOnlineConfigManager$SLABackgroundConfigUpdater;
    }
.end annotation


# static fields
.field private static isSupportEnable:Z

.field private static localMultiAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static localSlaDownloadWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lock:Ljava/lang/Object;

.field private static multiAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;

.field private static slaDownloadWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mOnConfigCompleteParseListener:Lcom/oneplus/settings/OPOnlineConfigManager$OnSupportConfigCompleteParseListener;

.field private mSlaBackgroundConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->lock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->slaDownloadWhiteList:Ljava/util/List;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lcom/oneplus/settings/OPOnlineConfigManager;->isSupportEnable:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OPOnlineConfigManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v0, Lcom/oneplus/settings/OPOnlineConfigManager$1;

    iget-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPOnlineConfigManager$1;-><init>(Lcom/oneplus/settings/OPOnlineConfigManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->op_multiapp_white_list:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/oneplus/settings/OPOnlineConfigManager;->localMultiAppWhiteList:Ljava/util/List;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$array;->op_local_sla_down_load_white_list_app:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/oneplus/settings/OPOnlineConfigManager;->localSlaDownloadWhiteList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPOnlineConfigManager;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPOnlineConfigManager;Lorg/json/JSONArray;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPOnlineConfigManager;->parseConfigFromJson(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPOnlineConfigManager;Lorg/json/JSONArray;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPOnlineConfigManager;->parseSlaConfigFromJson(Lorg/json/JSONArray;)V

    return-void
.end method

.method private deleteNoWhiteListSlaDownLoadOpenApp()V
    .locals 7

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_download_open_apps_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/OPOnlineConfigManager;->getSlaDownloadWhiteList()Ljava/util/List;

    const/4 v1, -0x1

    const-string v2, ";"

    .line 283
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 284
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/oneplus/settings/OPOnlineConfigManager;->slaDownloadWhiteList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/settings/OPOnlineConfigManager;->getSlaDownLoadOpenAppsListString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 288
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPOnlineConfigManager;->saveSlaDownLoadOpenAppsListStrings(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstence(Landroid/content/Context;)Lcom/oneplus/settings/OPOnlineConfigManager;
    .locals 3

    const-class v0, Lcom/oneplus/settings/OPOnlineConfigManager;

    monitor-enter v0

    .line 170
    :try_start_0
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    sget-object v2, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/OPOnlineConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;

    .line 174
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    sget-object p0, Lcom/oneplus/settings/OPOnlineConfigManager;->onlineConfigManager:Lcom/oneplus/settings/OPOnlineConfigManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 174
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getMultiAppWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    monitor-enter v0

    .line 161
    :try_start_0
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 164
    :cond_0
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->localMultiAppWhiteList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSlaDownLoadOpenAppsListString()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object p0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_download_open_apps_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSlaDownloadWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/oneplus/settings/OPOnlineConfigManager;->slaDownloadWhiteList:Ljava/util/List;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->slaDownloadWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->slaDownloadWhiteList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 145
    :cond_0
    sget-object v1, Lcom/oneplus/settings/OPOnlineConfigManager;->localSlaDownloadWhiteList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isSupportEnable()Z
    .locals 1

    .line 152
    sget-boolean v0, Lcom/oneplus/settings/OPOnlineConfigManager;->isSupportEnable:Z

    return v0
.end method

.method private synthetic lambda$parseConfigFromJson$0()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/oneplus/settings/OPOnlineConfigManager;->supportConfigParseCompleted()V

    return-void
.end method

.method private parseConfigFromJson(Lorg/json/JSONArray;)V
    .locals 8

    if-nez p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "op_multiapp_white_list_p"

    .line 212
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPPrefUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings parseConfigFromJson jsonArray is null,use old json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPOnlineConfigManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    .line 218
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings parseConfigFromJson JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPOnlineConfigManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "OPOnlineConfigManager"

    const-string p1, "settings parseConfigFromJson jsonArray is null, return"

    .line 224
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_2
    :goto_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings parseConfigFromJson jsonArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPOnlineConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 232
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 233
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "name"

    .line 234
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "op_multiapp_white_list_p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "value"

    .line 235
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "op_multiapp_white_list_p"

    .line 236
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPPrefUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v4, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    :try_start_2
    sget-object v5, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v5, v0

    .line 239
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 240
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 241
    sget-object v7, Lcom/oneplus/settings/OPOnlineConfigManager;->multiAppWhiteList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 243
    :cond_4
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :cond_5
    :goto_3
    const-string v3, "need_show"

    .line 246
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "need_show"

    .line 248
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPPrefUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "need_show"

    .line 249
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oneplus/settings/OPOnlineConfigManager;->isSupportEnable:Z

    .line 250
    new-instance v2, Lcom/oneplus/settings/-$$Lambda$OPOnlineConfigManager$5pLnhywe5rGpEt08hGrm0Px0kGs;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/-$$Lambda$OPOnlineConfigManager$5pLnhywe5rGpEt08hGrm0Px0kGs;-><init>(Lcom/oneplus/settings/OPOnlineConfigManager;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "settings parseConfigFromJson Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPOnlineConfigManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception p0

    .line 259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "settings parseConfigFromJson JSONException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPOnlineConfigManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void
.end method

.method private parseSlaConfigFromJson(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "SlaDownloadWhiteList"

    .line 92
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPPrefUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Sla Online Config settings parseSlaConfigFromJson jsonArray is null,use old json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPOnlineConfigManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    .line 98
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Sla Online Config settings parseSlaConfigFromJson JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPOnlineConfigManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "OPOnlineConfigManager"

    const-string p1, "get Sla Online Config settings parseSlaConfigFromJson jsonArray is null, return"

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_2
    :goto_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Sla Online Config jsonArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPOnlineConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    move v1, v0

    .line 113
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 114
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "name"

    .line 115
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SlaDownloadWhiteList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "value"

    .line 116
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "SlaDownloadWhiteList"

    .line 117
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPPrefUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v3, Lcom/oneplus/settings/OPOnlineConfigManager;->slaDownloadWhiteList:Ljava/util/List;

    monitor-enter v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :try_start_2
    sget-object v4, Lcom/oneplus/settings/OPOnlineConfigManager;->slaDownloadWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v4, v0

    .line 120
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 121
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 122
    sget-object v6, Lcom/oneplus/settings/OPOnlineConfigManager;->slaDownloadWhiteList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 124
    :cond_4
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/settings/OPOnlineConfigManager;->deleteNoWhiteListSlaDownLoadOpenApp()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get Sla Online Config settings parseSlaConfigFromJson Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPOnlineConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception p0

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get Sla Online Config settings parseSlaConfigFromJson JSONException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPOnlineConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method private supportConfigParseCompleted()V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mOnConfigCompleteParseListener:Lcom/oneplus/settings/OPOnlineConfigManager$OnSupportConfigCompleteParseListener;

    if-eqz p0, :cond_0

    .line 304
    invoke-interface {p0}, Lcom/oneplus/settings/OPOnlineConfigManager$OnSupportConfigCompleteParseListener;->OnSupportConfigParseCompleted()V

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 7

    .line 182
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;-><init>(Lcom/oneplus/settings/OPOnlineConfigManager;)V

    const-string v4, "ROM_APP_OPSettings"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mBackgroundConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 183
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 184
    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 185
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/settings/OPOnlineConfigManager$SLABackgroundConfigUpdater;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/OPOnlineConfigManager$SLABackgroundConfigUpdater;-><init>(Lcom/oneplus/settings/OPOnlineConfigManager;)V

    const-string v6, "SlaOnlineConfig"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mSlaBackgroundConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 186
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 187
    iget-object p0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public synthetic lambda$parseConfigFromJson$0$OPOnlineConfigManager()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPOnlineConfigManager;->lambda$parseConfigFromJson$0()V

    return-void
.end method

.method public saveSlaDownLoadOpenAppsListStrings(Ljava/lang/String;)V
    .locals 1

    .line 273
    iget-object p0, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_download_open_apps_list"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setOnConfigCompleteParseListener(Lcom/oneplus/settings/OPOnlineConfigManager$OnSupportConfigCompleteParseListener;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/oneplus/settings/OPOnlineConfigManager;->mOnConfigCompleteParseListener:Lcom/oneplus/settings/OPOnlineConfigManager$OnSupportConfigCompleteParseListener;

    return-void
.end method
