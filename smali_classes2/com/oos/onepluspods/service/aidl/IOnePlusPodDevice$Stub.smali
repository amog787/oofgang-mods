.class public abstract Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;
.super Landroid/os/Binder;
.source "IOnePlusPodDevice.java"

# interfaces
.implements Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oos.onepluspods.service.aidl.IOnePlusPodDevice"

    .line 59
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    instance-of v1, v0, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    if-eqz v1, :cond_1

    .line 61
    check-cast v0, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object v0

    .line 63
    :cond_1
    new-instance v0, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 1

    .line 312
    sget-object v0, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub$Proxy;->sDefaultImpl:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object v0
.end method
