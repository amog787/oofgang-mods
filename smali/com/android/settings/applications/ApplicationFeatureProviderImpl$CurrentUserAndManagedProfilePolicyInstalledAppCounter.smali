.class Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentUserAndManagedProfilePolicyInstalledAppCounter"
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 214
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    .line 215
    iput-object p3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;->onNumberOfAppsResult(I)V

    return-void
.end method
