.class public Lcom/android/settings/backup/SettingsBackupHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "SettingsBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 39
    new-instance v0, Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;-><init>(Lcom/android/settings/backup/SettingsBackupHelper$1;)V

    const-string v1, "no-op"

    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method

.method public onRestoreFinished()V
    .locals 0

    .line 44
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onRestoreFinished()V

    .line 45
    invoke-static {p0}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->updateRestoredShortcuts(Landroid/content/Context;)V

    return-void
.end method
