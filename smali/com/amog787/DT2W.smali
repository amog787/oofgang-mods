.class public Lcom/amog787/DT2W;
.super Ljava/lang/Object;


# instance fields
.field private mTouchFeature:Lvendor/xiaomi/hardware/touchfeature/V1_0/ITouchFeature;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 21
    :try_start_0
    invoke-static {}, Lvendor/xiaomi/hardware/touchfeature/V1_0/ITouchFeature;->getService()Lvendor/xiaomi/hardware/touchfeature/V1_0/ITouchFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/amog787/DT2W;->mTouchFeature:Lvendor/xiaomi/hardware/touchfeature/V1_0/ITouchFeature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public enableDT2W(I)V
    .locals 3

    .line 75
    iget-object v1, p0, Lcom/amog787/DT2W;->mTouchFeature:Lvendor/xiaomi/hardware/touchfeature/V1_0/ITouchFeature;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v0, "/system/etc/.amog787"

    invoke-static {v0}, Lcom/oneplus/utils/OUtils;->fCheck(Ljava/lang/String;)Z

    const/16 v2, 0xe

    .line 77
    :try_start_0
    invoke-interface {v1, v2, p1}, Lvendor/xiaomi/hardware/touchfeature/V1_0/ITouchFeature;->setTouchMode(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    return-void
.end method
