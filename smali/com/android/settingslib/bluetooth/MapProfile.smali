.class public Lcom/android/settingslib/bluetooth/MapProfile;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;
    }
.end annotation


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 103
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapProfile;Lcom/android/settingslib/bluetooth/MapProfile$1;)V

    const/16 p0, 0x9

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/MapProfile;)Landroid/bluetooth/BluetoothMap;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/MapProfile;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settingslib/bluetooth/MapProfile;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected finalize()V
    .locals 4

    const-string v0, "MapProfile"

    const-string v1, "finalize()"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-eqz v1, :cond_0

    .line 204
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 206
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Error cleaning up MAP proxy"

    .line 208
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 196
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 175
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_map:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProfileReady(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mIsProfileReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 147
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothMap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMap;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "MAP"

    return-object p0
.end method
