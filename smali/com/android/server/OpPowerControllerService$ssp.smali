.class Lcom/android/server/OpPowerControllerService$ssp;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OpPowerControllerService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/OpPowerControllerService;


# direct methods
.method constructor <init>(Lcom/android/server/OpPowerControllerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$ssp;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerControllerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "doze_mode_policy"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/android/server/OpPowerControllerService$ssp;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p2}, Lcom/android/server/OpPowerControllerService;->access$1400(Lcom/android/server/OpPowerControllerService;)Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v1, p2

    :cond_0
    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$1302(Z)Z

    goto :goto_0

    :cond_1
    const-string p1, "optimal_power_save_mode_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/OpPowerControllerService$ssp;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p2}, Lcom/android/server/OpPowerControllerService;->access$1400(Lcom/android/server/OpPowerControllerService;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/OpPowerControllerService;->access$702(Lcom/android/server/OpPowerControllerService;I)I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/android/server/OpPowerControllerService$ssp;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p2}, Lcom/android/server/OpPowerControllerService;->access$700(Lcom/android/server/OpPowerControllerService;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "oc"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/OpPowerControllerService$ssp;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p2}, Lcom/android/server/OpPowerControllerService;->access$1000(Lcom/android/server/OpPowerControllerService;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/OpPowerControllerService$ssp;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p2}, Lcom/android/server/OpPowerControllerService;->access$1000(Lcom/android/server/OpPowerControllerService;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$ssp;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$600(Lcom/android/server/OpPowerControllerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$ssp;->zta:Lcom/android/server/OpPowerControllerService;

    iget-object v2, v2, Lcom/android/server/OpPowerControllerService;->mMdmExtraData:Ljava/util/HashMap;

    const-string v3, "usersleep"

    invoke-virtual {p2, v1, v3, p1, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MSG_UPDATE_POLICY: mAggressive = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1300()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mOPSMEnabled = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$ssp;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$700(Lcom/android/server/OpPowerControllerService;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/OpPowerControllerService;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
