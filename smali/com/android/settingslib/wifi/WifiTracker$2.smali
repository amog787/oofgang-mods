.class Lcom/android/settingslib/wifi/WifiTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 919
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 920
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v1}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 922
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 p1, 0x4

    const-string/jumbo v0, "wifi_state"

    .line 924
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 923
    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$400(Lcom/android/settingslib/wifi/WifiTracker;I)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 926
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 927
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1, v3}, Lcom/android/settingslib/wifi/WifiTracker;->access$502(Lcom/android/settingslib/wifi/WifiTracker;Z)Z

    .line 928
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const-string v0, "resultsUpdated"

    .line 929
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 928
    invoke-static {p1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$602(Lcom/android/settingslib/wifi/WifiTracker;Z)Z

    .line 931
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 932
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 933
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 935
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "networkInfo"

    .line 938
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 939
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$800(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    .line 940
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto/16 :goto_1

    :cond_3
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    .line 941
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 942
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$800(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto/16 :goto_1

    :cond_4
    const-string p2, "android.intent.action.VERIZON_INVALID_NETWORK"

    .line 945
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 946
    invoke-static {}, Lcom/android/settingslib/utils/ProductUtils;->isUsvMode()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "WifiSettingsPrefsFile"

    .line 947
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 948
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "avoid_bad_wifi_connection_cicked"

    .line 949
    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "avoid_bad_wifi_connection_dialog_button_clicked"

    const-string v5, "no"

    .line 950
    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "is_showing"

    .line 951
    invoke-interface {p2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 952
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/android/settingslib/R$string;->avoid_bad_wifi_connection_dialog_title:I

    .line 953
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 954
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v6, Lcom/android/settingslib/R$string;->go_to_settings:I

    .line 955
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settingslib/wifi/WifiTracker$2$2;

    invoke-direct {v7, p0, v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$2$2;-><init>(Lcom/android/settingslib/wifi/WifiTracker$2;Landroid/content/SharedPreferences$Editor;Landroid/content/Context;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v6, Lcom/android/settingslib/R$string;->no_thanks:I

    .line 966
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v6, Lcom/android/settingslib/wifi/WifiTracker$2$1;

    invoke-direct {v6, p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$2$1;-><init>(Lcom/android/settingslib/wifi/WifiTracker$2;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, p1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 973
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    if-nez v1, :cond_6

    const-string/jumbo p1, "yes"

    .line 974
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 975
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 976
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 977
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 934
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;)V

    :cond_6
    :goto_1
    return-void
.end method
