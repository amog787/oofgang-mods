.class public Lcom/android/settings/AirplaneModeEnabler;
.super Lcom/android/settings/network/GlobalSettingsChangeListener;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AirplaneModeEnabler$OPPhoneStateListener;,
        Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mOnAirplaneModeChangedListener:Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V
    .locals 1

    const-string v0, "airplane_mode_on"

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 71
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnabler;->mOnAirplaneModeChangedListener:Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;

    .line 73
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 75
    new-instance p1, Lcom/android/settings/AirplaneModeEnabler$OPPhoneStateListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/settings/AirplaneModeEnabler$OPPhoneStateListener;-><init>(Landroid/os/Looper;Lcom/android/settings/AirplaneModeEnabler;)V

    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mOnAirplaneModeChangedListener:Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;->onAirplaneModeChanged(Z)V

    :cond_0
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mOnAirplaneModeChangedListener:Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;->onAirplaneModeChanged(Z)V

    .line 137
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 138
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public isAirplaneModeOn()Z
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isInEcmMode()Z
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 170
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 171
    iget-object v4, p0, Lcom/android/settings/AirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 172
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 174
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->isInEcmMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ECM airplane mode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AirplaneModeEnabler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const/16 v2, 0xb1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 189
    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    :goto_0
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exist ECM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", with airplane mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirplaneModeEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 197
    invoke-direct {p0, p2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v1, 0x800000

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
