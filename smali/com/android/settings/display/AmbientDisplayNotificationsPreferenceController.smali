.class public Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AmbientDisplayNotificationsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final KEY_AMBIENT_DISPLAY_NOTIFICATIONS:Ljava/lang/String; = "ambient_display_notification"

.field private static final MY_USER:I


# instance fields
.field private final OFF:I

.field private final ON:I

.field private mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 35
    iput p2, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->ON:I

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->OFF:I

    .line 47
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 63
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ambient_display_notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x1ef

    new-array v2, v0, [Landroid/util/Pair;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_0
    return v0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    sget v0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ambient_display_notification"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 76
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "doze_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
