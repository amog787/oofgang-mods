.class public Lcom/android/settingslib/development/DevelopmentSettingsEnabler;
.super Ljava/lang/Object;
.source "DevelopmentSettingsEnabler.java"


# direct methods
.method public static isDevelopmentSettingsEnabled(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "user"

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 46
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "development_settings_enabled"

    .line 44
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const-string v3, "no_debugging_features"

    .line 47
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    .line 49
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V
    .locals 2

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settingslib.development.DevelopmentSettingsEnabler.SETTINGS_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
