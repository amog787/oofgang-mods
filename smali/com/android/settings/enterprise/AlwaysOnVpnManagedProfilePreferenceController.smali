.class public Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AlwaysOnVpnManagedProfilePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "always_on_vpn_managed_profile"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isAlwaysOnVpnSetInManagedProfile()Z

    move-result p0

    return p0
.end method
