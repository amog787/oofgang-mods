.class public Lcom/oneplus/security/network/simcard/SimcardStateManager;
.super Ljava/lang/Object;
.source "SimcardStateManager.java"


# direct methods
.method public static getShouldAlertSimcardHasPopedOut(Landroid/content/Context;I)Z
    .locals 2

    .line 33
    invoke-static {p0}, Lcom/oneplus/security/network/simcard/SimcardStateManager;->getSimOutAlertSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "key_should_alert_sim_has_poped_slot_one"

    .line 36
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    const-string p1, "key_should_alert_sim_has_poped_slot_two"

    .line 38
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid slotId "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimcardStateManager"

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private static getSimOutAlertSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "key_sp_sim_out_alert"

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static setShouldAlertSimcardHasPopedOut(Landroid/content/Context;ZI)V
    .locals 1

    .line 20
    invoke-static {p0}, Lcom/oneplus/security/network/simcard/SimcardStateManager;->getSimOutAlertSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 21
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p2, :cond_0

    const-string p2, "key_should_alert_sim_has_poped_slot_one"

    .line 23
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    const-string p2, "key_should_alert_sim_has_poped_slot_two"

    .line 25
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const-string p1, "SimcardStateManager"

    const-string p2, "set with invalid slotId, error."

    .line 27
    invoke-static {p1, p2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
