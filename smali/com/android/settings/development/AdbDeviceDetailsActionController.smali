.class public Lcom/android/settings/development/AdbDeviceDetailsActionController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AdbDeviceDetailsActionController.java"


# static fields
.field static final KEY_BUTTONS_PREF:Ljava/lang/String; = "buttons"


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mPairedDevice:Landroid/debug/PairDevice;


# direct methods
.method public constructor <init>(Landroid/debug/PairDevice;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 50
    invoke-direct {p0, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lcom/android/settings/development/AdbDeviceDetailsActionController;->mPairedDevice:Landroid/debug/PairDevice;

    .line 53
    iput-object p3, p0, Lcom/android/settings/development/AdbDeviceDetailsActionController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private forgetDevice()V
    .locals 3

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "request_type"

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/android/settings/development/AdbDeviceDetailsActionController;->mPairedDevice:Landroid/debug/PairDevice;

    const-string v2, "paired_device"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/android/settings/development/AdbDeviceDetailsActionController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object p0, p0, Lcom/android/settings/development/AdbDeviceDetailsActionController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/development/AdbDeviceDetailsActionController;->forgetDevice()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/development/AdbDeviceDetailsActionController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v0, Lcom/android/settings/R$drawable;->ic_settings_delete:I

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v0, Lcom/android/settings/R$string;->adb_device_forget:I

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    new-instance v0, Lcom/android/settings/development/-$$Lambda$AdbDeviceDetailsActionController$gVt_Slc1PEZiDx3tO8rh_4w_huc;

    invoke-direct {v0, p0}, Lcom/android/settings/development/-$$Lambda$AdbDeviceDetailsActionController$gVt_Slc1PEZiDx3tO8rh_4w_huc;-><init>(Lcom/android/settings/development/AdbDeviceDetailsActionController;)V

    .line 74
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "buttons"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayPreference$0$AdbDeviceDetailsActionController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/development/AdbDeviceDetailsActionController;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method
