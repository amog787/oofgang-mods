.class public abstract Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;
.super Landroid/os/Binder;
.source "IUimRemoteSimlockService.java"

# interfaces
.implements Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.qualcomm.qti.remoteSimlock.IUimRemoteSimlockService"

    .line 136
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    instance-of v1, v0, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    if-eqz v1, :cond_1

    .line 138
    check-cast v0, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    return-object v0

    .line 140
    :cond_1
    new-instance v0, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
    .locals 1

    .line 498
    sget-object v0, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub$Proxy;->sDefaultImpl:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    return-object v0
.end method
