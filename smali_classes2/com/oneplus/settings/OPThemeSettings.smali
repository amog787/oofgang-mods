.class public Lcom/oneplus/settings/OPThemeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPThemeSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mOPThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/oneplus/settings/OPThemeSettings$1;

    sget v1, Lcom/android/settings/R$xml;->op_theme_settings:I

    invoke-direct {v0, v1}, Lcom/oneplus/settings/OPThemeSettings$1;-><init>(I)V

    sput-object v0, Lcom/oneplus/settings/OPThemeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPThemeSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 45
    sget p0, Lcom/android/settings/R$xml;->op_theme_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "oneplus_theme_custom_key"

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPThemeIconPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPThemeSettings;->mOPThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 39
    iget-object p0, p0, Lcom/oneplus/settings/OPThemeSettings;->mOPThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPThemeIconPreference;->refreshUI()V

    :cond_0
    return-void
.end method
