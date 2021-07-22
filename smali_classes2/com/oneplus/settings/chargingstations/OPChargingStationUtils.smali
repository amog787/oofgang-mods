.class public Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;
.super Ljava/lang/Object;
.source "OPChargingStationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;
    }
.end annotation


# static fields
.field public static locationUpdate:Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLocationUpdate()Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;
    .locals 1

    .line 87
    sget-object v0, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->locationUpdate:Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;

    return-object v0
.end method

.method public static getLongSystemProperty(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStringGlobalProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSystemProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putIntSystemProperty(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putLongSystemProperty(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static putStringSystemProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static sendBroadcastToApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.ACTION_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notif_type"

    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_from_settings"

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.oneplus.chargingpilar"

    .line 29
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setLocationUpdate(Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;)V
    .locals 0

    .line 83
    sput-object p0, Lcom/oneplus/settings/chargingstations/OPChargingStationUtils;->locationUpdate:Lcom/oneplus/settings/chargingstations/OPChargingStationUtils$ILocationUpdate;

    return-void
.end method
