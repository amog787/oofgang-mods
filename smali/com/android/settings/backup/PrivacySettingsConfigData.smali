.class public Lcom/android/settings/backup/PrivacySettingsConfigData;
.super Ljava/lang/Object;
.source "PrivacySettingsConfigData.java"


# static fields
.field private static sInstance:Lcom/android/settings/backup/PrivacySettingsConfigData;


# instance fields
.field private mBackupEnabled:Z

.field private mBackupGray:Z

.field private mConfigIntent:Landroid/content/Intent;

.field private mConfigSummary:Ljava/lang/String;

.field private mManageIntent:Landroid/content/Intent;

.field private mManageLabel:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupEnabled:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupGray:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mConfigIntent:Landroid/content/Intent;

    .line 36
    iput-object v0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mConfigSummary:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mManageIntent:Landroid/content/Intent;

    .line 38
    iput-object v0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mManageLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public static getInstance()Lcom/android/settings/backup/PrivacySettingsConfigData;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->sInstance:Lcom/android/settings/backup/PrivacySettingsConfigData;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/settings/backup/PrivacySettingsConfigData;

    invoke-direct {v0}, Lcom/android/settings/backup/PrivacySettingsConfigData;-><init>()V

    sput-object v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->sInstance:Lcom/android/settings/backup/PrivacySettingsConfigData;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->sInstance:Lcom/android/settings/backup/PrivacySettingsConfigData;

    return-object v0
.end method


# virtual methods
.method public getConfigIntent()Landroid/content/Intent;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mConfigIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getConfigSummary()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mConfigSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getManageIntent()Landroid/content/Intent;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mManageIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getManageLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mManageLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isBackupEnabled()Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupEnabled:Z

    return p0
.end method

.method public isBackupGray()Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupGray:Z

    return p0
.end method

.method public setBackupEnabled(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupEnabled:Z

    return-void
.end method

.method public setBackupGray(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupGray:Z

    return-void
.end method

.method public setConfigIntent(Landroid/content/Intent;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mConfigIntent:Landroid/content/Intent;

    return-void
.end method

.method public setConfigSummary(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mConfigSummary:Ljava/lang/String;

    return-void
.end method

.method public setManageIntent(Landroid/content/Intent;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mManageIntent:Landroid/content/Intent;

    return-void
.end method

.method public setManageLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mManageLabel:Ljava/lang/CharSequence;

    return-void
.end method
