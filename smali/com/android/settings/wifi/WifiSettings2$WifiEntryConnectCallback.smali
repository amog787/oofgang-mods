.class Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;
.super Ljava/lang/Object;
.source "WifiSettings2.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEntryConnectCallback"
.end annotation


# instance fields
.field final mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field final mEditIfNoConfig:Z

.field final mFullScreenEdit:Z

.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings2;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1089
    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->mEditIfNoConfig:Z

    .line 1090
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->mFullScreenEdit:Z

    return-void
.end method


# virtual methods
.method public onConnectResult(I)V
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings2;->access$300(Lcom/android/settings/wifi/WifiSettings2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1100
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiSettings2;->access$102(Lcom/android/settings/wifi/WifiSettings2;Z)Z

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    .line 1102
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->mEditIfNoConfig:Z

    if-eqz p1, :cond_4

    .line 1104
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->mFullScreenEdit:Z

    if-eqz p1, :cond_2

    .line 1105
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p1, p0}, Lcom/android/settings/wifi/WifiSettings2;->access$400(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 1107
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p1, p0, v0}, Lcom/android/settings/wifi/WifiSettings2;->access$500(Lcom/android/settings/wifi/WifiSettings2;Lcom/android/wifitrackerlib/WifiEntry;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1111
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings2$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_connect_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1112
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method
