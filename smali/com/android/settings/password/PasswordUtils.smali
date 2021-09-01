.class public final Lcom/android/settings/password/PasswordUtils;
.super Lcom/android/settingslib/Utils;
.source "PasswordUtils.java"


# direct methods
.method public static crashCallingApplication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 7

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 85
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    .line 86
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v2, -0x1

    .line 90
    invoke-static {p0}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v5, p1

    .line 87
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Settings"

    const-string v0, "Could not talk to activity manager."

    .line 95
    invoke-static {p1, v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getCallingAppLabel(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/CharSequence;
    .locals 1

    .line 59
    invoke-static {p1}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "com.android.settings"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .line 74
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Settings"

    const-string v1, "Could not talk to activity manager."

    .line 76
    invoke-static {v0, v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isCallingAppPermitted(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 45
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p1

    .line 44
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception p0

    const-string p1, "Settings"

    const-string p2, "Could not talk to activity manager."

    .line 48
    invoke-static {p1, p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
