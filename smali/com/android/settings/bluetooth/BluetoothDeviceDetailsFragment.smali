.class public Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BluetoothDeviceDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$ServiceHanlder;,
        Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;
    }
.end annotation


# static fields
.field static EDIT_DEVICE_NAME_ITEM_ID:I = 0x1

.field static sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;


# instance fields
.field private mBreenoConnection:Landroid/content/ServiceConnection;

.field private mBreenoMessenger:Landroid/os/Messenger;

.field mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mConnecttion:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

.field mDeviceAddress:Ljava/lang/String;

.field private mDoubleClickLeft:Landroidx/preference/ListPreference;

.field private mDoubleClickRight:Landroidx/preference/ListPreference;

.field private mFindEarPreference:Landroidx/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mIntroductionPreference:Landroidx/preference/Preference;

.field private mLeftFunc:I

.field private mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRightFunc:I

.field private mServiceHandler:Landroid/os/Handler;

.field private mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_bluetooth"

    .line 121
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 408
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoConnection:Landroid/content/ServiceConnection;

    .line 428
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$2;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 494
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$3;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mConnecttion:Landroid/content/ServiceConnection;

    .line 532
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    .line 573
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$5;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/os/Messenger;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mStub:Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->updateOnePlusPodsPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mIntroductionPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mController:Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/Preference;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mFindEarPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/ServiceConnection;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mConnecttion:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getStringFromKeyFunction(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;III)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getBatteryString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mLeftFunc:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mLeftFunc:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/Object;)I
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getBatteryLevel(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)I
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getKeyFunctionFromString(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mRightFunc:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mRightFunc:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->startBreenoService()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;Ljava/lang/String;)I
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getValueFunctionFromString(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroidx/preference/ListPreference;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    return-object p0
.end method

.method private getBatteryLevel(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 740
    :cond_0
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 743
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x3e8

    if-le p0, p1, :cond_2

    .line 746
    rem-int/lit16 p1, p0, 0x3e8

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p0, 0x1

    mul-int/lit8 p1, p1, 0xa

    .line 750
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBatteryLevel value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " level = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BTDeviceDetailsFrg"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private getBatteryString(III)Ljava/lang/String;
    .locals 8

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    .line 708
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->earphone_support_battery_info_left:I

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-lez p2, :cond_2

    if-lez p1, :cond_1

    .line 712
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->earphone_support_battery_dot:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->earphone_support_battery_info_right:I

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-lez p3, :cond_5

    if-gtz p1, :cond_3

    if-lez p2, :cond_4

    .line 718
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->earphone_support_battery_dot:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->earphone_support_battery_info_box:I

    new-array p2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getKeyFunctionFromString(Ljava/lang/String;)I
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->earphone_function_control_play_pause:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->earphone_function_listening_breeno:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->earphone_function_control_last_song:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 337
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->earphone_function_control_next_song:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private getStringFromKeyFunction(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->earphone_function_control_play_pause:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 359
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->earphone_function_listening_breeno:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 361
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->earphone_function_control_last_song:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 363
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->earphone_function_control_next_song:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private getValueFunctionFromString(Ljava/lang/String;)I
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->earphone_function_control_play_pause:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->earphone_function_listening_breeno:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->earphone_function_control_last_song:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 350
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->earphone_function_control_next_song:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private startBreenoService()V
    .locals 3

    .line 369
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "BTDeviceDetailsFrg"

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.heytap.speechassist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "startBreenoService"

    .line 375
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "heytap.speech.intent.action.TEXT_DIRECTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.heytap.speechassist.agent.MessengerService"

    .line 377
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "startBreenoService return"

    .line 372
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateOnePlusPodsPreference(Ljava/lang/String;)V
    .locals 9

    const-string v0, "device_address"

    const-string v1, "onepluspods_auto_ota_version"

    const-string v2, "BTDeviceDetailsFrg"

    .line 649
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 651
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 652
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 653
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 654
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-nez v3, :cond_0

    .line 655
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mFindEarPreference:Landroidx/preference/Preference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 657
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 658
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-interface {v3, p1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getKeyFunction(Ljava/lang/String;)I

    move-result v3

    .line 659
    div-int/lit8 v5, v3, 0xa

    iput v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mLeftFunc:I

    mul-int/lit8 v6, v5, 0xa

    sub-int/2addr v3, v6

    .line 660
    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mRightFunc:I

    .line 661
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getStringFromKeyFunction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mLeftFunc:I

    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getStringFromKeyFunction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 663
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mRightFunc:I

    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getStringFromKeyFunction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mRightFunc:I

    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getStringFromKeyFunction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 665
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 666
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 667
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, -0x1

    invoke-static {v3, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x0

    if-ne v3, v5, :cond_2

    .line 669
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v6

    .line 674
    :goto_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 676
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 677
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->earphone_support_current_version:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    if-ne v3, v4, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    invoke-virtual {v1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 679
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    if-ne v3, v4, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 681
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "onepluspods_ota_data_download"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 682
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 683
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    if-ne v1, v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 684
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->getBattaryInfo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    .line 686
    rem-int/lit16 v1, v0, 0x3e8

    .line 687
    div-int/lit16 v0, v0, 0x3e8

    .line 688
    rem-int/lit16 v3, v0, 0x3e8

    .line 689
    div-int/lit16 v0, v0, 0x3e8

    .line 690
    rem-int/lit16 v4, v0, 0x3e8

    .line 691
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateView detail battery = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " left = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " right="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " box = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getBatteryString(III)Ljava/lang/String;

    move-result-object v0

    .line 693
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mController:Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->updateSumary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 696
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateOnePlusPodsPreference e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 699
    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result p1

    if-nez p1, :cond_7

    .line 700
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mFindEarPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 227
    new-instance v8, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mController:Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    .line 229
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v8, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    move-object v3, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method finishFragmentIfNecessary()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 134
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;->getDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 138
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 139
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 126
    sget-object p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    if-eqz p0, :cond_0

    .line 127
    invoke-interface {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;->getManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BTDeviceDetailsFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 200
    sget p0, Lcom/android/settings/R$xml;->bluetooth_device_details_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    const-string p1, "BTDeviceDetailsFrg"

    const-string v0, "onAttach() CachedDevice is null!"

    .line 158
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 162
    :cond_0
    const-class v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 164
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "settings_ui"

    const-string v2, "bt_slice_settings_enabled"

    .line 166
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    const-class v1, Lcom/android/settings/slices/BlockingSlicePrefController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/BlockingSlicePrefController;

    if-eqz v0, :cond_1

    .line 170
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/bluetooth/BluetoothFeatureProvider;->getBluetoothDeviceSettingsUri(Landroid/bluetooth/BluetoothDevice;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 169
    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/settings/slices/SlicePreferenceController;->setSliceUri(Landroid/net/Uri;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 271
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "device_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_0

    .line 277
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.twspods"

    const-string v1, "com.oos.onepluspods.service.MultiDeviceCoreService"

    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    const-string v1, "address"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mConnecttion:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 282
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    .line 284
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 285
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate binderservice address = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BTDeviceDetailsFrg"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "function_click_left_key_preference"

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    const-string p1, "function_click_right_key_preference"

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    const-string p1, "ota_device_support_enable_preference"

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    const-string p1, "find_my_bluetooth_earphone_preference"

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mFindEarPreference:Landroidx/preference/Preference;

    const-string p1, "ota_device_wifi_data_enable_preference"

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    const-string p1, "function_introduction_earphone_preference"

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mIntroductionPreference:Landroidx/preference/Preference;

    .line 295
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickLeft:Landroidx/preference/ListPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 296
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDoubleClickRight:Landroidx/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 297
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 298
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mFindEarPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 299
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mOtaWifiDataSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 300
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mIntroductionPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 301
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mHandler:Landroid/os/Handler;

    .line 302
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$ServiceHanlder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$ServiceHanlder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mServiceHandler:Landroid/os/Handler;

    .line 303
    new-instance p1, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mServiceHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 205
    sget v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->EDIT_DEVICE_NAME_ITEM_ID:I

    sget v1, Lcom/android/settings/R$string;->bluetooth_rename_button:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10804df

    .line 206
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 207
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 208
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    const-string v0, "BTDeviceDetailsFrg"

    const/4 v1, 0x0

    .line 310
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mPodsService:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    invoke-interface {v2, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    .line 311
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mConnecttion:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindService e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterReceiver e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_1
    :try_start_2
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoMessenger:Landroid/os/Messenger;

    .line 322
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mServiceHandler:Landroid/os/Handler;

    .line 323
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mBreenoConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService mBreenoConnection e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_2
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->EDIT_DEVICE_NAME_ITEM_ID:I

    if-ne v0, v1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {p1}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->newInstance(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;

    move-result-object p1

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "RemoteDeviceName"

    .line 214
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 218
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceTreeClick  key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hanksettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "find_my_bluetooth_earphone_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "address"

    const-string v2, "device"

    const-string v3, "com.oneplus.twspods"

    const/high16 v4, 0x10000000

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "com.oos.onepluspods.map.OPAMapLocationActivity"

    .line 247
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 249
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 250
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    const-string v2, "connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v5, "function_introduction_earphone_preference"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "com.oos.onepluspods.settings.functionlist.introduction.EarphoneUsageGuideActivity"

    .line 257
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 259
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 261
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "RBS8PPYT2W"

    const-string v1, "function"

    const-string v2, "functiondescription"

    const-string v3, "1"

    .line 263
    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 176
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->finishFragmentIfNecessary()V

    return-void
.end method
