.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field static final UNDESIRED_CERTIFICATES:[Ljava/lang/String;

.field private static final WAPI_PSK_TYPE:[I


# instance fields
.field private final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mDoNotValidateEapServerString:Ljava/lang/String;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapDomainView:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapOcspSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHaveWapiCert:Z

.field private mHiddenSettingsSpinner:Landroid/widget/Spinner;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mMeteredSettingsSpinner:Landroid/widget/Spinner;

.field private mMode:I

.field private mMultipleCertSetString:Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivacySettingsSpinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mRequestFocus:Z

.field mSecurityInPosition:[Ljava/lang/Integer;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShareThisWifiCheckBox:Landroid/widget/CheckBox;

.field private mSharedCheckBox:Landroid/widget/CheckBox;

.field private mSimCardSpinner:Landroid/widget/Spinner;

.field private mSimDisplayNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsidScanButton:Landroid/widget/ImageButton;

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private final mView:Landroid/view/View;

.field private mWapiCertSpinner:Landroid/widget/Spinner;

.field private mWapiPskTypeSpinner:Landroid/widget/Spinner;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private selectedSimCardNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MacRandSecret"

    const-string v1, "MacRandSapSecret"

    .line 161
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 205
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 255
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;ILandroid/net/wifi/WifiManager;)V
    .locals 2

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHaveWapiCert:Z

    .line 233
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 234
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 236
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    const/4 v1, 0x1

    .line 237
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mRequestFocus:Z

    .line 250
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 275
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 277
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 278
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 279
    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 280
    iput-object p5, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 281
    invoke-direct {p0, p3, p4}, Lcom/android/settings/wifi/WifiConfigController;->initWifiConfigController(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;IZ)V
    .locals 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHaveWapiCert:Z

    .line 233
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 234
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 236
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    const/4 v1, 0x1

    .line 237
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mRequestFocus:Z

    .line 250
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 260
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 262
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 263
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 264
    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 265
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiConfigController;->mRequestFocus:Z

    const-string/jumbo p2, "wifi"

    .line 268
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 269
    invoke-direct {p0, p3, p4}, Lcom/android/settings/wifi/WifiConfigController;->initWifiConfigController(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiConfigController;)Landroid/content/Context;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 2

    .line 528
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/settings/R$layout;->wifi_dialog_row:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 529
    sget v0, Lcom/android/settings/R$id;->name:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 530
    sget p2, Lcom/android/settings/R$id;->value:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static checkHexPasswd(Ljava/lang/String;)I
    .locals 3

    .line 2232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2235
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 2236
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    :cond_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    const/16 v2, 0x46

    if-le v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_4

    const/16 v2, 0x66

    if-le v1, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p0, -0x2

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private checkWapiPassword(Ljava/lang/String;I)Z
    .locals 4

    .line 2204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2205
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wapi_password_empty:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 2206
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 2210
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x40

    if-le v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_3

    .line 2217
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController;->checkHexPasswd(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x2

    if-ne p1, p2, :cond_2

    .line 2219
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wapi_password_hex_format_invalid:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 2220
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_2
    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 2224
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wapi_password_hex_length_invalid:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 2225
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_3
    return v2

    .line 2212
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wapi_password_length_invalid:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 2213
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method private configureSecuritySpinner()V
    .locals 7

    .line 2007
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    sget v1, Lcom/android/settings/R$string;->wifi_add_network:I

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 2009
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ssid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 2010
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2011
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->security:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 2012
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2014
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    const v3, 0x1020014

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    const v1, 0x1090009

    .line 2016
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2017
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2021
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_security_none:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2022
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2023
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 2024
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_security_owe:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2025
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 2027
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->wifi_security_wep:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2028
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    .line 2029
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_wpa_wpa2:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2030
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v4, v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    .line 2031
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2032
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_security_sae:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2033
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    move v4, v3

    .line 2035
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_security_eap:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2036
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 2037
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2038
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_eap_suiteb:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2039
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    move v3, v4

    .line 2043
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWapiSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2044
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_security_wapi_psk:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2045
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    .line 2046
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_security_wapi_cert:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2047
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    .line 2050
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 2052
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2054
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 2055
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 2056
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2058
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_settings_field:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2059
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2060
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2062
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAdvancedOptionAccessibilityString()V

    return-void
.end method

.method private createAccessibleEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Landroid/text/SpannableString;
    .locals 3

    .line 2140
    array-length p0, p1

    new-array p0, p0, [Landroid/text/SpannableString;

    const/4 v0, 0x0

    .line 2141
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2142
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    .line 2143
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2142
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    .line 1065
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSIMInfo()V
    .locals 6

    .line 1993
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v0, 0x0

    move v1, v0

    .line 1994
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1995
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1996
    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1998
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2000
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sim_editor_title:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2002
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 2095
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 2096
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 2095
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 2101
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    .line 2103
    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method private getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 2114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2115
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 2117
    sget v1, Lcom/android/settings/R$array;->wifi_eap_method_target_strings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2119
    sget v2, Lcom/android/settings/R$array;->wifi_eap_method_tts_strings:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2123
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/wifi/WifiConfigController;->findAndReplaceTargetStrings([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 2127
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiConfigController;->createAccessibleEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Landroid/text/SpannableString;

    move-result-object p1

    .line 2131
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    .line 2133
    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method private hideSoftKeyboard(Landroid/os/IBinder;)V
    .locals 1

    .line 2149
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 2151
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initWifiConfigController(Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 288
    iput p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    .line 290
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 292
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 293
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 294
    sget p2, Lcom/android/settings/R$array;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 295
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111006c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 299
    :cond_1
    sget p2, Lcom/android/settings/R$array;->wifi_peap_phase2_entries_with_sim_auth:I

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_2

    .line 297
    :cond_2
    :goto_1
    sget p2, Lcom/android/settings/R$array;->wifi_peap_phase2_entries:I

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    .line 303
    :goto_2
    sget p2, Lcom/android/settings/R$array;->wifi_ttls_phase2_entries:I

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    .line 305
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_unspecified:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 306
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_multiple_cert_added:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    .line 307
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_use_system_certs:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    .line 308
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_do_not_provide_eap_user_cert:I

    .line 309
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 310
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_do_not_validate_eap_server:I

    .line 311
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 313
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ssid_scanner_button:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidScanButton:Landroid/widget/ImageButton;

    .line 314
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->dialog_scrollview:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    .line 315
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ip_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 316
    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 317
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 318
    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 319
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->shared:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    .line 320
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->metered_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    .line 321
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    .line 322
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->privacy_settings:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    .line 323
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isConnectedMacRandomizationSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 324
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->privacy_settings_fields:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 325
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_3
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 328
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hidden_settings_warning:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 335
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->share_this_wifi:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    const/16 p2, 0xa

    new-array p2, p2, [Ljava/lang/Integer;

    .line 336
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    .line 338
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/16 v1, 0x8

    if-nez p2, :cond_4

    .line 339
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->configureSecuritySpinner()V

    .line 340
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    sget v0, Lcom/android/settings/R$string;->wifi_save:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 343
    :cond_4
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isWifiCoverageExtendFeatureEnabled()Z

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 344
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 345
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p2

    if-eq p2, v2, :cond_6

    .line 346
    :cond_5
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 347
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 350
    :cond_6
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 352
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->info:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 355
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_d

    .line 356
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 357
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    iget v6, v3, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 358
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    iget-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 363
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v6, "settings_wifitracker2"

    invoke-static {v5, v6}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 364
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 365
    invoke-static {v5}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translateMacRandomizedValueToPrefValue(I)I

    move-result v5

    goto :goto_3

    .line 367
    :cond_7
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 368
    invoke-static {v5}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->translateMacRandomizedValueToPrefValue(I)I

    move-result v5

    .line 370
    :goto_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 372
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v5, v6, :cond_9

    .line 373
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 376
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v5

    .line 377
    invoke-virtual {v5}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 378
    iget-object v5, v5, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v5, :cond_8

    .line 379
    sget v6, Lcom/android/settings/R$string;->wifi_ip_address:I

    .line 380
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-direct {p0, p2, v6, v5}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_8
    move v5, v4

    goto :goto_4

    .line 383
    :cond_9
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setSelection(I)V

    move v5, v0

    .line 385
    :goto_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    iget-boolean v7, v3, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 386
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    iget-boolean v7, v3, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 387
    iget-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v6, :cond_a

    move v5, v4

    .line 391
    :cond_a
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v6

    .line 392
    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_b

    .line 393
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_5
    move v5, v4

    goto :goto_6

    .line 395
    :cond_b
    sget-object v7, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v6, v7, :cond_c

    .line 396
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_5

    .line 399
    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_6
    if-eqz v3, :cond_e

    .line 401
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 402
    sget v6, Lcom/android/settings/R$string;->passpoint_label:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->passpoint_content:I

    .line 403
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v3, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-direct {p0, p2, v6, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_7

    :cond_d
    move v5, v0

    .line 408
    :cond_e
    :goto_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 409
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-eqz v3, :cond_13

    .line 411
    :cond_10
    invoke-direct {p0, v4, v4}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields(ZZ)V

    .line 412
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 413
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 414
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    .line 415
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-nez v5, :cond_11

    .line 418
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v7, Lcom/android/settings/R$id;->wifi_advanced_toggle:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 419
    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 420
    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 421
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAdvancedOptionAccessibilityString()V

    .line 423
    :cond_11
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->wifi_advanced_fields:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v5, :cond_12

    move v5, v0

    goto :goto_8

    :cond_12
    move v5, v1

    .line 424
    :goto_8
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_13
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-ne v3, v2, :cond_14

    .line 428
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    sget v0, Lcom/android/settings/R$string;->wifi_save:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_14
    if-ne v3, v4, :cond_15

    .line 430
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    sget v0, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 432
    :cond_15
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_16

    .line 435
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v5, :cond_17

    :cond_16
    if-eqz v3, :cond_17

    .line 436
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    sget v0, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_17
    const/4 v5, 0x0

    if-eqz v2, :cond_1b

    .line 439
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v6

    .line 440
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 442
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 443
    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    :cond_18
    if-eqz v7, :cond_1a

    .line 446
    iget-boolean v8, v7, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-nez v8, :cond_19

    iget-boolean v8, v7, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v8, :cond_1a

    .line 449
    :cond_19
    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    goto :goto_9

    :cond_1a
    move-object v7, v5

    .line 451
    :goto_9
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 452
    invoke-interface {v8}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 451
    invoke-static {v8, v5, v2, v6, v7}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    sget v6, Lcom/android/settings/R$string;->wifi_status:I

    invoke-direct {p0, p2, v6, v2}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_1b
    if-eqz v3, :cond_1c

    .line 458
    sget v2, Lcom/android/settings/R$string;->wifi_signal:I

    invoke-direct {p0, p2, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 461
    :cond_1c
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1d

    .line 462
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v6

    if-eq v6, v3, :cond_1d

    .line 463
    sget v6, Lcom/android/settings/R$string;->tx_wifi_speed:I

    sget v7, Lcom/android/settings/R$string;->tx_link_speed:I

    .line 464
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    .line 463
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v6, v7}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_1d
    if-eqz v2, :cond_1e

    .line 467
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v6

    if-eq v6, v3, :cond_1e

    .line 468
    sget v6, Lcom/android/settings/R$string;->rx_wifi_speed:I

    sget v7, Lcom/android/settings/R$string;->rx_link_speed:I

    .line 469
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v0

    .line 468
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v6, v4}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_1e
    if-eqz v2, :cond_22

    .line 472
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    if-eq v4, v3, :cond_22

    .line 473
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    const/16 v3, 0x960

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x9c4

    if-ge v2, v3, :cond_1f

    .line 478
    sget v2, Lcom/android/settings/R$string;->wifi_band_24ghz:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_1f
    const/16 v3, 0x1324

    if-lt v2, v3, :cond_20

    const/16 v3, 0x170c

    if-ge v2, v3, :cond_20

    .line 481
    sget v2, Lcom/android/settings/R$string;->wifi_band_5ghz:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_20
    const v3, 0xe3d0

    if-lt v2, v3, :cond_21

    const v3, 0x11238

    if-ge v2, v3, :cond_21

    .line 484
    sget v2, Lcom/android/settings/R$string;->wifi_band_60ghz:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    .line 486
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected frequency "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiConfigController"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    if-eqz v5, :cond_22

    .line 489
    sget v2, Lcom/android/settings/R$string;->wifi_frequency:I

    invoke-direct {p0, p2, v2, v5}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 493
    :cond_22
    sget v2, Lcom/android/settings/R$string;->wifi_security:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v2, v0}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 494
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->ip_fields:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :goto_b
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p2

    if-nez p2, :cond_23

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result p2

    if-nez p2, :cond_23

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 497
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result p2

    if-eqz p2, :cond_24

    .line 498
    :cond_23
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    sget v0, Lcom/android/settings/R$string;->wifi_forget:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 502
    :cond_24
    :goto_c
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 505
    :goto_d
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSplitSystemUser()Z

    move-result p2

    if-nez p2, :cond_25

    .line 506
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 509
    :cond_25
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    sget v0, Lcom/android/settings/R$string;->wifi_cancel:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 510
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 515
    :cond_26
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mRequestFocus:Z

    if-eqz p1, :cond_27

    .line 516
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->l_wifidialog:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_27
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 6

    .line 1014
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1016
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 1017
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 1019
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 1020
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 1021
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1028
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v2, 0x0

    .line 1029
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    if-ne v0, v1, :cond_3

    .line 1030
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 1031
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1032
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1033
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1034
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1038
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :try_start_1
    invoke-static {v0, v2, v4}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v5, v3

    .line 1041
    :catch_1
    sget v2, Lcom/android/settings/R$string;->proxy_error_invalid_port:I

    :goto_1
    if-nez v2, :cond_2

    .line 1044
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0, v5, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 1048
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1049
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1050
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1051
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    .line 1054
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    return v3

    .line 1058
    :cond_5
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    :cond_6
    :goto_2
    return v1
.end method

.method private isWapiPskValid()Z
    .locals 4

    .line 717
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    sget-object v2, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE:[I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 724
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const-string p0, "[0-9A-Fa-f]*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return v1

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method private isWepPskValid(Ljava/lang/String;I)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    const/16 v0, 0xd

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10

    if-eq p2, v0, :cond_3

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x20

    if-ne p2, v0, :cond_2

    :cond_1
    const-string p2, "[0-9A-Fa-f]*"

    .line 1983
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :cond_4
    :goto_1
    return p0
.end method

.method private synthetic lambda$afterTextChanged$1()V
    .locals 1

    .line 1823
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->showWarningMessagesIfAppropriate()V

    .line 1824
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1826
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1827
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setGatewayByNetworkPrefixLength()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$loadCertificates$0(Ljava/lang/String;)Z
    .locals 5

    .line 1747
    sget-object v0, Lcom/android/settings/wifi/WifiConfigController;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1748
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private loadWapiCertificates(Landroid/widget/Spinner;)V
    .locals 7

    .line 1775
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1776
    sget v1, Lcom/android/settings/R$string;->wifi_unspecified:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1777
    sget v2, Lcom/android/settings/R$string;->wapi_auto_sel_cert:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1778
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1780
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const-string v5, "WAPI_USER_"

    const/16 v6, 0x3f2

    invoke-virtual {v4, v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 1781
    array-length v6, v4

    if-gtz v6, :cond_0

    goto :goto_1

    .line 1784
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v5

    .line 1785
    :goto_0
    array-length v2, v4

    if-ge v1, v2, :cond_2

    .line 1786
    aget-object v2, v4, v1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1782
    :cond_1
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 1791
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHaveWapiCert:Z

    goto :goto_2

    .line 1793
    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mHaveWapiCert:Z

    .line 1796
    :goto_2
    new-instance p0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    new-array v2, v5, [Ljava/lang/String;

    .line 1798
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 1799
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1800
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setAccessibilityDelegateForSecuritySpinners()V
    .locals 2

    .line 1397
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 1409
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1410
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1411
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1412
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1413
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setAdvancedOptionAccessibilityString()V
    .locals 2

    .line 2155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2156
    new-instance v1, Lcom/android/settings/wifi/WifiConfigController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .line 1590
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .line 1570
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_ca_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1571
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setDomainInvisible()V
    .locals 2

    .line 1580
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_domain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1581
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setGatewayByNetworkPrefixLength()V
    .locals 3

    .line 1837
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_3

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1843
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1844
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 1846
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1847
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1849
    :cond_2
    invoke-static {v1, v0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1850
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1851
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-byte v2, v0, v1

    .line 1853
    :try_start_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1854
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 1

    .line 1562
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setOcspInvisible()V
    .locals 2

    .line 1575
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_ocsp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1576
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapOcspSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setPasswordInvisible()V
    .locals 2

    .line 1595
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1596
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setPhase2Invisible()V
    .locals 1

    .line 1566
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1806
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/ArrayAdapter;

    .line 1807
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1808
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1809
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setSimCardInvisible()V
    .locals 1

    .line 1558
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_sim_card:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .line 1585
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_user_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1586
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setVisibility(II)V
    .locals 0

    .line 1709
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1711
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 6

    .line 1440
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_method:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_domain:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_ca_cert:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_ocsp:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1448
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1449
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p1, 0x0

    .line 1496
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 1499
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v3, 0x1090008

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimDisplayNames:Ljava/util/ArrayList;

    .line 1501
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    .line 1503
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1505
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1506
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_sim_card:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 1508
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1509
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1510
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1513
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1516
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1517
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1518
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1519
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setOcspInvisible()V

    .line 1520
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    .line 1521
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1522
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1523
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_1

    .line 1454
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1455
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1456
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setOcspInvisible()V

    .line 1457
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    .line 1458
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1459
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1460
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_1

    .line 1483
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2TtlsAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v0, :cond_3

    .line 1484
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1485
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1487
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1488
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1490
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_1

    .line 1463
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_user_cert:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1464
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1465
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1466
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1467
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    goto :goto_1

    .line 1471
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v0, :cond_4

    .line 1472
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1473
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1475
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_phase2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showPeapFields()V

    .line 1478
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1479
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setSimCardInvisible()V

    .line 1527
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_ca_cert:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    .line 1528
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1529
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 1530
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1533
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    .line 1537
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setOcspInvisible()V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 4

    .line 1607
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ip_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1609
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1613
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1614
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->staticip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1616
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ipaddress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1617
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1618
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->gateway:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1619
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1620
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->network_prefix_length:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1622
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1623
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->dns1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1624
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1625
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->dns2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1626
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_6

    .line 1629
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    .line 1630
    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1632
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_2

    .line 1633
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1634
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1633
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1635
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 1636
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    .line 1635
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1639
    :cond_2
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_3

    .line 1640
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1643
    :cond_3
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1644
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1645
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1648
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1653
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->staticip:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private showPeapFields()V
    .locals 3

    .line 1543
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1551
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l_anonymous:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1552
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1553
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1546
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_identity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    :goto_1
    return-void
.end method

.method private showProxyFields()V
    .locals 5

    .line 1660
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1662
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1666
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne v2, v3, :cond_2

    .line 1667
    sget v2, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1668
    sget v2, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1669
    sget v1, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1670
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1671
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_hostname:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1672
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1673
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_port:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1674
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1675
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_exclusionlist:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1676
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_5

    .line 1679
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1681
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1682
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1686
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1687
    sget v2, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1688
    sget v2, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1689
    sget v2, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1691
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 1692
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_pac:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 1693
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    if-eqz v0, :cond_5

    .line 1696
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1698
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1702
    :cond_4
    sget v0, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1703
    sget v0, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1704
    sget v0, Lcom/android/settings/R$id;->proxy_pac_field:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method private showSecurityFields(ZZ)V
    .locals 14

    move-object v6, p0

    .line 1154
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/16 v1, 0x8

    if-eqz v0, :cond_22

    const/4 v7, 0x4

    if-eq v0, v7, :cond_22

    const/4 v8, 0x7

    if-ne v0, v8, :cond_0

    goto/16 :goto_a

    .line 1160
    :cond_0
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->security_fields:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1163
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 1164
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1165
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1166
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1167
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->show_password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1168
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1170
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 1176
    :cond_1
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eq v0, v1, :cond_2

    .line 1177
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wapi_psk:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1179
    :cond_2
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wapi_psk:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wapi_psk_type:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskTypeSpinner:Landroid/widget/Spinner;

    .line 1182
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1183
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    .line 1185
    :cond_3
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1187
    :goto_0
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1f

    .line 1188
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wapi_cert:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1189
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x3

    const/4 v11, 0x6

    if-eq v0, v10, :cond_4

    if-eq v0, v11, :cond_4

    .line 1214
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->eap:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1222
    :cond_4
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->eap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x1

    if-nez v0, :cond_6

    .line 1227
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->getSIMInfo()V

    .line 1229
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->method:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1230
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1232
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v0, v11, :cond_5

    .line 1233
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1234
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1237
    :cond_5
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->phase2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1238
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1239
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ca_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 1240
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1241
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ocsp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapOcspSpinner:Landroid/widget/Spinner;

    .line 1242
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->domain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    .line 1243
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1244
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->user_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 1245
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1246
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sim_card:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    .line 1247
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->identity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 1248
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->anonymous:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1250
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAccessibilityDelegateForSecuritySpinners()V

    move v13, v12

    goto :goto_1

    :cond_6
    move v13, v9

    :goto_1
    if-eqz p1, :cond_a

    .line 1255
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v0, v11, :cond_7

    .line 1256
    sget v0, Lcom/android/settings/R$array;->wifi_eap_method:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 1257
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1259
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1260
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_3

    .line 1261
    :cond_7
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    .line 1267
    :cond_8
    sget v0, Lcom/android/settings/R$array;->wifi_eap_method:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerAdapterWithEapMethodsTts(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 1268
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1269
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_3

    .line 1263
    :cond_9
    :goto_2
    sget v0, Lcom/android/settings/R$array;->eap_method_without_sim_auth:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 1264
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1265
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_a
    :goto_3
    if-eqz p2, :cond_b

    .line 1274
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v3, v6, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v2, "CACERT_"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1280
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v3, v6, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v2, "USRPKEY_"

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1290
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_b
    if-eqz v13, :cond_1d

    .line 1294
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1295
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1296
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 1297
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v1

    .line 1298
    iget-object v2, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1299
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    const-string v2, "Invalid phase 2 method "

    const-string v3, "WifiConfigController"

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz v0, :cond_13

    if-eq v0, v5, :cond_e

    if-eq v0, v7, :cond_c

    if-eq v0, v4, :cond_c

    if-eq v0, v11, :cond_c

    goto/16 :goto_4

    .line 1345
    :cond_c
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1346
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1347
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1348
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    sub-int/2addr v0, v12

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 1350
    :cond_d
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    :cond_e
    if-eq v1, v12, :cond_12

    if-eq v1, v5, :cond_11

    if-eq v1, v10, :cond_10

    if-eq v1, v7, :cond_f

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1335
    :cond_f
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1332
    :cond_10
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1329
    :cond_11
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1326
    :cond_12
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    :cond_13
    if-eq v1, v10, :cond_18

    if-eq v1, v7, :cond_17

    if-eq v1, v4, :cond_16

    if-eq v1, v11, :cond_15

    if-eq v1, v8, :cond_14

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1316
    :cond_14
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1313
    :cond_15
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1310
    :cond_16
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1307
    :cond_17
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 1304
    :cond_18
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1356
    :goto_4
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1357
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_5

    .line 1359
    :cond_19
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1361
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_5

    .line 1362
    :cond_1a
    array-length v1, v0

    if-ne v1, v12, :cond_1b

    .line 1363
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    aget-object v0, v0, v9

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_5

    .line 1366
    :cond_1b
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v3, v6, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v2, "CACERT_"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1372
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1375
    :goto_5
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getOcsp()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1376
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 1378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1379
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_6

    .line 1381
    :cond_1c
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1383
    :goto_6
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1386
    :cond_1d
    iget v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v0, v11, :cond_1e

    .line 1387
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1388
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_7

    .line 1390
    :cond_1e
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1392
    :goto_7
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    :goto_8
    return-void

    .line 1192
    :cond_1f
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->password_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->show_password_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->eap:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wapi_cert:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1196
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wapi_cert_select:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertSpinner:Landroid/widget/Spinner;

    .line 1197
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->loadWapiCertificates(Landroid/widget/Spinner;)V

    .line 1199
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1200
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1203
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiCertSuite()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1204
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_9

    .line 1206
    :cond_20
    iget-object v1, v6, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertSpinner:Landroid/widget/Spinner;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiCertSuite()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_21
    :goto_9
    return-void

    .line 1157
    :cond_22
    :goto_a
    iget-object v0, v6, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->security_fields:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 6

    .line 1072
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1074
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0

    .line 1077
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1078
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v2, -0x1

    .line 1084
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    const/16 v3, 0x20

    if-le v2, v3, :cond_3

    goto :goto_0

    .line 1088
    :cond_3
    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    goto :goto_1

    .line 1086
    :cond_4
    :goto_0
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_network_prefix_length:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1099
    :catch_0
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0

    .line 1092
    :catch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1094
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->wifi_network_prefix_length_hint:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1108
    :try_start_1
    invoke-static {v0, v2}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1110
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-byte v3, v0, v2

    .line 1111
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 1116
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1118
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I

    return p0

    .line 1120
    :cond_7
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1121
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I

    return p0

    .line 1123
    :cond_8
    iput-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 1126
    :catch_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->wifi_dns1_hint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1135
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1137
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    return p0

    .line 1139
    :cond_a
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 1143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object p0

    if-nez p0, :cond_b

    .line 1146
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    return p0

    .line 1148
    :cond_b
    iget-object p1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    return v1

    .line 1079
    :cond_d
    :goto_4
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1822
    new-instance p1, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$kjpxX7C3P_KOmXXunfifdhfpOuo;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$kjpxX7C3P_KOmXXunfifdhfpOuo;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public checkWapiParam()Z
    .locals 5

    .line 2182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2183
    sget v1, Lcom/android/settings/R$string;->wifi_unchanged:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2185
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    .line 2186
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHaveWapiCert:Z

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 2190
    sget-object v1, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE:[I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget v1, v1, v3

    .line 2191
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2192
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    .line 2194
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 2197
    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/WifiConfigController;->checkWapiPassword(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_3
    return v2
.end method

.method enableSubmitIfAppropriate()V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method findAndReplaceTargetStrings([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 5

    .line 2077
    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_0

    return-object p1

    .line 2081
    :cond_0
    array-length p0, p1

    new-array p0, p0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    move v1, v0

    .line 2082
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 2083
    aget-object v2, p1, v1

    aput-object v2, p0, v1

    move v2, v0

    .line 2084
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 2085
    aget-object v3, p1, v1

    aget-object v4, p2, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2086
    aget-object v3, p3, v2

    aput-object v3, p0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 0

    .line 1972
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object p0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .line 733
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 737
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 745
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 746
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 747
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 749
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 750
    :cond_2
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_3

    .line 751
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 752
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    .line 751
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 754
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 755
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 758
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 759
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shareThisAp:Z

    .line 761
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/16 v8, 0x22

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 976
    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 977
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 979
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_4

    .line 980
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiCertSuite(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 982
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiCertSuite(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 965
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 966
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_24

    .line 968
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_5

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_9

    .line 971
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_9

    .line 948
    :pswitch_2
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 949
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    goto/16 :goto_9

    .line 952
    :pswitch_3
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 953
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_24

    .line 954
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_9

    .line 960
    :pswitch_4
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_9

    :pswitch_5
    const/4 v8, 0x5

    const/4 v9, 0x3

    if-ne v2, v5, :cond_6

    .line 805
    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_2

    .line 807
    :cond_6
    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 809
    :goto_2
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 810
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 811
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    .line 812
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const-string v11, "Unknown phase2 method"

    const-string v12, "WifiConfigController"

    if-eqz v2, :cond_d

    if-eq v2, v6, :cond_8

    if-eq v2, v7, :cond_7

    if-eq v2, v8, :cond_7

    if-eq v2, v5, :cond_7

    goto/16 :goto_3

    .line 862
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimCardSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/settings/wifi/WifiConfigController;->selectedSimCardNumber:I

    .line 863
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setSimNum(I)V

    goto/16 :goto_3

    :cond_8
    if-eqz v10, :cond_c

    if-eq v10, v4, :cond_b

    if-eq v10, v6, :cond_a

    if-eq v10, v9, :cond_9

    .line 855
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 852
    :cond_9
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 849
    :cond_a
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 846
    :cond_b
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 843
    :cond_c
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    :cond_d
    if-eqz v10, :cond_12

    if-eq v10, v4, :cond_11

    if-eq v10, v6, :cond_10

    if-eq v10, v9, :cond_f

    if-eq v10, v7, :cond_e

    .line 835
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 832
    :cond_e
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x7

    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 829
    :cond_f
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 826
    :cond_10
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 823
    :cond_11
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_3

    .line 820
    :cond_12
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 869
    :goto_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 870
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 871
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 872
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 874
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4

    .line 876
    :cond_13
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 877
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v4, "/system/etc/security/cacerts"

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_4

    .line 878
    :cond_14
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 879
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_17

    .line 880
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "Multiple certs can only be set when editing saved network"

    .line 881
    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_15
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 886
    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 888
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v4

    .line 884
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_4

    .line 891
    :cond_16
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v3

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 898
    :cond_17
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 899
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ca_cert ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 901
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") and ca_path ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 903
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") should not both be non-null"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_18
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 909
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_5

    .line 912
    :cond_19
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapOcspSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    goto :goto_6

    .line 910
    :cond_1a
    :goto_5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setOcsp(I)V

    .line 915
    :goto_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 916
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_1b

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 917
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    move-object v1, v4

    .line 922
    :cond_1c
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    if-eq v2, v7, :cond_1f

    if-eq v2, v8, :cond_1f

    if-ne v2, v5, :cond_1d

    goto :goto_7

    :cond_1d
    if-ne v2, v9, :cond_1e

    .line 927
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 928
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_8

    .line 930
    :cond_1e
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 931
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 932
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 931
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_8

    .line 924
    :cond_1f
    :goto_7
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 925
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 935
    :goto_8
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 938
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 939
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 943
    :cond_20
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 790
    :pswitch_6
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 791
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_24

    .line 792
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9A-Fa-f]{64}"

    .line 793
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 794
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_9

    .line 796
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_9

    .line 767
    :pswitch_7
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 768
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_24

    .line 769
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 770
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    if-eq v1, v4, :cond_22

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_22

    const/16 v4, 0x20

    if-ne v1, v4, :cond_23

    :cond_22
    const-string v1, "[0-9A-Fa-f]*"

    .line 781
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 782
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v1, v3

    goto :goto_9

    .line 784
    :cond_23
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_9

    .line 763
    :pswitch_8
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 990
    :cond_24
    :goto_9
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 993
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_25

    .line 994
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 997
    :cond_25
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_27

    .line 999
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v2, "settings_wifitracker2"

    invoke-static {v1, v2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1000
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    .line 1001
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    .line 1000
    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->translatePrefValueToMacRandomizedValue(I)I

    move-result p0

    goto :goto_a

    .line 1003
    :cond_26
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPrivacySettingsSpinner:Landroid/widget/Spinner;

    .line 1004
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    .line 1003
    invoke-static {p0}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->translatePrefValueToMacRandomizedValue(I)I

    move-result p0

    .line 1006
    :goto_a
    iput p0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :cond_27
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurSecurity()I
    .locals 0

    .line 2177
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    return p0
.end method

.method getKeyStore()Landroid/security/KeyStore;
    .locals 0

    .line 1717
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    .line 1817
    iget p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    return p0
.end method

.method getSignalString()Ljava/lang/String;
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 541
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-object v1, p0, v0

    :cond_1
    return-object v1
.end method

.method hideForgetButton()V
    .locals 1

    .line 545
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 548
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method hideSubmitButton()V
    .locals 1

    .line 552
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 555
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method isSplitSystemUser()Z
    .locals 1

    .line 522
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    .line 523
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 524
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result p0

    return p0
.end method

.method isSubmittable()Z
    .locals 7

    .line 585
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v4, v1, :cond_0

    .line 593
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiConfigController;->isWepPskValid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 596
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->isValidPsk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 604
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->isValidSaePassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v0, v2, :cond_3

    .line 606
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->isWapiPskValid()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    .line 612
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_5

    .line 613
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v3

    .line 617
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    if-eqz v1, :cond_8

    :cond_7
    move v0, v3

    goto :goto_1

    .line 633
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    .line 635
    :goto_1
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_9

    if-ne v1, v4, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->l_ca_cert:I

    .line 638
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_b

    .line 639
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 640
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v0, v3

    .line 645
    :cond_a
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->l_domain:I

    .line 647
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    .line 648
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v3

    .line 654
    :cond_b
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eq v1, v5, :cond_c

    if-ne v1, v4, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l_user_cert:I

    .line 657
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 658
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v0, v3

    .line 665
    :cond_d
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 666
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 667
    invoke-static {p0}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_2

    :cond_e
    move v3, v0

    :goto_2
    return v3
.end method

.method isValidPsk(Ljava/lang/String;)Z
    .locals 2

    .line 567
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x40

    if-ne p0, v1, :cond_0

    const-string p0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 569
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x3f

    if-gt p0, p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method isValidSaePassword(Ljava/lang/String;)Z
    .locals 1

    .line 576
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x3f

    if-gt p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$afterTextChanged$1$WifiConfigController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->lambda$afterTextChanged$1()V

    return-void
.end method

.method loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 1727
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    .line 1729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1730
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1732
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_1

    .line 1735
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p4, 0x0

    .line 1740
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->getKeyStore()Landroid/security/KeyStore;

    move-result-object p5

    const/16 v1, 0x3f2

    invoke-virtual {p5, p2, v1}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "WifiConfigController"

    const-string p5, "can\'t get the certificate list from KeyStore"

    .line 1742
    invoke-static {p2, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p4, :cond_2

    .line 1744
    array-length p2, p4

    if-eqz p2, :cond_2

    .line 1745
    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    sget-object p4, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$aHwAFoUScMrqGBeuDOQscm8s6RE;->INSTANCE:Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$aHwAFoUScMrqGBeuDOQscm8s6RE;

    .line 1746
    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1753
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 1745
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1756
    :cond_2
    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 p4, 0x6

    if-eq p2, p4, :cond_3

    .line 1757
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 1762
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 1763
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x1

    .line 1765
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1769
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 1768
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p0

    .line 1770
    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1896
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->show_password:I

    if-ne v0, v1, :cond_1

    .line 1897
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    .line 1898
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 p2, 0x90

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    :goto_0
    or-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setInputType(I)V

    if-ltz p1, :cond_2

    .line 1902
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 1904
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p2

    sget v0, Lcom/android/settings/R$id;->wifi_advanced_togglebox:I

    if-ne p2, v0, :cond_2

    .line 1906
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConfigController;->hideSoftKeyboard(Landroid/os/IBinder;)V

    const/16 p2, 0x8

    .line 1907
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 1908
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->wifi_advanced_fields:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1874
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1875
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1876
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1914
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-ne p1, p2, :cond_3

    .line 1916
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecurityInPosition:[Ljava/lang/Integer;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1918
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiCoverageExtendFeatureEnabled()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz p1, :cond_0

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1924
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1921
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1922
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mShareThisWifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1927
    :goto_1
    invoke-direct {p0, p4, p4}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields(ZZ)V

    .line 1929
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-static {p1, p3}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->isSupportEnrolleeQrCodeScanner(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1930
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 1932
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidScanButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 1934
    :cond_3
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_4

    .line 1935
    invoke-direct {p0, p5, p4}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields(ZZ)V

    goto :goto_2

    .line 1936
    :cond_4
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, p3, :cond_5

    .line 1937
    invoke-direct {p0, p5, p5}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields(ZZ)V

    goto :goto_2

    .line 1938
    :cond_5
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-ne p1, p3, :cond_6

    .line 1939
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_6

    .line 1940
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showPeapFields()V

    goto :goto_2

    .line 1941
    :cond_6
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_7

    .line 1942
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_2

    .line 1943
    :cond_7
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_8

    goto :goto_2

    .line 1949
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 1951
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->showWarningMessagesIfAppropriate()V

    .line 1952
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1885
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 1886
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1887
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method showWarningMessagesIfAppropriate()V
    .locals 5

    .line 676
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->no_ca_cert_warning:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->no_user_cert_warning:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->no_domain_warning:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ssid_too_long_warning:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->ssid_too_long_warning:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_ca_cert:I

    .line 688
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 690
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 693
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->no_ca_cert_warning:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 695
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->l_domain:I

    .line 697
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    .line 698
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 702
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->no_domain_warning:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 706
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 707
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 708
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 709
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->no_user_cert_warning:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public updatePassword()V
    .locals 2

    .line 1964
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1966
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->show_password:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x90

    goto :goto_0

    :cond_0
    const/16 p0, 0x80

    :goto_0
    or-int/lit8 p0, p0, 0x1

    .line 1965
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method
