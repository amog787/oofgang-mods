.class public Lcom/android/settings/network/ims/ImsQueryEnhanced4gLteModeUserSetting;
.super Ljava/lang/Object;
.source "ImsQueryEnhanced4gLteModeUserSetting.java"


# instance fields
.field private volatile mSubId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/settings/network/ims/ImsQueryEnhanced4gLteModeUserSetting;->mSubId:I

    return-void
.end method


# virtual methods
.method public query()Z
    .locals 3

    .line 46
    :try_start_0
    iget v0, p0, Lcom/android/settings/network/ims/ImsQueryEnhanced4gLteModeUserSetting;->mSubId:I

    .line 47
    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isAdvancedCallingSettingEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get VoLte settings. subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/ims/ImsQueryEnhanced4gLteModeUserSetting;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "QueryEnhanced4gLteModeUserSetting"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
