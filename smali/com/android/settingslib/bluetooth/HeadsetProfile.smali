.class public Lcom/android/settingslib/bluetooth/HeadsetProfile;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;
    }
.end annotation


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 51
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 103
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 105
    new-instance p3, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HeadsetProfile;Lcom/android/settingslib/bluetooth/HeadsetProfile$1;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settingslib/bluetooth/HeadsetProfile;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected finalize()V
    .locals 4

    const-string v0, "HeadsetProfile"

    const-string v1, "finalize()"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 236
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 238
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Error cleaning up HID proxy"

    .line 240
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez p0, :cond_0

    .line 190
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 192
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 228
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 207
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_headset:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 160
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 130
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    move-result p0

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 179
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHeadset;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "HEADSET"

    return-object p0
.end method
