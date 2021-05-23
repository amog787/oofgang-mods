.class Lcom/android/server/OpVibratorService$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/OpVibratorService;


# direct methods
.method private constructor <init>(Lcom/android/server/OpVibratorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OpVibratorService;Lcom/android/server/OpVibratorService$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OpVibratorService$you;-><init>(Lcom/android/server/OpVibratorService;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/OpVibratorService$you;->zta(Lorg/json/JSONArray;)V

    return-void
.end method

.method public zta(Lorg/json/JSONArray;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "effect"

    const-string v3, "max_duration"

    const-string v4, "min_duration"

    const-string v5, "enable"

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/OpVibratorService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[OnlineConfig] config is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_0
    const/4 v7, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Lcom/android/server/OpVibratorService;->access$202(Z)Z

    invoke-static {}, Lcom/android/server/OpVibratorService;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sShortVibrationOnlineConfigEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/OpVibratorService;->access$200()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "short_vibration_effect"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/server/OpVibratorService;->access$200()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-static {v9}, Lcom/android/server/OpVibratorService;->access$300(Lcom/android/server/OpVibratorService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    const-string v9, "haptic_config_list"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_7

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "package_name_list"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_2

    iget-object v13, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-static {v13}, Lcom/android/server/OpVibratorService;->access$400(Lcom/android/server/OpVibratorService;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/OpVibratorService;->access$502(Lcom/android/server/OpVibratorService;I)I

    :cond_3
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/OpVibratorService;->access$602(Lcom/android/server/OpVibratorService;I)I

    :cond_4
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v11, v10}, Lcom/android/server/OpVibratorService;->access$702(Lcom/android/server/OpVibratorService;I)I

    :cond_5
    const/4 v10, 0x0

    :goto_3
    iget-object v11, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-static {v11}, Lcom/android/server/OpVibratorService;->access$400(Lcom/android/server/OpVibratorService;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v11, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-static {v11}, Lcom/android/server/OpVibratorService;->access$300(Lcom/android/server/OpVibratorService;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-static {v12}, Lcom/android/server/OpVibratorService;->access$400(Lcom/android/server/OpVibratorService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v13, Lcom/android/server/OpVibratorService$sis;

    iget-object v14, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    iget-object v15, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-static {v15}, Lcom/android/server/OpVibratorService;->access$500(Lcom/android/server/OpVibratorService;)I

    move-result v15

    iget-object v6, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-static {v6}, Lcom/android/server/OpVibratorService;->access$600(Lcom/android/server/OpVibratorService;)I

    move-result v6

    iget-object v1, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-static {v1}, Lcom/android/server/OpVibratorService;->access$700(Lcom/android/server/OpVibratorService;)I

    move-result v1

    invoke-direct {v13, v14, v15, v6, v1}, Lcom/android/server/OpVibratorService$sis;-><init>(Lcom/android/server/OpVibratorService;III)V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/android/server/OpVibratorService$you;->zta:Lcom/android/server/OpVibratorService;

    invoke-static {v1}, Lcom/android/server/OpVibratorService;->access$800(Lcom/android/server/OpVibratorService;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/OpVibratorService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process online config! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    return-void
.end method
