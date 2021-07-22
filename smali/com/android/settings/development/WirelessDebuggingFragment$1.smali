.class Lcom/android/settings/development/WirelessDebuggingFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDebuggingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/WirelessDebuggingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/WirelessDebuggingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/WirelessDebuggingFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.server.adb.WIRELESS_DEBUG_PAIRED_DEVICES"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "devices_map"

    .line 110
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 112
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-static {p0, p1}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$000(Lcom/android/settings/development/WirelessDebuggingFragment;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.android.server.adb.WIRELESS_DEBUG_STATUS"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const-string v2, "status"

    if-eqz v0, :cond_2

    const/4 p1, 0x5

    .line 114
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v1, :cond_1

    if-ne p2, p1, :cond_6

    .line 118
    :cond_1
    invoke-static {}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$200()Lcom/android/settings/development/AdbIpAddressPreferenceController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-static {p0}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$100(Lcom/android/settings/development/WirelessDebuggingFragment;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/development/AdbIpAddressPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "com.android.server.adb.WIRELESS_DEBUG_PAIRING_RESULT"

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 121
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "pairing_code"

    .line 126
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-static {p2}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$300(Lcom/android/settings/development/WirelessDebuggingFragment;)Lcom/android/settings/development/AdbWirelessDialog;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 129
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-static {p0}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$300(Lcom/android/settings/development/WirelessDebuggingFragment;)Lcom/android/settings/development/AdbWirelessDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/development/AdbWirelessDialog;->getController()Lcom/android/settings/development/AdbWirelessDialogController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AdbWirelessDialogController;->setPairingCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 132
    iget-object p2, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-static {p2, p1}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$400(Lcom/android/settings/development/WirelessDebuggingFragment;I)V

    .line 133
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-static {p0, v3}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$302(Lcom/android/settings/development/WirelessDebuggingFragment;Lcom/android/settings/development/AdbWirelessDialog;)Lcom/android/settings/development/AdbWirelessDialog;

    goto :goto_0

    .line 134
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    iget-object p2, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-static {p2, p1}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$500(Lcom/android/settings/development/WirelessDebuggingFragment;I)V

    .line 136
    iget-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-static {p1, v3}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$302(Lcom/android/settings/development/WirelessDebuggingFragment;Lcom/android/settings/development/AdbWirelessDialog;)Lcom/android/settings/development/AdbWirelessDialog;

    .line 137
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$600(Lcom/android/settings/development/WirelessDebuggingFragment;I)V

    goto :goto_0

    .line 138
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "adb_port"

    .line 139
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got pairing code port="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WirelessDebuggingFrag"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$200()Lcom/android/settings/development/AdbIpAddressPreferenceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/development/AdbIpAddressPreferenceController;->getIpv4Address()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-static {p2}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$300(Lcom/android/settings/development/WirelessDebuggingFragment;)Lcom/android/settings/development/AdbWirelessDialog;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 143
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$1;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    invoke-static {p0}, Lcom/android/settings/development/WirelessDebuggingFragment;->access$300(Lcom/android/settings/development/WirelessDebuggingFragment;)Lcom/android/settings/development/AdbWirelessDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/development/AdbWirelessDialog;->getController()Lcom/android/settings/development/AdbWirelessDialogController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AdbWirelessDialogController;->setIpAddr(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
