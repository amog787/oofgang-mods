.class public Lcom/android/settings/location/AppSettingsInjector;
.super Lcom/android/settingslib/location/SettingsInjector;
.source "AppSettingsInjector.java"


# instance fields
.field private final mMetricsCategory:I

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    .line 52
    iput p2, p0, Lcom/android/settings/location/AppSettingsInjector;->mMetricsCategory:I

    .line 53
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/AppSettingsInjector;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method protected createPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Landroidx/preference/Preference;
    .locals 0

    .line 79
    iget-object p0, p2, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 80
    invoke-static {p1, p2}, Lcom/android/settings/location/DimmableIZatIconPreference;->getAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settingslib/widget/apppreference/AppPreference;

    move-result-object p0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p1, p2}, Lcom/android/settings/location/DimmableIZatIconPreference;->getRestrictedAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settings/widget/RestrictedAppPreference;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected logPreferenceClick(Landroid/content/Intent;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/location/AppSettingsInjector;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget p0, p0, Lcom/android/settings/location/AppSettingsInjector;->mMetricsCategory:I

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(Landroid/content/Intent;I)Z

    return-void
.end method

.method protected parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settingslib/location/InjectedSetting;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/location/SettingsInjector;->parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settingslib/location/InjectedSetting;

    move-result-object p0

    .line 66
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method
