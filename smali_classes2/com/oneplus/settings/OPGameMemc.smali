.class public Lcom/oneplus/settings/OPGameMemc;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPGameMemc.java"

# interfaces
.implements Lcom/oneplus/settings/OnChangeScreen;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field mGameScreen:Landroidx/preference/PreferenceScreen;

.field private mSupportGame:Landroidx/preference/PreferenceCategory;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private addSupportAppPreference(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPGameMemc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 134
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 135
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 138
    :try_start_0
    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 146
    new-instance v6, Landroidx/preference/Preference;

    iget-object v7, p0, Lcom/oneplus/settings/OPGameMemc;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    iget-object v4, p0, Lcom/oneplus/settings/OPGameMemc;->mSupportGame:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 154
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/OPGameMemc;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->oneplus_memc_support_no_apps:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p0, p0, Lcom/oneplus/settings/OPGameMemc;->mSupportGame:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void

    .line 127
    :cond_4
    :goto_3
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/OPGameMemc;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->oneplus_memc_support_no_apps:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p0, p0, Lcom/oneplus/settings/OPGameMemc;->mSupportGame:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private getSupportGame()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "OPGameMemc"

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    :try_start_0
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/iris/IOneplusIrisManager;

    .line 165
    invoke-interface {v1}, Lcom/oneplus/iris/IOneplusIrisManager;->getMemcAppTypeMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 167
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 168
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSupportGame name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "0"

    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportGame e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPGameMemc"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 43
    sget p0, Lcom/android/settings/R$xml;->op_game_memc:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 50
    iput-object v1, p0, Lcom/oneplus/settings/OPGameMemc;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 52
    sget v0, Lcom/android/settings/R$string;->oneplus_memc_open:I

    sget v2, Lcom/android/settings/R$string;->oneplus_memc_close:I

    invoke-virtual {p1, v0, v2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 54
    new-instance v0, Lcom/oneplus/settings/OPMEMCSwitchBarController;

    iget-object v2, p0, Lcom/oneplus/settings/OPGameMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 55
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string v5, "game"

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/OPMEMCSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/oneplus/settings/OnChangeScreen;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_iris_game_memc_status"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 62
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    const-string p1, "game_memc"

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mGameScreen:Landroidx/preference/PreferenceScreen;

    .line 64
    iget-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mGameScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mGameScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    const-string p1, "support_game"

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mSupportGame:Landroidx/preference/PreferenceCategory;

    const-string p1, "get_more_game"

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/oneplus/settings/OPGameMemc;->getSupportGame()Ljava/util/ArrayList;

    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPGameMemc;->addSupportAppPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onChangeScreen(Z)V
    .locals 2

    const-string v0, "op_iris_game_memc_status"

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mGameScreen:Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPGameMemc;->mGameScreen:Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 81
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get_more_game"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.heytap.market"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p0, p0, Lcom/oneplus/settings/OPGameMemc;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.android.vending"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p0, p0, Lcom/oneplus/settings/OPGameMemc;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_4

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 96
    iget-object p0, p0, Lcom/oneplus/settings/OPGameMemc;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
