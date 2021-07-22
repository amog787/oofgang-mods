.class public Lcom/oneplus/settings/better/OPHapticFeedback;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPHapticFeedback.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHapticFeedbackAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHapticFeedbackInstalledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHapticFeedbackSupportCategory:Landroidx/preference/PreferenceCategory;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSwitchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackInstalledApps:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackAppList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPHapticFeedback;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getHapticFeedbackState(Landroid/content/Context;)Z
    .locals 3

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_game_mode_vibrate_feedback"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private loadConfig()V
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5020014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    .line 63
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 65
    aget-object v3, v0, v2

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 66
    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 67
    iget-object v4, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackAppList:Ljava/util/List;

    aget-object v3, v3, v1

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private refreshUI()V
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPHapticFeedback;->getHapticFeedbackState(Landroid/content/Context;)Z

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackInstalledApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackSupportCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "op_haptic_feedback_no_app"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackInstalledApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 105
    new-instance v3, Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 106
    sget v4, Lcom/android/settings/R$layout;->op_preference_material:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v4, 0x1

    .line 107
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 108
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 109
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 110
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackSupportCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static sendDefaultAppTracker()V
    .locals 2

    .line 138
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPHapticFeedback;->getHapticFeedbackState(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "game_mode_haptic"

    .line 139
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static setHapticFeedbackState(Landroid/content/Context;Z)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "op_game_mode_vibrate_feedback"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p0, "game_mode_haptic"

    .line 134
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPHapticFeedback;->loadConfig()V

    .line 49
    iget-object p1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 52
    iget-object v1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackAppList:Ljava/util/List;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackInstalledApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 78
    sget v0, Lcom/android/settings/R$xml;->op_haptic_feedback:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "op_haptic_feedback_support_category"

    .line 80
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mHapticFeedbackSupportCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "op_haptic_feedback_switch"

    .line 81
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPHapticFeedback;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 83
    new-instance v1, Lcom/oneplus/settings/better/OPHapticFeedback$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPHapticFeedback$1;-><init>(Lcom/oneplus/settings/better/OPHapticFeedback;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPHapticFeedback;->refreshUI()V

    .line 93
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
