.class public Lcom/oneplus/settings/aboutphone/OPUptimePreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
.source "OPUptimePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
