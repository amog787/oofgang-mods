.class public final Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;
.super Ljava/lang/Object;
.source "PrimaryCardAndSubsidyLockUtils.java"


# static fields
.field public static DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PrimaryCardAndSubsidyLockUtils"

    const/4 v1, 0x3

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->DBG:Z

    return-void
.end method

.method private static getSubsidyStatus(Landroid/content/Context;)I
    .locals 2

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "subsidy_status"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getUiccCardProvisioningStatus(I)I
    .locals 3

    const-string v0, "qti.radio.extphone"

    .line 128
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    .line 130
    :try_start_0
    invoke-interface {v0, p0}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUiccCardProvisioningStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Exception: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PrimaryCardAndSubsidyLockUtils"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getVendorPropertyInt(Ljava/lang/String;)I
    .locals 4

    const-string v0, "qti.radio.extphone"

    .line 116
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    const/4 v1, -0x1

    .line 118
    :try_start_0
    invoke-interface {v0, p0, v1}, Lorg/codeaurora/internal/IExtTelephony;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVendorPropertyInt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Exception: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "PrimaryCardAndSubsidyLockUtils"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public static isPrimaryCardEnabled()Z
    .locals 1

    const-string v0, "persist.vendor.radio.primarycard"

    .line 74
    invoke-static {v0}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->isVendorPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPrimaryCardLWEnabled()Z
    .locals 1

    const-string v0, "persist.vendor.radio.lw_enabled"

    .line 82
    invoke-static {v0}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->isVendorPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSubsidyLockFeatureEnabled()Z
    .locals 2

    const-string v0, "ro.vendor.radio.subsidylock"

    .line 86
    invoke-static {v0}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->getVendorPropertyInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSubsidyUnlocked(Landroid/content/Context;)Z
    .locals 1

    .line 90
    invoke-static {p0}, Lcom/android/settings/network/telephony/PrimaryCardAndSubsidyLockUtils;->getSubsidyStatus(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x67

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isVendorPropertyEnabled(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "qti.radio.extphone"

    .line 104
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    const/4 v1, 0x0

    .line 106
    :try_start_0
    invoke-interface {v0, p0, v1}, Lorg/codeaurora/internal/IExtTelephony;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVendorPropertyEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Exception: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "PrimaryCardAndSubsidyLockUtils"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method
