.class public Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;
.super Landroid/app/Activity;
.source "ActionDisabledByAdminDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 56
    new-instance p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "android.app.extra.DEVICE_ADMIN"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    const-string v0, "android.intent.extra.USER"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, -0x2710

    if-ne p1, v0, :cond_2

    .line 67
    iput-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    :goto_0
    return-object p0
.end method

.method getRestrictionFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "android.app.extra.RESTRICTION"

    .line 78
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getRestrictionFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    .line 41
    invoke-virtual {v1, v0, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 43
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getRestrictionFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->updateDialog(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
