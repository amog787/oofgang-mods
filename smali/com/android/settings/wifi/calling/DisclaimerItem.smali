.class public abstract Lcom/android/settings/wifi/calling/DisclaimerItem;
.super Ljava/lang/Object;
.source "DisclaimerItem.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field protected final mContext:Landroid/content/Context;

.field protected final mSubId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mContext:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    .line 41
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method

.method private getBooleanSharedPrefs(Ljava/lang/String;Z)Z
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wfc_disclaimer_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private setBooleanSharedPrefs(Ljava/lang/String;Z)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wfc_disclaimer_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 78
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getMessageId()I
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method protected abstract getPrefKey()Ljava/lang/String;
.end method

.method protected abstract getTitleId()I
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onAgreed()V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/calling/DisclaimerItem;->setBooleanSharedPrefs(Ljava/lang/String;Z)V

    return-void
.end method

.method shouldShow()Z
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getBooleanSharedPrefs(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "shouldShow: false due to a user has already agreed."

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "shouldShow: true"

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
