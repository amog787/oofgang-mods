.class public interface abstract Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;
.super Ljava/lang/Object;
.source "WifiTetherSoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiTetherSoftApCallback"
.end annotation


# virtual methods
.method public abstract onConnectedClientsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStateChanged(II)V
.end method
