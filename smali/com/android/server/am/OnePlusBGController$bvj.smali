.class Lcom/android/server/am/OnePlusBGController$bvj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "bvj"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$sis;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController$bvj;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController$bvj;->zta(Lorg/json/JSONArray;)V

    return-void
.end method

.method public zta(Lorg/json/JSONArray;)V
    .locals 11

    if-nez p1, :cond_0

    const-string p0, "[OnlineConfig] jsonArray is null!"

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Bg_HighCriteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_HighCriteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->c(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_HighCriteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->b(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_1
    const-string v1, "Bg_GeneCriteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_GeneCriteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->f(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_GeneCriteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->e(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_2
    const-string v1, "Bg_LowCriteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_LowCriteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->h(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_LowCriteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->g(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_3
    const-string v1, "Bg_ReliefBonusmAh"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_ReliefBonusmAh"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->j(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_ReliefmAh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->i(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_4
    const-string v1, "Bg_GMSCriteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_GMSCriteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->l(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_GMSCriteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->k(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_5
    const-string v1, "Min_Total_Criteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Min_Total_Criteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->cgv(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Min_Total_Criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->veq(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_6
    const-string v1, "Min_Top_Criteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Min_Top_Criteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->bud(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Min_Top_Criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->vju(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_7
    const-string v1, "Min_Mid_Criteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Min_Mid_Criteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->irq(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Min_Mid_Criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->les(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_8
    const-string v1, "Min_Bg_Criteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Min_Bg_Criteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->qeg(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Min_Bg_Criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->vdw(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_9
    const-string v1, "DetailType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "DetailType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->lqr(Lcom/android/server/am/OnePlusBGController;I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] DetailType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->fto(Lcom/android/server/am/OnePlusBGController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_a
    const-string v1, "Fg_BlackPkgList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Fg_BlackPkgList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->m(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->m(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    move v3, v0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pkg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] add pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " into mFgBlackPkgSet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->m(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->m(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/am/OnePlusBGController;->n(Lcom/android/server/am/OnePlusBGController;Ljava/util/HashSet;)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_c
    :goto_1
    const-string v1, "Daily_Report"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Daily_Report"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->cjf(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Daily_Report: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->oxb(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_d
    sget-object v1, Lcom/android/server/am/OnePlusBGController$you;->zta:[I

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->obl(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/OnePlusBGController$RomType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    goto/16 :goto_3

    :cond_e
    const-string v1, "List_Only"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "List_Only"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->ire(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] (General)List_Only: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->ear(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    const-string v1, "List_Only_Beta"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "List_Only_Beta"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->ire(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] (Beta)List_Only: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->ear(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_10
    const-string v1, "List_Only_Alpha"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "List_Only_Alpha"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->ire(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] (Alpha)List_Only: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->ear(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_11
    :goto_3
    const-string v1, "MonitorList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "MonitorList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->ibl(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->ibl(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonMonitorArray.length()= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    move v3, v0

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_14

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pkg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ver"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] ver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    array-length v7, v4

    if-lez v7, :cond_13

    move v7, v0

    :goto_5
    array-length v8, v4

    if-ge v7, v8, :cond_13

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lez v8, :cond_12

    :try_start_4
    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catch_0
    move-exception v8

    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] Failed to parseInt! \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_12
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_13
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->ibl(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_14
    monitor-exit v2

    goto :goto_7

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :cond_15
    const-string v0, "[OnlineConfig] Can\'t locate MonitorList object...."

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_16
    :goto_7
    const-string v0, "MaxHistoryDay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v1, "MaxHistoryDay"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBGController;->p(Lcom/android/server/am/OnePlusBGController;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] MaxHistoryDay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->o(Lcom/android/server/am/OnePlusBGController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_17
    const-string v0, "MaxCountOfDay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    const-string v1, "MaxCountOfDay"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusBGController;->r(Lcom/android/server/am/OnePlusBGController;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] MaxCountOfDay: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$bvj;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->q(Lcom/android/server/am/OnePlusBGController;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_8

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_18
    :goto_8
    return-void
.end method
