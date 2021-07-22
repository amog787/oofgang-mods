.class public Lcom/android/settings/media/MediaOutputSliceWorker;
.super Lcom/android/settings/media/MediaDeviceUpdateWorker;
.source "MediaOutputSliceWorker.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mAppliedDeviceCountWithinRemoteGroup:I

.field private mConnectedBluetoothDeviceCount:I

.field private mRemoteDeviceCount:I

.field private mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

.field private mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

.field private mWiredDeviceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaOutputSliceWorker"

    const/4 v1, 0x3

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/media/MediaOutputSliceWorker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;Z)I
    .locals 1

    .line 67
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1

    :cond_1
    const/16 p0, 0x1f4

    return p0

    :cond_2
    const/16 p0, 0x190

    return p0

    :cond_3
    const/16 p0, 0x12c

    return p0

    :cond_4
    const/16 p0, 0x64

    return p0

    :cond_5
    const/16 p0, 0xc8

    return p0
.end method

.method private getLoggingPackageName()Ljava/lang/String;
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 124
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    :cond_0
    return-object v0

    .line 129
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is invalid."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaOutputSliceWorker"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private getLoggingSwitchOpSubResult(I)I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, p0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    return v0

    :cond_2
    return p0

    :cond_3
    return v0
.end method

.method private updateLoggingDeviceCount()V
    .locals 4

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mRemoteDeviceCount:I

    iput v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mConnectedBluetoothDeviceCount:I

    iput v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mWiredDeviceCount:I

    .line 138
    iput v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mAppliedDeviceCountWithinRemoteGroup:I

    .line 140
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    .line 141
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    iget v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mRemoteDeviceCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mRemoteDeviceCount:I

    goto :goto_0

    .line 148
    :cond_2
    iget v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mConnectedBluetoothDeviceCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mConnectedBluetoothDeviceCount:I

    goto :goto_0

    .line 145
    :cond_3
    iget v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mWiredDeviceCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mWiredDeviceCount:I

    goto :goto_0

    .line 159
    :cond_4
    sget-boolean v0, Lcom/android/settings/media/MediaOutputSliceWorker;->DBG:Z

    if-eqz v0, :cond_5

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected devices: wired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mWiredDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bluetooth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mConnectedBluetoothDeviceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " remote: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mRemoteDeviceCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaOutputSliceWorker"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method


# virtual methods
.method public connectDevice(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 55
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 57
    sget-boolean v0, Lcom/android/settings/media/MediaOutputSliceWorker;->DBG:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectDevice - source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaOutputSliceWorker"

    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->connectDevice(Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method

.method public onRequestFailed(I)V
    .locals 12

    .line 191
    sget-boolean v0, Lcom/android/settings/media/MediaOutputSliceWorker;->DBG:Z

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestFailed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaOutputSliceWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSliceWorker;->updateLoggingDeviceCount()V

    const/16 v2, 0x115

    .line 197
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    const/4 v1, 0x1

    .line 199
    invoke-direct {p0, v0, v1}, Lcom/android/settings/media/MediaOutputSliceWorker;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;Z)I

    move-result v3

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0, v0, v1}, Lcom/android/settings/media/MediaOutputSliceWorker;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;Z)I

    move-result v4

    const/4 v5, 0x0

    .line 202
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaOutputSliceWorker;->getLoggingSwitchOpSubResult(I)I

    move-result v6

    .line 203
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSliceWorker;->getLoggingPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mWiredDeviceCount:I

    iget v9, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mConnectedBluetoothDeviceCount:I

    iget v10, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mRemoteDeviceCount:I

    iget v11, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mAppliedDeviceCountWithinRemoteGroup:I

    .line 197
    invoke-static/range {v2 .. v11}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIIIILjava/lang/String;IIII)V

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->onRequestFailed(I)V

    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 12

    .line 168
    sget-boolean v0, Lcom/android/settings/media/MediaOutputSliceWorker;->DBG:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectedDeviceStateChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaOutputSliceWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSliceWorker;->updateLoggingDeviceCount()V

    const/16 v2, 0x115

    .line 174
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    const/4 v1, 0x1

    .line 176
    invoke-direct {p0, v0, v1}, Lcom/android/settings/media/MediaOutputSliceWorker;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;Z)I

    move-result v3

    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, v0, v1}, Lcom/android/settings/media/MediaOutputSliceWorker;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;Z)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 180
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSliceWorker;->getLoggingPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mWiredDeviceCount:I

    iget v9, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mConnectedBluetoothDeviceCount:I

    iget v10, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mRemoteDeviceCount:I

    iget v11, p0, Lcom/android/settings/media/MediaOutputSliceWorker;->mAppliedDeviceCountWithinRemoteGroup:I

    .line 174
    invoke-static/range {v2 .. v11}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIIIILjava/lang/String;IIII)V

    .line 186
    invoke-super {p0, p1, p2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V

    return-void
.end method
