.class Lcom/android/server/am/f$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/f;


# direct methods
.method private constructor <init>(Lcom/android/server/am/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/f$you;->zta:Lcom/android/server/am/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/f;Lcom/android/server/am/f$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/f$you;-><init>(Lcom/android/server/am/f;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/f$you;->zta(Lorg/json/JSONArray;)V

    return-void
.end method

.method public zta(Lorg/json/JSONArray;)V
    .locals 7

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/f$you;->zta:Lcom/android/server/am/f;

    invoke-static {v4}, Lcom/android/server/am/f;->ugm(Lcom/android/server/am/f;)Z

    move-result v4

    if-eq v3, v4, :cond_1

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/f$you;->zta:Lcom/android/server/am/f;

    const-string v5, "vendor.sys.op.disable_ufstw"

    const-string v6, "0"

    invoke-static {v4, v5, v6}, Lcom/android/server/am/f;->zgw(Lcom/android/server/am/f;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/f$you;->zta:Lcom/android/server/am/f;

    invoke-static {v4, v3}, Lcom/android/server/am/f;->vdb(Lcom/android/server/am/f;Z)Z

    :cond_1
    const-string v3, "black"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/f$you;->zta:Lcom/android/server/am/f;

    invoke-static {v3}, Lcom/android/server/am/f;->obl(Lcom/android/server/am/f;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/f$you;->zta:Lcom/android/server/am/f;

    invoke-static {v4}, Lcom/android/server/am/f;->obl(Lcom/android/server/am/f;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/f$you;->zta:Lcom/android/server/am/f;

    invoke-static {v5}, Lcom/android/server/am/f;->obl(Lcom/android/server/am/f;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "OpUfsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updated complete black size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/f$you;->zta:Lcom/android/server/am/f;

    invoke-static {v5}, Lcom/android/server/am/f;->obl(Lcom/android/server/am/f;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resolveConfig error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpUfsController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
