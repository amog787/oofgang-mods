.class public Lcom/android/settings/SettingsTutorialDialogWrapperActivity;
.super Landroid/app/Activity;
.source "SettingsTutorialDialogWrapperActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic lambda$showDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showDialog()V
    .locals 1

    .line 39
    new-instance v0, Lcom/android/settings/-$$Lambda$SettingsTutorialDialogWrapperActivity$6ZOKJwWBtDFoOEaf95p3PkTzlPE;

    invoke-direct {v0, p0}, Lcom/android/settings/-$$Lambda$SettingsTutorialDialogWrapperActivity$6ZOKJwWBtDFoOEaf95p3PkTzlPE;-><init>(Lcom/android/settings/SettingsTutorialDialogWrapperActivity;)V

    .line 40
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;->showGestureNavigationSettingsTutorialDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$showDialog$0$SettingsTutorialDialogWrapperActivity(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsTutorialDialogWrapperActivity;->lambda$showDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsTutorialDialogWrapperActivity;->showDialog()V

    return-void
.end method
