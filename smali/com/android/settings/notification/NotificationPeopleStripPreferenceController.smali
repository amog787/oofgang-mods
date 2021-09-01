.class public Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NotificationPeopleStripPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field static final OFF:I = 0x0

.field static final ON:I = 0x1


# instance fields
.field private final mPeopleStripUri:Landroid/net/Uri;

.field private mPreference:Landroidx/preference/Preference;

.field private mUnregisterOnPropertiesChangedListener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "people_strip"

    .line 50
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->mPeopleStripUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic lambda$onResume$0(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "notification_people_strip"

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
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

.method public isChecked()Z
    .locals 2

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "people_strip"

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->mUnregisterOnPropertiesChangedListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->mUnregisterOnPropertiesChangedListener:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController$1;-><init>(Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;Landroid/os/Handler;)V

    .line 77
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 78
    new-instance v2, Lcom/android/settings/notification/-$$Lambda$NotificationPeopleStripPreferenceController$g-55QSFR_o8TvqeEBFKoOHZl0v0;

    invoke-direct {v2, v1, v0}, Lcom/android/settings/notification/-$$Lambda$NotificationPeopleStripPreferenceController$g-55QSFR_o8TvqeEBFKoOHZl0v0;-><init>(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->mUnregisterOnPropertiesChangedListener:Ljava/lang/Runnable;

    .line 80
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->mPeopleStripUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "people_strip"

    .line 112
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
