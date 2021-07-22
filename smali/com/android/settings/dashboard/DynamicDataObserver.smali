.class public abstract Lcom/android/settings/dashboard/DynamicDataObserver;
.super Landroid/database/ContentObserver;
.source "DynamicDataObserver.java"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public abstract getUri()Landroid/net/Uri;
.end method

.method public onChange(Z)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DynamicDataObserver;->onDataChanged()V

    return-void
.end method

.method public abstract onDataChanged()V
.end method
