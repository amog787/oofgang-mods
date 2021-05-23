.class Lcom/android/server/OnePlusNfcService$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/OnePlusNfcService;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusNfcService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusNfcService$you;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "city"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appcode"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v0, :cond_0

    move-object v0, v3

    :cond_0
    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/OnePlusNfcService$you;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-static {v4}, Lcom/android/server/OnePlusNfcService;->access$000(Lcom/android/server/OnePlusNfcService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "yangchengtong"

    :cond_2
    iget-object v5, p0, Lcom/android/server/OnePlusNfcService$you;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-static {v5}, Lcom/android/server/OnePlusNfcService;->access$100(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/OnePlusNfcService$you;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-static {v1}, Lcom/android/server/OnePlusNfcService;->access$100(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNfcUpdateConfigReceiver "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appcode:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OnePlusNfcService"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.nfc.action.UPDATE_CONFIG"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.nfc"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "configType"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/OnePlusNfcService$you;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-static {v0}, Lcom/android/server/OnePlusNfcService;->access$100(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p1, "persist.vendor.oem.nfc.rf.card"

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "config is same not set again"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "restart"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "restart for action "

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/OnePlusNfcService$you;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-static {p0}, Lcom/android/server/OnePlusNfcService;->access$200(Lcom/android/server/OnePlusNfcService;)V

    :cond_3
    return-void

    :cond_4
    const-string p2, "productline"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "vendor.oem.nfc.rf.card.productline"

    if-eqz p2, :cond_5

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/OnePlusNfcService$you;->zta:Lcom/android/server/OnePlusNfcService;

    invoke-static {p0}, Lcom/android/server/OnePlusNfcService;->access$200(Lcom/android/server/OnePlusNfcService;)V

    return-void
.end method
