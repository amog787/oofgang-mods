.class public Lcom/android/settings/SettingsDumpService;
.super Landroid/app/Service;
.source "SettingsDumpService.java"


# static fields
.field static final BROWSER_INTENT:Landroid/content/Intent;

.field static final KEY_ANOMALY_DETECTION:Ljava/lang/String; = "anomaly_detection"

.field static final KEY_DATAUSAGE:Ljava/lang/String; = "datausage"

.field static final KEY_DEFAULT_BROWSER_APP:Ljava/lang/String; = "default_browser_app"

.field static final KEY_MEMORY:Ljava/lang/String; = "memory"

.field static final KEY_SERVICE:Ljava/lang/String; = "service"

.field static final KEY_STORAGE:Ljava/lang/String; = "storage"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "http://"

    .line 62
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/android/settings/SettingsDumpService;->BROWSER_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private dumpDataUsage()Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    new-instance v1, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v1, p0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 104
    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 105
    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 106
    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v4}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    .line 107
    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 109
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 111
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    .line 114
    invoke-direct {p0, v7, v1}, Lcom/android/settings/SettingsDumpService;->dumpDataUsage(Landroid/net/NetworkTemplate;Lcom/android/settingslib/net/DataUsageController;)Lorg/json/JSONObject;

    move-result-object v7

    .line 115
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    const-string v8, "subId"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v3, "cell"

    .line 118
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 v3, 0x1

    .line 120
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/settings/SettingsDumpService;->dumpDataUsage(Landroid/net/NetworkTemplate;Lcom/android/settingslib/net/DataUsageController;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const/16 v3, 0x9

    .line 123
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/SettingsDumpService;->dumpDataUsage(Landroid/net/NetworkTemplate;Lcom/android/settingslib/net/DataUsageController;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "ethernet"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-object v0
.end method

.method private dumpDataUsage(Landroid/net/NetworkTemplate;Lcom/android/settingslib/net/DataUsageController;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 131
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    invoke-virtual {p2, p1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    .line 133
    iget-object p2, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    const-string v0, "carrier"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->startDate:J

    const-string p2, "start"

    invoke-virtual {p0, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 135
    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const-string/jumbo p2, "usage"

    invoke-virtual {p0, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 136
    iget-wide v0, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-string/jumbo p2, "warning"

    invoke-virtual {p0, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 137
    iget-wide p1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-string v0, "limit"

    invoke-virtual {p0, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p0
.end method

.method private dumpMemory()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    new-instance v1, Lcom/android/settings/applications/ProcStatsData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    .line 90
    invoke-virtual {v1, p0}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    .line 91
    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object p0

    .line 93
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "used"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "free"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-wide v2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    const-string v2, "total"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemState()I

    move-result p0

    const-string v1, "state"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private dumpStorage()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 144
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 145
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 146
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "used"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "total"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_0
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    const-string v4, "state"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v3

    const-string v4, "stateDesc"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 71
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p3, "service"

    const-string v0, "Settings State"

    .line 74
    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "storage"

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsDumpService;->dumpStorage()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "datausage"

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsDumpService;->dumpDataUsage()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "memory"

    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsDumpService;->dumpMemory()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "default_browser_app"

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/SettingsDumpService;->dumpDefaultBrowser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "anomaly_detection"

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/SettingsDumpService;->dumpAnomalyDetection()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method dumpAnomalyDetection()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "anomaly_pref"

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, v1, v2}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "anomaly_config_version"

    .line 178
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 181
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method dumpDefaultBrowser()Ljava/lang/String;
    .locals 2

    .line 162
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lcom/android/settings/SettingsDumpService;->BROWSER_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 165
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
