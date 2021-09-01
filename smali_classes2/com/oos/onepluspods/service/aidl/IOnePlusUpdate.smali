.class public interface abstract Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;
.super Ljava/lang/Object;
.source "IOnePlusUpdate.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;
    }
.end annotation


# virtual methods
.method public abstract updateView(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
