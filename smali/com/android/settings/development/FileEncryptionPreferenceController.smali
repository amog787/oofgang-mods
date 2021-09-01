.class public Lcom/android/settings/development/FileEncryptionPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "FileEncryptionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mStorageManager:Landroid/os/storage/IStorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/android/settings/development/FileEncryptionPreferenceController;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mStorageManager:Landroid/os/storage/IStorageManager;

    return-void
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 0

    :try_start_0
    const-string p0, "mount"

    .line 79
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 78
    invoke-static {p0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "convert_to_file_encryption"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/android/settings/development/FileEncryptionPreferenceController;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/os/storage/IStorageManager;->isConvertibleToFBE()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 66
    invoke-static {}, Landroid/sysprop/CryptoProperties;->type()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Landroid/sysprop/CryptoProperties$type_values;->NONE:Landroid/sysprop/CryptoProperties$type_values;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroid/sysprop/CryptoProperties$type_values;->FILE:Landroid/sysprop/CryptoProperties$type_values;

    if-eq p1, v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 72
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->convert_to_file_encryption_done:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
