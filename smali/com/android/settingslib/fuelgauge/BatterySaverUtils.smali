.class public Lcom/android/settingslib/fuelgauge/BatterySaverUtils;
.super Ljava/lang/Object;
.source "BatterySaverUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;
    }
.end annotation


# direct methods
.method private static getSystemUiBroadcast(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    .line 190
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "com.android.systemui"

    .line 191
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static maybeShowBatterySaverConfirmation(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 3

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_warning_acknowledged"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "PNW.startSaverConfirmation"

    .line 180
    invoke-static {v0, p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->getSystemUiBroadcast(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static revertScheduleToNoneIfNeeded(Landroid/content/Context;)V
    .locals 5

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_power_save_mode"

    const/4 v2, 0x0

    .line 237
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const v4, 0x10401d3

    .line 239
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v4, 0x1

    xor-int/2addr p0, v4

    if-ne v3, v4, :cond_0

    if-nez p0, :cond_0

    const-string p0, "low_power_trigger_level"

    .line 242
    invoke-static {v0, p0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private static setBatterySaverConfirmationAcknowledged(Landroid/content/Context;)V
    .locals 3

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "low_power_warning_acknowledged"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static declared-synchronized setPowerSaveMode(Landroid/content/Context;ZZ)Z
    .locals 7

    const-class v0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 122
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "extra_confirm_only"

    const/4 v5, 0x0

    .line 123
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "com.android.settings"

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "extra_power_save_mode_caller"

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 132
    invoke-static {p0, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->maybeShowBatterySaverConfirmation(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 133
    monitor-exit v0

    return v5

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 136
    :try_start_1
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setBatterySaverConfirmationAcknowledged(Landroid/content/Context;)V

    .line 139
    :cond_2
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->setPowerSaveModeEnabled(Z)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    const-string p1, "low_power_manual_activation_count"

    .line 142
    invoke-static {v1, p1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v3

    const-string p2, "low_power_manual_activation_count"

    .line 143
    invoke-static {v1, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    new-instance p2, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;

    invoke-direct {p2, p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;-><init>(Landroid/content/Context;)V

    .line 147
    iget v4, p2, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->startNth:I

    if-lt p1, v4, :cond_3

    iget p2, p2, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->endNth:I

    if-gt p1, p2, :cond_3

    const-string p1, "low_power_trigger_level"

    .line 149
    invoke-static {v1, p1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "suppress_auto_battery_saver_suggestion"

    .line 150
    invoke-static {v1, p1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    .line 152
    invoke-static {p0, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->showAutoBatterySaverSuggestion(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :cond_3
    monitor-exit v0

    return v3

    .line 158
    :cond_4
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static showAutoBatterySaverSuggestion(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "PNW.autoSaverSuggestion"

    .line 185
    invoke-static {v0, p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->getSystemUiBroadcast(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static suppressAutoBatterySaver(Landroid/content/Context;)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "suppress_auto_battery_saver_suggestion"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
