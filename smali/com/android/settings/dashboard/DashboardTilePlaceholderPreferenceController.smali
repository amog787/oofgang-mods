.class Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DashboardTilePlaceholderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const p1, 0x7fffffff

    .line 38
    iput p1, p0, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->mOrder:I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->mOrder:I

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getOrder()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->mOrder:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "dashboard_tile_placeholder"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
