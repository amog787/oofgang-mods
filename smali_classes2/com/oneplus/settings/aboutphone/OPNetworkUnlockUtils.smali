.class public Lcom/oneplus/settings/aboutphone/OPNetworkUnlockUtils;
.super Ljava/lang/Object;
.source "OPNetworkUnlockUtils.java"


# direct methods
.method public static getNetworkUnlockStatus(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "key_network_unlock_status"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method public static getUnlockAppEnabledStatus(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v1, "com.tmobile.rsuapp"

    .line 29
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 31
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 32
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public static saveNetworkUnlockStatus(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "key_network_unlock_status"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
