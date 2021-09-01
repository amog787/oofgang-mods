.class public interface abstract Lcom/android/settings/applications/UninstallAppsBackend$PackageForUninstallCallback;
.super Ljava/lang/Object;
.source "UninstallAppsBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/UninstallAppsBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageForUninstallCallback"
.end annotation


# virtual methods
.method public abstract onPackageAddedForUninstall(Ljava/lang/String;)V
.end method

.method public abstract onPackageRemovedForUninstall(Ljava/lang/String;)V
.end method
