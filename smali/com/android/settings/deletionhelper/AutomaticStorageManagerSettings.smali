.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AutomaticStorageManagerSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mDaysToRetain:Landroidx/preference/DropDownPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchController:Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings$1;

    invoke-direct {v0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
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

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerDescriptionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerDescriptionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static daysValueToIndex(I[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 149
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 150
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private initializeDaysToRetainPreference()V
    .locals 3

    const-string v0, "days"

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroidx/preference/DropDownPreference;

    .line 70
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getDefaultStorageManagerDaysToRetain(Landroid/content/res/Resources;)I

    move-result v1

    const-string v2, "automatic_storage_manager_days_to_retain"

    .line 74
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->automatic_storage_management_days_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object p0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroidx/preference/DropDownPreference;

    invoke-static {v0, v1}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->daysValueToIndex(I[Ljava/lang/String;)I

    move-result v0

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private initializeSwitchBar()V
    .locals 7

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 85
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 86
    sget v1, Lcom/android/settings/R$string;->automatic_storage_manager_master_switch_title:I

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 89
    new-instance v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroidx/preference/DropDownPreference;

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/preference/Preference;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchController:Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 116
    invoke-static {p1}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 145
    sget p0, Lcom/android/settings/R$string;->help_uri_storage:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1ca

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 111
    sget p0, Lcom/android/settings/R$xml;->automatic_storage_management_settings:I

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->initializeDaysToRetainPreference()V

    .line 63
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->initializeSwitchBar()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 123
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 124
    iget-object p0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mSwitchController:Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;

    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->tearDown()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 129
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "days"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p2, Ljava/lang/String;

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "automatic_storage_manager_days_to_retain"

    .line 130
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mDaysToRetain:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isStorageManagerEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
