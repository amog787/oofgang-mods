.class Lcom/android/server/wm/OPAppSwitchManagerService$wtn;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OPAppSwitchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "wtn"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wm/OPAppSwitchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->you(Landroid/net/Uri;)V

    return-void
.end method

.method public you(Landroid/net/Uri;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver onChange uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1000()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$900(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string v5, "oem_splash_ads_enable"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {p1, v3}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1102(Lcom/android/server/wm/OPAppSwitchManagerService;Z)Z

    :cond_2
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1202(Lnet/oneplus/odm/OpDeviceManagerInjector;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "7554P2RV0X"

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {v4}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1100(Lcom/android/server/wm/OPAppSwitchManagerService;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "1"

    goto :goto_1

    :cond_3
    const-string v4, "0"

    :goto_1
    const-string v5, "status"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1200()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "COMMIT_TO_MDM"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1200()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {v5}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$900(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "splash_switch"

    invoke-virtual {v4, v5, v6, v3, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1100(Lcom/android/server/wm/OPAppSwitchManagerService;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1300(Lcom/android/server/wm/OPAppSwitchManagerService;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "To Grant Opos RT Perms"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1400()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RT Perms : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for : 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {v3}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1500(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/permission/IPermissionManager;

    move-result-object v3

    const-string v4, "com.opos.ads"

    invoke-interface {v3, v4, v5, v2}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v8, 0x30

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {v3}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$900(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "com.opos.ads"

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    move v7, v8

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {p0, v0}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1302(Lcom/android/server/wm/OPAppSwitchManagerService;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p0, "To Grant Opos RT Perms : failed !"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-void
.end method

.method zta()V
    .locals 5

    const-string v0, "OPAppSwitchManagerService"

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta:Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-static {v1}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$900(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/OPAppSwitchManagerService;->access$1000()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "registerContentObserver on settings got exception..."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->you(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "update for all uris got exception..."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
