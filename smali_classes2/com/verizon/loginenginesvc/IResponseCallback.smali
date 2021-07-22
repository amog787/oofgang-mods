.class public interface abstract Lcom/verizon/loginenginesvc/IResponseCallback;
.super Ljava/lang/Object;
.source "IResponseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/loginenginesvc/IResponseCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResponse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
