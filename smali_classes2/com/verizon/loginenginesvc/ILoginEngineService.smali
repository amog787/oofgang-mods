.class public interface abstract Lcom/verizon/loginenginesvc/ILoginEngineService;
.super Ljava/lang/Object;
.source "ILoginEngineService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/loginenginesvc/ILoginEngineService$Stub;
    }
.end annotation


# virtual methods
.method public abstract request(Ljava/lang/String;Lcom/verizon/loginenginesvc/IResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
