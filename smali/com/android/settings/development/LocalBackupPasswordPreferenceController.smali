.class public Lcom/android/settings/development/LocalBackupPasswordPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "LocalBackupPasswordPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mBackupManager:Landroid/app/backup/IBackupManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string p1, "backup"

    .line 45
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-void
.end method

.method private updatePasswordSummary(Landroidx/preference/Preference;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 60
    iget-object p0, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez p0, :cond_1

    return-void

    .line 64
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 65
    sget p0, Lcom/android/settings/R$string;->local_backup_password_summary_change:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 67
    :cond_2
    sget p0, Lcom/android/settings/R$string;->local_backup_password_summary_none:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "local_backup_password"

    return-object p0
.end method

.method isAdminUser()Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->updatePasswordSummary(Landroidx/preference/Preference;)V

    return-void
.end method
