.class public interface abstract Lcom/oneplus/security/firewall/NetworkRestrictManager$IAppsNetworkRestrictTaskCallBack;
.super Ljava/lang/Object;
.source "NetworkRestrictManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/firewall/NetworkRestrictManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAppsNetworkRestrictTaskCallBack"
.end annotation


# virtual methods
.method public abstract onTaskError(ILjava/lang/String;)V
.end method

.method public abstract onTaskFinished(ILjava/lang/Object;)V
.end method

.method public abstract onTaskStart(IZ)V
.end method
