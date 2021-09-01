.class public Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GraphicsDriverEnableForAllAppsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final GAME_DRIVER_ALL_APPS:I = 0x1

.field public static final GAME_DRIVER_DEFAULT:I = 0x0

.field public static final GAME_DRIVER_OFF:I = 0x3

.field public static final GAME_DRIVER_PRERELEASE_ALL_APPS:I = 0x2

.field public static final PROPERTY_GFX_DRIVER_GAME:Ljava/lang/String; = "ro.gfx.driver.0"

.field public static final PROPERTY_GFX_DRIVER_PRERELEASE:Ljava/lang/String; = "ro.gfx.driver.1"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field mEntryList:[Ljava/lang/CharSequence;

.field mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

.field private mPreference:Landroidx/preference/ListPreference;

.field private final mPreferenceDefault:Ljava/lang/String;

.field private final mPreferenceGameDriver:Ljava/lang/String;

.field private final mPreferencePrereleaseDriver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 81
    sget p2, Lcom/android/settings/R$string;->graphics_driver_app_preference_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    .line 82
    sget p2, Lcom/android/settings/R$string;->graphics_driver_app_preference_game_driver:I

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    .line 84
    sget p2, Lcom/android/settings/R$string;->graphics_driver_app_preference_prerelease_driver:I

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->constructEntryList(Landroid/content/Context;Z)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    .line 87
    new-instance p1, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    new-instance p2, Landroid/os/Handler;

    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p2, p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;)V

    iput-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    return-void
.end method

.method private static chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2

    .line 216
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 218
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    return-object p0

    .line 221
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 222
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static constructEntryList(Landroid/content/Context;Z)[Ljava/lang/CharSequence;
    .locals 5

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ro.gfx.driver.1"

    .line 174
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.gfx.driver.0"

    .line 175
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    sget v4, Lcom/android/settings/R$string;->graphics_driver_app_preference_default:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    invoke-static {p0, v1}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->hasDriverPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    sget v1, Lcom/android/settings/R$string;->graphics_driver_app_preference_prerelease_driver:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    invoke-static {p0, v2}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->hasDriverPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 187
    sget p0, Lcom/android/settings/R$string;->graphics_driver_app_preference_game_driver:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 190
    sget p0, Lcom/android/settings/R$string;->graphics_driver_app_preference_system:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/CharSequence;

    .line 193
    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static hasDriverPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    const/high16 v0, 0x100000

    const/4 v1, 0x0

    .line 200
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    return v1

    .line 208
    :cond_0
    invoke-static {p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    .line 105
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "game_driver_all_apps"

    .line 94
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onGraphicsDriverContentChanged()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 140
    check-cast p1, Landroidx/preference/ListPreference;

    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 142
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "game_driver_all_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    iget-object v3, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_0

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    .line 152
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eq v2, v0, :cond_2

    .line 156
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return v4
.end method

.method public onStart()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 122
    check-cast p1, Landroidx/preference/ListPreference;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "game_driver_all_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableForAllAppsPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
