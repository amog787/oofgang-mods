.class public interface abstract Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;
.super Ljava/lang/Object;
.source "IUimRemoteSimlockServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract uimRemoteSimlockGenerateHMACResponse(II[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uimRemoteSimlockGetSharedKeyResponse(II[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uimRemoteSimlockGetSimlockStatusResponse(IIIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uimRemoteSimlockGetVersionResponse(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uimRemoteSimlockProcessSimlockDataResponse(II[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
