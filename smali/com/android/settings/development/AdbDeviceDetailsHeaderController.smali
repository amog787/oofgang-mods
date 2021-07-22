.class public Lcom/android/settings/development/AdbDeviceDetailsHeaderController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AdbDeviceDetailsHeaderController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field static final KEY_HEADER:Ljava/lang/String; = "adb_device_header"


# instance fields
.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mPairedDevice:Landroid/debug/PairDevice;


# direct methods
.method public constructor <init>(Landroid/debug/PairDevice;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 52
    invoke-direct {p0, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mPairedDevice:Landroid/debug/PairDevice;

    .line 55
    iput-object p3, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private setupEntityHeader(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    const-string v0, "adb_device_header"

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 77
    iget-object v0, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 79
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    sget v2, Lcom/android/settings/R$id;->entity_header:I

    .line 80
    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 78
    invoke-static {v0, v1, p1}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x1080336

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v0, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mPairedDevice:Landroid/debug/PairDevice;

    .line 84
    invoke-virtual {v0}, Landroid/debug/PairDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/development/AdbDeviceDetailsHeaderController;->setupEntityHeader(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "adb_device_header"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
