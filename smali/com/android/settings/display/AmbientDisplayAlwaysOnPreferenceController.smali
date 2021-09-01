.class public Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AmbientDisplayAlwaysOnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;
    }
.end annotation


# static fields
.field private static final MY_USER:I

.field private static final PROP_AWARE_AVAILABLE:Ljava/lang/String; = "ro.vendor.aware_available"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

.field private mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->ON:I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->OFF:I

    return-void
.end method

.method private getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method public static isAvailable(Landroid/hardware/display/AmbientDisplayConfiguration;)Z
    .locals 1

    .line 92
    sget v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->isAvailable(Landroid/hardware/display/AmbientDisplayConfiguration;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "ro.vendor.aware_available"

    .line 49
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
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
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->getConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    sget v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->MY_USER:I

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

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

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ambient_display_always_on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setCallback(Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

    return-object p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    .line 71
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    iget-object p0, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mCallback:Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p0}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;->onPreferenceChanged()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
