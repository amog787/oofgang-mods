.class public interface abstract Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;
.super Ljava/lang/Object;
.source "MhsAuthorizedClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallback"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Z)V
.end method

.method public abstract onTimeout()V
.end method
