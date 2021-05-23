.class Lcom/android/server/am/OnePlusMemoryTracker$ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusMemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ssp"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusMemoryTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker$ssp;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta(Lorg/json/JSONArray;)V

    return-void
.end method

.method public zta(Lorg/json/JSONArray;)V
    .locals 13

    const-string v0, "report_no_cache_interval"

    const-string v1, "report_no_cache"

    const-string v2, "report"

    const-string v3, "command"

    const-string v4, "dropbox_size"

    const-string v5, "line"

    const-string v6, "interval"

    const-string v7, "timeout"

    const-string v8, "dropbox"

    const-string v9, "mdm"

    const-string v10, "enable"

    const-string v11, "OPMT"

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1300()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "[OnlineConfig] config is null!"

    invoke-static {v11, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_c

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v12, v10}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1400(Lcom/android/server/am/OnePlusMemoryTracker;Z)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[OnlineConfig] mEnabled: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v12, Lcom/android/server/am/OnePlusMemoryTracker;->sInUsing:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v10, v9}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1500(Lcom/android/server/am/OnePlusMemoryTracker;Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] mdm: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1600()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v9, v8}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1700(Lcom/android/server/am/OnePlusMemoryTracker;Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] dropbox: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1800()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1900(Lcom/android/server/am/OnePlusMemoryTracker;J)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$300()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2000(Lcom/android/server/am/OnePlusMemoryTracker;J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] interval: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2100()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "[OnlineConfig] line: "

    if-eqz v6, :cond_7

    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v6, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2200(Lcom/android/server/am/OnePlusMemoryTracker;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2300()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5, v4}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2400(Lcom/android/server/am/OnePlusMemoryTracker;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2500()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2600(Lcom/android/server/am/OnePlusMemoryTracker;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2700(Lcom/android/server/am/OnePlusMemoryTracker;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2802(Z)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] sReport: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2800()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2902(Z)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] sReportNoCache: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2900()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1002(J)J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[OnlineConfig] sReportNoCacheInterval: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1000()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v11, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_0
    return-void
.end method
