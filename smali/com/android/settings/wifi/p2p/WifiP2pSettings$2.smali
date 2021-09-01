.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 235
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p2, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz p2, :cond_2

    .line 236
    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 238
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 240
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 242
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_p2p_failed_rename_message:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p2, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    .line 250
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;)V

    .line 249
    invoke-virtual {p2, p1, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2
    return-void
.end method
