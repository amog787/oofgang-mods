.class public Lcom/oneplus/settings/carcharger/OPCarChargerSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPCarChargerSettings.java"


# static fields
.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"


# instance fields
.field mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;

    const-string v1, "car_charger_auto_turn_on"

    invoke-direct {v0, p1, v1}, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;

    const-string v1, "car_charger_auto_turn_on_dnd"

    invoke-direct {v0, p1, v1}, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerAutoOpenSpecifiedAppPreferenceController;

    invoke-direct {v0, p1}, Lcom/oneplus/settings/carcharger/OPCarChargerAutoOpenSpecifiedAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPCarChargerSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 55
    sget p0, Lcom/android/settings/R$xml;->op_car_charger_settings:I

    return p0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 1

    const-string v0, "footer_preference"

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/widget/OPFooterPreference;

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    .line 31
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->updateFooterPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerSettings;->initPreferencesFromPreferenceScreen()V

    return-void
.end method

.method updateFooterPreference(Landroidx/preference/Preference;)V
    .locals 1

    .line 36
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget v0, Lcom/android/settings/R$string;->oneplus_auto_turn_on_car_charger_info_o2:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 39
    :cond_0
    sget v0, Lcom/android/settings/R$string;->oneplus_auto_turn_on_car_charger_info_h2:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
