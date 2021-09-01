.class public Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiDetailPreferenceController2.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;,
        Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KEY_BUTTONS_PREF:Ljava/lang/String; = "buttons"

.field static final KEY_DATA_USAGE_HEADER:Ljava/lang/String; = "status_header"

.field static final KEY_DNS_PREF:Ljava/lang/String; = "dns"

.field static final KEY_FREQUENCY_PREF:Ljava/lang/String; = "frequency"

.field static final KEY_GATEWAY_PREF:Ljava/lang/String; = "gateway"

.field static final KEY_HEADER:Ljava/lang/String; = "connection_header"

.field static final KEY_IPV6_ADDRESSES_PREF:Ljava/lang/String; = "ipv6_addresses"

.field static final KEY_IPV6_CATEGORY:Ljava/lang/String; = "ipv6_category"

.field static final KEY_IP_ADDRESS_PREF:Ljava/lang/String; = "ip_address"

.field static final KEY_MAC_ADDRESS_PREF:Ljava/lang/String; = "mac_address"

.field static final KEY_RX_LINK_SPEED:Ljava/lang/String; = "rx_link_speed"

.field static final KEY_SECURITY_PREF:Ljava/lang/String; = "security"

.field static final KEY_SIGNAL_STRENGTH_PREF:Ljava/lang/String; = "signal_strength"

.field static final KEY_SSID_PREF:Ljava/lang/String; = "ssid"

.field static final KEY_SUBNET_MASK_PREF:Ljava/lang/String; = "subnet_mask"

.field static final KEY_TX_LINK_SPEED:Ljava/lang/String; = "tx_link_speed"


# instance fields
.field private mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private final mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field mDataUsageSummaryPref:Landroidx/preference/Preference;

.field private mDnsPref:Landroidx/preference/Preference;

.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mFrequencyPref:Landroidx/preference/Preference;

.field private mGatewayPref:Landroidx/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

.field private mIpAddressPref:Landroidx/preference/Preference;

.field private mIpv6AddressPref:Landroidx/preference/Preference;

.field private mIpv6Category:Landroidx/preference/PreferenceCategory;

.field private mIsReady:Z

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMacAddressPref:Landroidx/preference/Preference;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private mRssiSignalLevel:I

.field private mRxLinkSpeedPref:Landroidx/preference/Preference;

.field private mSecurityPref:Landroidx/preference/Preference;

.field private mSignalStr:[Ljava/lang/String;

.field private mSignalStrengthPref:Landroidx/preference/Preference;

.field private mSsidPref:Landroidx/preference/Preference;

.field private mSubnetPref:Landroidx/preference/Preference;

.field mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

.field private mTxLinkSpeedPref:Landroidx/preference/Preference;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl2"

    const/4 v1, 0x3

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;)V
    .locals 2

    .line 285
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 158
    iput v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    .line 189
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 190
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 193
    new-instance v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 287
    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 288
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    .line 289
    iput-object p2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 290
    iput-object p4, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 291
    iput-object p5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mHandler:Landroid/os/Handler;

    .line 292
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$array;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStr:[Ljava/lang/String;

    .line 293
    iput-object p7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 294
    iput-object p8, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 295
    iput-object p9, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    .line 296
    iput-object p10, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    .line 298
    iput-object p6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 299
    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/Network;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/LinkProperties;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEntityHeader()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshButtons()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshIpLayerInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 109
    sget-boolean v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method private canShareNetwork()Z
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result p0

    return p0
.end method

.method private canSignIntoNetwork()Z
    .locals 0

    .line 806
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    return p0
.end method

.method private forgetNetwork()V
    .locals 4

    .line 820
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->showConfirmForgetDialog()V

    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    .line 828
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 829
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x89

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    .line 828
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 830
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getCaptivePortalVenueInfoUrl()Landroid/net/Uri;
    .locals 1

    .line 379
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 383
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 387
    :cond_1
    invoke-virtual {p0}, Landroid/net/CaptivePortalData;->getVenueInfoUrl()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getConnectDisconnectButtonIconResource()I
    .locals 1

    .line 710
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 715
    sget p0, Lcom/android/settings/R$drawable;->ic_settings_close:I

    return p0

    .line 717
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid WifiEntry connected state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 713
    :cond_1
    sget p0, Lcom/android/settings/R$drawable;->ic_settings_wireless:I

    return p0
.end method

.method private getConnectDisconnectButtonTextResource()I
    .locals 1

    .line 697
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 701
    sget p0, Lcom/android/settings/R$string;->wifi_disconnect_button_text:I

    return p0

    .line 705
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid WifiEntry connected state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 703
    :cond_1
    sget p0, Lcom/android/settings/R$string;->wifi_connecting:I

    return p0

    .line 699
    :cond_2
    sget p0, Lcom/android/settings/R$string;->wifi_connect:I

    return p0
.end method

.method private getExpiryTimeSummary()Ljava/lang/String;
    .locals 9

    .line 417
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/CaptivePortalData;->getExpiryTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return-object v1

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 427
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 428
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    .line 426
    invoke-static {v2, v3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 430
    invoke-virtual {v0, v2}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    const-wide/16 v3, 0x2

    .line 434
    invoke-virtual {v0, v3, v4}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 436
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_time_remaining:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 438
    invoke-static {v0, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    long-to-double v5, v5

    .line 436
    invoke-static {p0, v5, v6, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 443
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_expiry_time:I

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    .line 444
    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 443
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private static ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 778
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 780
    invoke-static {v0, p0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->forgetNetwork()V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Landroid/view/View;)V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->signIntoNetwork()V

    return-void
.end method

.method private synthetic lambda$displayPreference$2(Landroid/view/View;)V
    .locals 0

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->connectDisconnectNetwork()V

    return-void
.end method

.method private synthetic lambda$displayPreference$3(Landroid/view/View;)V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->shareNetwork()V

    return-void
.end method

.method private synthetic lambda$shareNetwork$7()V
    .locals 0

    .line 877
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->launchWifiDppConfiguratorActivity()V

    return-void
.end method

.method private synthetic lambda$showConfirmForgetDialog$6(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 838
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 840
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove Passpoint configuration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiDetailsPrefCtrl2"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 843
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x89

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    .line 842
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 844
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$updateCaptivePortalButton$4(Landroid/view/View;)V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->signIntoNetwork()V

    return-void
.end method

.method private synthetic lambda$updateCaptivePortalButton$5(Landroid/net/Uri;Landroid/view/View;)V
    .locals 1

    .line 369
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 370
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 372
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchWifiDppConfiguratorActivity()V
    .locals 7

    .line 857
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getConfiguratorQrCodeGeneratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "WifiDetailsPrefCtrl2"

    const-string v0, "Launch Wi-Fi DPP QR code generator with a wrong Wi-Fi network!"

    .line 861
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v2, 0x0

    const/16 v3, 0x6ae

    const/16 v4, 0x63b

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 869
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static newInstance(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
    .locals 12

    .line 268
    new-instance v11, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    new-instance v9, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    move-object v3, p2

    invoke-direct {v9, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    invoke-direct {v10}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;-><init>()V

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;)V

    return-object v11
.end method

.method private redrawIconForHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->wifi_detail_page_header_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 558
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 559
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    if-ne v1, v0, :cond_0

    if-eq v2, v0, :cond_1

    .line 561
    :cond_0
    const-class v1, Landroid/graphics/drawable/VectorDrawable;

    .line 562
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-object p1

    :cond_2
    const/4 v1, 0x0

    .line 567
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 570
    invoke-static {p1, v0, v0}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 573
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 576
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x1010036

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private refreshButtons()V
    .locals 8

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canForgetNetwork()Z

    move-result v0

    .line 675
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateCaptivePortalButton()Z

    move-result v1

    .line 676
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 677
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 678
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canShareNetwork()Z

    move-result v5

    .line 680
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 681
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 684
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v2, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 685
    invoke-virtual {v7}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v7

    if-ne v7, v4, :cond_2

    goto :goto_2

    :cond_2
    move v7, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v4

    .line 684
    :goto_3
    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 686
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 687
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonTextResource()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 688
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 689
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v5}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 690
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshEntityHeader()V
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->usingDataUsageHeader(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 452
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 453
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getExpiryTimeSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSecondSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 454
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 455
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    :goto_0
    return-void
.end method

.method private refreshFrequency()V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 584
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 588
    :cond_0
    iget v0, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    const/16 v2, 0x960

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9c4

    if-ge v0, v2, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_band_24ghz:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x1324

    if-lt v0, v2, :cond_2

    const/16 v2, 0x170c

    if-ge v0, v2, :cond_2

    .line 595
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_band_5ghz:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 606
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 598
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 599
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 601
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected frequency "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiDetailsPrefCtrl2"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private refreshIpLayerInfo()V
    .locals 9

    .line 723
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 736
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v2, "\n"

    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 739
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_2

    .line 740
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 741
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_1

    .line 743
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 749
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 750
    invoke-virtual {v7}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 751
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 757
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v7, Lcom/android/settings/wifi/details2/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;->INSTANCE:Lcom/android/settings/wifi/details2/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;

    .line 758
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 759
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 762
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v5}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 763
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v6}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 764
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 765
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0}, Ljava/util/StringJoiner;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 768
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    .line 769
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 770
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 772
    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void

    .line 725
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 726
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 727
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 729
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshMacAddress()V
    .locals 4

    .line 645
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 653
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getPrivacy()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 654
    sget v2, Lcom/android/settings/R$string;->wifi_advanced_randomized_mac_address_title:I

    goto :goto_0

    .line 655
    :cond_1
    sget v2, Lcom/android/settings/R$string;->wifi_advanced_device_mac_address_title:I

    .line 653
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v1, "02:00:00:00:00:00"

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->device_info_not_available:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 660
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private refreshPage()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl2"

    const-string v1, "Update UI!"

    .line 492
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEntityHeader()V

    .line 498
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshButtons()V

    .line 501
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshRssiViews()V

    .line 503
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshFrequency()V

    .line 505
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshTxSpeed()V

    .line 507
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshRxSpeed()V

    .line 509
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshIpLayerInfo()V

    .line 511
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshSsid()V

    .line 513
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshMacAddress()V

    return-void
.end method

.method private refreshRssiViews()V
    .locals 6

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiStandard()I

    move-result v1

    .line 519
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->isVhtMax8SpatialStreamsSupported()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 520
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->isHe8ssCapableAp()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 525
    iput v5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    return-void

    .line 529
    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    if-ne v3, v0, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiStandard:I

    if-ne v3, v1, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIsReady:Z

    if-ne v3, v2, :cond_2

    return-void

    .line 534
    :cond_2
    iput v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    .line 535
    iput v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiStandard:I

    .line 536
    iput-boolean v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIsReady:Z

    .line 537
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;->getIcon(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    if-eqz v1, :cond_3

    .line 541
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->redrawIconForHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 545
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x1010429

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStr:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 552
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshRxSpeed()V
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 624
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v0

    .line 630
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 631
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->rx_link_speed:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 632
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    .line 631
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 625
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshSsid()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 638
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 640
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private refreshTxSpeed()V
    .locals 5

    .line 610
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 611
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v0

    .line 617
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 618
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->tx_link_speed:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 619
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    .line 618
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 612
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private setupEntityHeader(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "connection_header"

    .line 391
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 393
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->usingDataUsageHeader(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 394
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "status_header"

    .line 395
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    .line 396
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 397
    new-instance p1, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 398
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 400
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    return-void

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 406
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    sget v2, Lcom/android/settings/R$id;->entity_header:I

    .line 407
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 405
    invoke-static {p1, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 409
    sget p1, Lcom/android/settings/R$id;->entity_header_icon:I

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 411
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 413
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method private shareNetwork()V
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$hRlStYRtk6gRnIZ9b4fjQtDJAVs;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$hRlStYRtk6gRnIZ9b4fjQtDJAVs;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private signIntoNetwork()V
    .locals 4

    .line 884
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 885
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x3f0

    .line 884
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 886
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    return-void
.end method

.method private updateCaptivePortalButton()Z
    .locals 3

    .line 358
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getCaptivePortalVenueInfoUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_sign_in_button_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_sign_in:I

    .line 361
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    new-instance v1, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$iy9zGEnDKtfcsj0LMpV4mF3oOHc;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$iy9zGEnDKtfcsj0LMpV4mF3oOHc;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 362
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 363
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canSignIntoNetwork()Z

    move-result p0

    return p0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v2, Lcom/android/settings/R$string;->wifi_venue_website_button_text:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v2, Lcom/android/settings/R$drawable;->ic_settings_sign_in:I

    .line 367
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    new-instance v2, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$LadmDYir0xvFaw5Z005tEInT9Y8;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$LadmDYir0xvFaw5Z005tEInT9Y8;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/Uri;)V

    .line 368
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 375
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 665
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 666
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 667
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 669
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private usingDataUsageHeader(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "settings_wifi_details_datausage_header"

    .line 938
    invoke-static {p1, p0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canForgetNetwork()Z
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 799
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canModifyNetwork()Z
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 791
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method connectDisconnectNetwork()V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    :goto_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 315
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->setupEntityHeader(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "buttons"

    .line 319
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$string;->forget:I

    .line 320
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_delete:I

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    new-instance v1, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$kdg_mlegDWQhbB8i8D19h9GoZd0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$kdg_mlegDWQhbB8i8D19h9GoZd0;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 322
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_sign_in_button_text:I

    .line 323
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_sign_in:I

    .line 324
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    new-instance v1, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$HZ2OlGAAqvN5hnYh58TjUI9Rhb0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$HZ2OlGAAqvN5hnYh58TjUI9Rhb0;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 325
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 326
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonTextResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 327
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonIconResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    new-instance v1, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$kIa0zLN67h6XNI7jQPpd1nTCE8M;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$kIa0zLN67h6XNI7jQPpd1nTCE8M;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 328
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$string;->share:I

    .line 329
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$drawable;->ic_qrcode_24dp:I

    .line 330
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    new-instance v1, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$6jOWuHxYQH9ZpUj4JasGFLM_Y4Y;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$6jOWuHxYQH9ZpUj4JasGFLM_Y4Y;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 331
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 332
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateCaptivePortalButton()Z

    const-string v0, "signal_strength"

    .line 334
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    const-string v0, "tx_link_speed"

    .line 335
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "rx_link_speed"

    .line 336
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "frequency"

    .line 337
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    const-string v0, "security"

    .line 338
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSecurityPref:Landroidx/preference/Preference;

    const-string v0, "ssid"

    .line 340
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const-string v0, "mac_address"

    .line 341
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    .line 342
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    const-string v0, "gateway"

    .line 343
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    const-string v0, "subnet_mask"

    .line 344
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    const-string v0, "dns"

    .line 345
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    const-string v0, "ipv6_category"

    .line 347
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    const-string v0, "ipv6_addresses"

    .line 348
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    .line 350
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSecurityPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayPreference$0$WifiDetailPreferenceController2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$WifiDetailPreferenceController2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$2$WifiDetailPreferenceController2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$3$WifiDetailPreferenceController2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$shareNetwork$7$WifiDetailPreferenceController2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$shareNetwork$7()V

    return-void
.end method

.method public synthetic lambda$showConfirmForgetDialog$6$WifiDetailPreferenceController2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$showConfirmForgetDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$updateCaptivePortalButton$4$WifiDetailPreferenceController2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$updateCaptivePortalButton$4(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$updateCaptivePortalButton$5$WifiDetailPreferenceController2(Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$updateCaptivePortalButton$5(Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method

.method public onConnectResult(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 969
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_connected_to_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 970
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 969
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 971
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 972
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 973
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_not_in_range_message:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 975
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 977
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_failed_connect_message:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 979
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onDisconnectResult(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 989
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 991
    sget v0, Lcom/android/settings/R$string;->wifi_disconnected_from:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 992
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 991
    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 993
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string p0, "WifiDetailsPrefCtrl2"

    const-string p1, "Disconnect Wi-Fi network failed"

    .line 996
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onForgetResult(I)V
    .locals 3

    if-eqz p1, :cond_0

    const-string p1, "WifiDetailsPrefCtrl2"

    const-string v0, "Forget Wi-Fi network failed"

    .line 1006
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x89

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1010
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateNetworkInfo()V

    .line 481
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshPage()V

    .line 482
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 2

    .line 891
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$2;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public onUpdated()V
    .locals 0

    .line 956
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateNetworkInfo()V

    .line 957
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshPage()V

    .line 960
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    check-cast p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->refreshPreferences()V

    return-void
.end method

.method protected showConfirmForgetDialog()V
    .locals 3

    .line 835
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->forget:I

    new-instance v2, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$c7cxTqoCnFColthDjM8ACmjVLBc;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/details2/-$$Lambda$WifiDetailPreferenceController2$c7cxTqoCnFColthDjM8ACmjVLBc;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 836
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->cancel:I

    const/4 v1, 0x0

    .line 846
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->wifi_forget_dialog_title:I

    .line 847
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->forget_passpoint_dialog_message:I

    .line 848
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 849
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 850
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method updateNetworkInfo()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    .line 463
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 465
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 466
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    .line 469
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    .line 470
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 472
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    :goto_0
    return-void
.end method
