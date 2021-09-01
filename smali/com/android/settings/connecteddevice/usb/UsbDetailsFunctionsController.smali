.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsFunctionsController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;
    }
.end annotation


# static fields
.field static final FUNCTIONS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallBack:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

.field private mClient:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

.field mPreviousFunction:J

.field private mProfilesContainer:Landroidx/preference/PreferenceCategory;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mUsbPref:Lcom/android/settings/widget/RadioButtonPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x4

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_file_transfers:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_tethering:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_MIDI:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_photo_transfers:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x80

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->system_update:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->usb_use_charging_only:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 296
    new-instance p2, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$3;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mCallBack:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    .line 109
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 112
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 113
    new-instance p1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    .line 114
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/app/ProgressDialog;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;J)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->startVzwTethering(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->dismissDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->resetSwitch()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mobileHotspotDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_0

    .line 350
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getProfilePreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 132
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 133
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-object v0
.end method

.method private mobileHotspotDialog()V
    .locals 3

    .line 356
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->hotspot_tip_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->mobile_hotspot_authoration_error:I

    .line 358
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 359
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->mhs_app:I

    .line 360
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$4;

    invoke-direct {v2, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$4;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 383
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private resetSwitch()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    iget-wide v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    .line 328
    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 330
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mUsbPref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private startVzwTethering(J)V
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 339
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->dialog_mhs_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 343
    new-instance v0, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mCallBack:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;-><init>(Landroid/content/Context;Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;Ljava/lang/Integer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mClient:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

    .line 344
    invoke-virtual {v0, p1, p2}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->sendRequest(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "usb_details_functions"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 277
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 8

    .line 169
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    .line 170
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    .line 171
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-nez v4, :cond_8

    .line 172
    iput-wide v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    .line 175
    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    .line 177
    invoke-static {v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 180
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const-wide/16 v5, 0x20

    cmp-long v5, v0, v5

    if-nez v5, :cond_7

    .line 185
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 186
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mUsbPref:Lcom/android/settings/widget/RadioButtonPreference;

    .line 187
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    const-wide/16 v5, 0x61a8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    const-string v1, "tether_settings_prefs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checkbox_status"

    const-string v7, "unchecked"

    .line 189
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "checked"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 193
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 198
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isVerizon()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    .line 199
    invoke-direct {p0, v5, v6}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->startVzwTethering(J)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-virtual {p1, v4, v4, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_0

    .line 205
    :cond_3
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 207
    sget v4, Lcom/android/settings/R$layout;->dialog_checkbox:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 208
    sget v4, Lcom/android/settings/R$id;->dialogCheckbox:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 209
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 211
    sget v1, Lcom/android/settings/R$string;->dialog_usb_tether_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 212
    sget v1, Lcom/android/settings/R$string;->dialog_usb_tether_cancel:I

    new-instance v3, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;

    invoke-direct {v3, p0, v4, v2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;Landroid/widget/CheckBox;Lcom/android/settings/widget/RadioButtonPreference;Lcom/android/settings/widget/RadioButtonPreference;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 228
    sget v1, Lcom/android/settings/R$string;->dialog_usb_tether_ok:I

    new-instance v3, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;

    invoke-direct {v3, p0, v4, v2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$2;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;Landroid/widget/CheckBox;Lcom/android/settings/widget/RadioButtonPreference;Lcom/android/settings/widget/RadioButtonPreference;)V

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 252
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 256
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 257
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 262
    :cond_5
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isVerizon()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_6

    .line 263
    invoke-direct {p0, v5, v6}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->startVzwTethering(J)V

    goto :goto_0

    .line 265
    :cond_6
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mOnStartTetheringCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$OnStartTetheringCallback;

    invoke-virtual {p1, v4, v4, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_0

    .line 270
    :cond_7
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    :cond_8
    :goto_0
    return-void
.end method

.method protected refresh(ZJII)V
    .locals 4

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 145
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 148
    :goto_0
    sget-object p1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 149
    sget-object p5, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->FUNCTIONS_MAP:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 150
    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->getProfilePreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object p5

    .line 152
    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result v3

    if-eqz v3, :cond_3

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    move v1, p4

    goto :goto_2

    :cond_2
    move v1, v0

    .line 153
    :goto_2
    invoke-virtual {p5, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, p5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_3
    const-string v1, "sys.debug.watchdog"

    .line 158
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.boot.qe"

    .line 159
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "true"

    .line 160
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-ne p4, v2, :cond_1

    .line 161
    :cond_4
    invoke-virtual {p5, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    return-void
.end method
