.class Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings2;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettings2;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/settings/wifi/WifiSettings2$1;)V
    .locals 0

    .line 1238
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver;-><init>(Lcom/android/settings/wifi/WifiSettings2;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings2;->access$700(Lcom/android/settings/wifi/WifiSettings2;)V

    goto :goto_0

    .line 1244
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.VERIZON_INVALID_NETWORK"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "wifi_auto_change_to_mobile_data"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 1246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dialogbadwifishown"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1247
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    if-nez v0, :cond_1

    .line 1248
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->avoid_bad_wifi_connection_dialog_title:I

    .line 1249
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1250
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->go_to_settings:I

    .line 1251
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver$2;-><init>(Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver;Landroid/content/Context;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->no_thanks:I

    .line 1260
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver$1;-><init>(Lcom/android/settings/wifi/WifiSettings2$SimStateChangeReceiver;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1265
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 1266
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1267
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
