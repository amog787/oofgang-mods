.class public Lcom/android/settings/ResetSystemSettings;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetSystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResetSystemSettingsTask:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ResetSystemSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 139
    new-instance v0, Lcom/android/settings/ResetSystemSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetSystemSettings$1;-><init>(Lcom/android/settings/ResetSystemSettings;)V

    iput-object v0, p0, Lcom/android/settings/ResetSystemSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetSystemSettings;I)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/settings/ResetSystemSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ResetSystemSettings;)Landroid/app/ProgressDialog;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/ResetSystemSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/ResetSystemSettings;Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/ResetSystemSettings;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/ResetSystemSettings;)Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings;->mResetSystemSettingsTask:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/ResetSystemSettings;Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;)Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings;->mResetSystemSettingsTask:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/ResetSystemSettings;)Ljava/lang/String;
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/ResetSystemSettings;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 3

    const-string p0, "ro.display.series"

    .line 808
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x49

    aput v2, v0, v1

    .line 809
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Single"

    const-string v1, ""

    .line 811
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 1

    .line 786
    new-instance p0, Landroid/app/ProgressDialog;

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 787
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v0, 0x0

    .line 788
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 789
    sget v0, Lcom/android/settings/R$string;->master_clear_progress_text:I

    .line 790
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 789
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    sget p0, Lcom/android/settings/R$string;->reset_network_title:I

    .line 116
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 115
    invoke-virtual {v1, p1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isRampingRingerEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 779
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "apply_ramping_ringer"

    const/4 v0, 0x0

    .line 778
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "telephony"

    const-string v1, "ramping_ringer_enabled"

    .line 781
    invoke-static {p0, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x907

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/ResetSystemSettings;->showFinalConfirmation()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->reset_system_settings_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 100
    sget p2, Lcom/android/settings/R$layout;->reset_system_settings:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings;->mContentView:Landroid/view/View;

    .line 101
    sget p2, Lcom/android/settings/R$id;->initiate_reset_system_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings;->mInitiateButton:Landroid/widget/Button;

    .line 102
    iget-object p2, p0, Lcom/android/settings/ResetSystemSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 799
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method showFinalConfirmation()V
    .locals 4

    .line 151
    sget-object v0, Lcom/android/settings/ResetSystemSettings;->TAG:Ljava/lang/String;

    const-string v1, "showFinalConfirmation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->reset_system_settings_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->reset_system_settings_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 156
    sget v0, Lcom/android/settings/R$string;->okay:I

    new-instance v1, Lcom/android/settings/ResetSystemSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetSystemSettings$2;-><init>(Lcom/android/settings/ResetSystemSettings;)V

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 167
    sget v0, Lcom/android/settings/R$string;->alert_dialog_cancel:I

    new-instance v1, Lcom/android/settings/ResetSystemSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetSystemSettings$3;-><init>(Lcom/android/settings/ResetSystemSettings;)V

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
