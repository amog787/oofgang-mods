.class public Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneTouchPanelController$you;
    }
.end annotation


# static fields
.field public static final IN_USING:Z

.field public static final RULE_TOUCH_PANEL_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final TAG:Ljava/lang/String; = "TouchPanelController"

.field public static mDebug:Z

.field public static sInstance:Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;


# instance fields
.field private mAffinityBlackPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAffinityEnable:Z

.field private mAffinitySetted:Z

.field private final mAffinitySwitchProp:Ljava/lang/String;

.field private mBlackPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallRateSwitchPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mLock:Ljava/lang/Object;

.field private mSetted:Z

.field private mTpConfigUpdater:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mDebug:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x10b

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->IN_USING:Z

    new-instance v1, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "TouchPanelController"

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->RULE_TOUCH_PANEL_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    const-string v0, "/proc/touchpanel/game_switch_enable"

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mCallRateSwitchPath:Ljava/lang/String;

    const-string v0, "vendor.sys.op.game"

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinitySwitchProp:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mEnable:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityEnable:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mSetted:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinitySetted:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mBlackPkgList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityBlackPkgList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private echo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string p0, "IO close failed : path="

    const-string v0, ",ex->"

    const-string v1, "TouchPanelController"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : file not exits :"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v3, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mDebug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo path = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo failed : path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    :goto_2
    return v2

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    throw p2
.end method

.method public static declared-synchronized getInstance()Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;
    .locals 2

    const-class v0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;

    invoke-direct {v1}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;-><init>()V

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;

    :cond_0
    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveConfigFromJSON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchPanelController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->updateEnable(Z)V

    const-string v4, "TouchPanelController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "skip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mBlackPkgList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mBlackPkgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mBlackPkgList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mBlackPkgList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "TouchPanelController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] update mBlackPkgList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mBlackPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_4
    :goto_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->updateAffinityEnable(Z)V

    const-string v4, "TouchPanelController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] affinity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "affinity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityBlackPkgList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v4, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityBlackPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityBlackPkgList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityBlackPkgList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string v2, "TouchPanelController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] update mAffinityBlackPkgList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityBlackPkgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-void
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private updateAffinityEnable(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityEnable:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinitySetted:Z

    if-eqz v0, :cond_0

    const-string v0, "vendor.sys.op.game"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->setPropValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityEnable:Z

    return-void
.end method

.method private updateEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mEnable:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mEnable:Z

    const/4 p0, -0x2

    if-eqz p1, :cond_1

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->RULE_TOUCH_PANEL_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-static {p1, p0}, Lcom/oneplus/server/you;->zta(Lcom/oneplus/core/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->RULE_TOUCH_PANEL_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-static {p1, p0}, Lcom/oneplus/server/you;->cno(Lcom/oneplus/core/oimc/OIMCRule;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController$you;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController$you;-><init>(Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;Lcom/oneplus/android/server/scene/OemSceneTouchPanelController$zta;)V

    const-string v3, "TouchPanelController"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mTpConfigUpdater:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public onConfig(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mBlackPkgList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mBlackPkgList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p1

    return v1

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    const-string p1, "/proc/touchpanel/game_switch_enable"

    const-string v2, "1"

    invoke-direct {p0, p1, v2}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mSetted:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityEnable:Z

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityBlackPkgList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityBlackPkgList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit p1

    return v1

    :cond_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string p1, "vendor.sys.op.game"

    const-string v2, "1"

    invoke-direct {p0, p1, v2}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->setPropValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinitySetted:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mSetted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "/proc/touchpanel/game_switch_enable"

    const-string v2, "0"

    invoke-direct {p0, v0, v2}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mSetted:Z

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinitySetted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinityEnable:Z

    if-eqz v0, :cond_1

    const-string v0, "vendor.sys.op.game"

    const-string v2, "0"

    invoke-direct {p0, v0, v2}, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->setPropValue(Ljava/lang/String;Ljava/lang/String;)Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mAffinitySetted:Z

    :cond_1
    monitor-exit p1

    return v1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateFunctionRule()V
    .locals 1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->mEnable:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneTouchPanelController;->RULE_TOUCH_PANEL_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/oneplus/server/you;->zta(Lcom/oneplus/core/oimc/OIMCRule;I)V

    :cond_0
    return-void
.end method
