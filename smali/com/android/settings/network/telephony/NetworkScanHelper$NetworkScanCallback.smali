.class public interface abstract Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;
.super Ljava/lang/Object;
.source "NetworkScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkScanHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkScanCallback"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation
.end method
