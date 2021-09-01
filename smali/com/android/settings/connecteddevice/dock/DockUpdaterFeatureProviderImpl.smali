.class public Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DockUpdaterFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/overlay/DockUpdaterFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectedDockUpdater(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)Lcom/android/settings/connecteddevice/dock/DockUpdater;
    .locals 0

    .line 16
    new-instance p1, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl$1;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl$1;-><init>(Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;)V

    return-object p1
.end method

.method public getSavedDockUpdater(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)Lcom/android/settings/connecteddevice/dock/DockUpdater;
    .locals 0

    .line 24
    new-instance p1, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl$2;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl$2;-><init>(Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;)V

    return-object p1
.end method
