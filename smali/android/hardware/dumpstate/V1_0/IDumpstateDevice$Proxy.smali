.class public final Landroid/hardware/dumpstate/V1_0/IDumpstateDevice$Proxy;
.super Ljava/lang/Object;
.source "IDumpstateDevice.java"

# interfaces
.implements Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/dumpstate/V1_0/IDumpstateDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 212
    iget-object p0, p0, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 227
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 232
    invoke-virtual {p0}, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 258
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 260
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 262
    :try_start_0
    iget-object p0, p0, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 263
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 264
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 266
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 270
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 299
    :try_start_0
    iget-object p0, p0, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 300
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 301
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 303
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 307
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 218
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/dumpstate/V1_0/IDumpstateDevice$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Proxy"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "[class or subclass of android.hardware.dumpstate@1.0::IDumpstateDevice]@Proxy"

    return-object p0
.end method
