.class public Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "OPWifiTetherApBandPreferenceController.java"


# static fields
.field public static final BAND_VALUES:[Ljava/lang/String;

.field private static final PREF_KEY:Ljava/lang/String; = "wifi_tether_network_ap_band_single_select"

.field private static final TAG:Ljava/lang/String; = "OPWifiTetherApBandPref"


# instance fields
.field private final mBandEntries:[I

.field private mBandIndex:I

.field private final mBandSummaries:[Ljava/lang/String;

.field private mNewBandIndex:I

.field onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

.field private preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x1

    .line 50
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    sput-object v1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->BAND_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    const-string v0, "wifi_tether_network_ap_band_single_select"

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Ljava/lang/String;)V

    .line 199
    new-instance p1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController$1;-><init>(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)V

    iput-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 64
    sget p2, Lcom/android/settings/R$array;->wifi_ap_band_config_full:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandEntries:[I

    .line 65
    sget p2, Lcom/android/settings/R$array;->wifi_ap_band_summary_full:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mNewBandIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;)Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    return-object p0
.end method

.method private getBandIndex(I)I
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandEntries:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private is5GhzBandSupported()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 70
    invoke-static {}, Lcom/android/settings/wifi/WifiUtils;->isSupportDualBand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getBand()I
    .locals 2

    .line 194
    iget v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandEntries:[I

    array-length v1, p0

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBandIndex()I
    .locals 0

    .line 190
    iget p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    return p0
.end method

.method getConfigSummary()Ljava/lang/String;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandEntries:[I

    iget v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    aget v0, v0, v1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 139
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandSummaries:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_network_ap_band_single_select"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 155
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    .line 154
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getHotspotConfiguratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/SoftApConfiguration;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 157
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Preference change"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getBandIndex(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mNewBandIndex:I

    .line 160
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/android/settings/R$string;->save_changes:I

    .line 161
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->verizon_wifi_tether_band_warning:I

    .line 162
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x104000a

    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->onWarningDialogCLickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 164
    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 165
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 170
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getBandIndex(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Band preference changed, updating band index to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OPWifiTetherApBandPref"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 83
    iget v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const/4 v2, 0x0

    const-string v3, "OPWifiTetherApBandPref"

    if-nez v0, :cond_0

    .line 85
    iput v2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    const-string v0, "Updating band index to 0 because no config"

    .line 86
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplay is5GhzBandSupported = true, band = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    const/4 v0, 0x2

    .line 91
    invoke-direct {p0, v0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getBandIndex(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getBandIndex(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    .line 95
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating band index to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    :cond_2
    new-instance v4, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v4, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 98
    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplay else, band = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getBandIndex(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5Ghz not supported, updating band index to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    iput-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    .line 108
    iget v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    iget-object v3, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandEntries:[I

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 109
    iput v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    if-eqz v0, :cond_5

    .line 114
    invoke-direct {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->is5GhzBandSupported()Z

    move-result v0

    if-nez v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 116
    iget-object p0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_choose_2G:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    iget-object v1, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandEntries:[I

    iget v2, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->mBandIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;->setExistingConfigValue(I)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->preference:Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getConfigSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
