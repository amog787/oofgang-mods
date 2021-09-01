.class public abstract Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub;
.super Landroid/os/Binder;
.source "IWifiCallingService.java"

# interfaces
.implements Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oneplus.sprint.callingplus.interfaces.IWifiCallingService"

    .line 62
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;
    .locals 1

    .line 247
    sget-object v0, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    return-object v0
.end method
