.class Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiCallingService.java"

# interfaces
.implements Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public isWifiCallingSwitchChecked()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oneplus.sprint.callingplus.interfaces.IWifiCallingService"

    .line 168
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 170
    invoke-static {}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;->getDefaultImpl()Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 171
    invoke-static {}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;->getDefaultImpl()Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->isWifiCallingSwitchChecked()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 173
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 177
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    throw p0
.end method

.method public isWifiCallingSwitchEnable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oneplus.sprint.callingplus.interfaces.IWifiCallingService"

    .line 191
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    iget-object p0, p0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 193
    invoke-static {}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;->getDefaultImpl()Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 194
    invoke-static {}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;->getDefaultImpl()Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->isWifiCallingSwitchEnable()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 196
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 200
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw p0
.end method

.method public isWifiCallingSwitchNormal()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oneplus.sprint.callingplus.interfaces.IWifiCallingService"

    .line 145
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 147
    invoke-static {}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;->getDefaultImpl()Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 148
    invoke-static {}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;->getDefaultImpl()Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->isWifiCallingSwitchNormal()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 150
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    move v2, v3

    .line 154
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw p0
.end method

.method public setWifiCallingSwitchState(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oneplus.sprint.callingplus.interfaces.IWifiCallingService"

    .line 213
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 214
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object p0, p0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 216
    invoke-static {}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;->getDefaultImpl()Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 217
    invoke-static {}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;->getDefaultImpl()Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->setWifiCallingSwitchState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 220
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    throw p0
.end method
