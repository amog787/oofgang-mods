.class public Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;


# static fields
.field private static final DBG:Z

.field static final DIALOG_CANCEL_CONNECT:I = 0x2

.field static final DIALOG_DELETE_GROUP:I = 0x4

.field static final DIALOG_DISCONNECT:I = 0x1

.field static final DIALOG_RENAME:I = 0x3

.field static final MENU_ID_RENAME:I = 0x2

.field static final MENU_ID_SEARCH:I = 0x1

.field static final SAVE_DEVICE_NAME:Ljava/lang/String; = "DEV_NAME"

.field static final SAVE_DIALOG_PEER:Ljava/lang/String; = "PEER_STATE"

.field static final SAVE_SELECTED_GROUP:Ljava/lang/String; = "GROUP_NAME"


# instance fields
.field mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field mConnectedDevices:I

.field mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeviceNameText:Landroid/widget/EditText;

.field mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsIgnoreInitConnectionInfoCallback:Z

.field mLastGroupFormed:Z

.field mPeerCategoryController:Lcom/android/settings/wifi/p2p/P2pPeerCategoryPreferenceController;

.field private mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field mPersistentCategoryController:Lcom/android/settings/wifi/p2p/P2pPersistentCategoryPreferenceController;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mRenameListener:Landroid/content/DialogInterface$OnClickListener;

.field mSavedDeviceName:Ljava/lang/String;

.field mSelectedGroup:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

.field mSelectedGroupName:Ljava/lang/String;

.field mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field mThisDevicePreferenceController:Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;

.field private mWifiP2pEnabled:Z

.field mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field mWifiP2pSearching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiP2pSettings"

    const/4 v1, 0x3

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsIgnoreInitConnectionInfoCallback:Z

    .line 110
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 114
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsIgnoreInitConnectionInfoCallback:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    return-object p0
.end method

.method private handleP2pStateChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 621
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    .line 622
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePreferenceController:Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPersistentCategoryController:Lcom/android/settings/wifi/p2p/P2pPersistentCategoryPreferenceController;

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->setEnabled(Z)V

    .line 624
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeerCategoryController:Lcom/android/settings/wifi/p2p/P2pPeerCategoryPreferenceController;

    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->setEnabled(Z)V

    return-void
.end method

.method private handlePeersChanged()V
    .locals 6

    .line 571
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeerCategoryController:Lcom/android/settings/wifi/p2p/P2pPeerCategoryPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->removeAllChildren()V

    const/4 v0, 0x0

    .line 573
    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    .line 574
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->DBG:Z

    const-string v1, "WifiP2pSettings"

    if-eqz v0, :cond_0

    const-string v0, "List of available peers"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 576
    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeerCategoryController:Lcom/android/settings/wifi/p2p/P2pPeerCategoryPreferenceController;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->addChild(Landroidx/preference/Preference;)V

    .line 578
    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_0

    .line 580
    :cond_3
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mConnectedDevices "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private synthetic lambda$onResume$0(Landroid/net/NetworkInfo;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsIgnoreInitConnectionInfoCallback:Z

    if-nez v0, :cond_2

    .line 360
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 361
    sget-boolean p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->DBG:Z

    if-eqz p1, :cond_1

    const-string p1, "WifiP2pSettings"

    const-string v0, "Connected"

    .line 362
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    if-nez p1, :cond_1

    .line 366
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    .line 368
    :cond_1
    :goto_0
    iget-boolean p1, p2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$onResume$1(Landroid/net/NetworkInfo;)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$Hq-TMhVVQgyo2s25QDYpssZSHqw;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$Hq-TMhVVQgyo2s25QDYpssZSHqw;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    return-void
.end method

.method private startSearch()V
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-nez v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private updateSearchMenu(Z)V
    .locals 0

    .line 628
    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    .line 629
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 630
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v1, Lcom/android/settings/wifi/p2p/P2pPersistentCategoryPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/p2p/P2pPersistentCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPersistentCategoryController:Lcom/android/settings/wifi/p2p/P2pPersistentCategoryPreferenceController;

    .line 192
    new-instance v1, Lcom/android/settings/wifi/p2p/P2pPeerCategoryPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/p2p/P2pPeerCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeerCategoryController:Lcom/android/settings/wifi/p2p/P2pPeerCategoryPreferenceController;

    .line 194
    new-instance v1, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePreferenceController:Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;

    .line 195
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPersistentCategoryController:Lcom/android/settings/wifi/p2p/P2pPersistentCategoryPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeerCategoryController:Lcom/android/settings/wifi/p2p/P2pPeerCategoryPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePreferenceController:Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x242

    return p0

    :cond_1
    const/16 p0, 0x241

    return p0

    :cond_2
    const/16 p0, 0x240

    return p0

    :cond_3
    const/16 p0, 0x23f

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 184
    sget p0, Lcom/android/settings/R$string;->help_url_wifi_p2p:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiP2pSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 174
    sget p0, Lcom/android/settings/R$xml;->wifi_p2p_settings:I

    return p0
.end method

.method public synthetic lambda$onResume$0$WifiP2pSettings(Landroid/net/NetworkInfo;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->lambda$onResume$0(Landroid/net/NetworkInfo;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method

.method public synthetic lambda$onResume$1$WifiP2pSettings(Landroid/net/NetworkInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->lambda$onResume$1(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "wifip2p"

    .line 205
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const-string v2, "WifiP2pSettings"

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    .line 209
    invoke-virtual {v1, v0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_2

    const-string v0, "Failed to set up connection with wifi p2p service"

    .line 213
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    goto :goto_0

    :cond_1
    const-string v0, "mWifiP2pManager is null !"

    .line 217
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    const-string v0, "PEER_STATE"

    .line 220
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 222
    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "DEV_NAME"

    .line 224
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "GROUP_NAME"

    .line 227
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    .line 231
    :cond_5
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 267
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 286
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 306
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    .line 338
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 479
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 480
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_0

    .line 481
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 483
    :goto_0
    iget v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    if-le v4, v3, :cond_1

    .line 484
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->wifi_p2p_disconnect_multiple_message:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    iget p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    sub-int/2addr p1, v3

    .line 485
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    .line 484
    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 487
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v4, Lcom/android/settings/R$string;->wifi_p2p_disconnect_message:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 489
    :goto_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->wifi_p2p_disconnect_title:I

    .line 490
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 491
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 492
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 493
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->dlg_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 494
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne p1, v0, :cond_4

    .line 497
    sget p1, Lcom/android/settings/R$string;->wifi_p2p_cancel_connect_message:I

    .line 498
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_2

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 502
    :goto_2
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/android/settings/R$string;->wifi_p2p_cancel_connect_title:I

    .line 503
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {v5, p1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 506
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->dlg_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 507
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 511
    sget v0, Lcom/android/settings/R$layout;->dialog_edittext:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 512
    sget v0, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    new-array v3, v3, [Landroid/text/InputFilter;

    .line 513
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 515
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_3

    .line 517
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 518
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 521
    :cond_6
    :goto_3
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 522
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->wifi_p2p_menu_rename:I

    .line 523
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 524
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 525
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 526
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->dlg_cancel:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 527
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 530
    sget p1, Lcom/android/settings/R$string;->wifi_p2p_delete_group_message:I

    .line 532
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 534
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 535
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 536
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 386
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->wifi_p2p_menu_searching:I

    goto :goto_0

    .line 387
    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_p2p_menu_search:I

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    .line 389
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x2

    .line 390
    sget v1, Lcom/android/settings/R$string;->wifi_p2p_menu_rename:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    .line 391
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 392
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1

    .line 615
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 616
    sget-boolean p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->DBG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update device info: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiP2pSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevicePreferenceController:Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->updateDeviceName(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 416
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 427
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 424
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.intent.OPDeviceNameActivity"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    return v1
.end method

.method public onPause()V
    .locals 3

    .line 377
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 378
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2

    .line 608
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pSettings"

    const-string v1, "Requested peers are available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 610
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->handlePeersChanged()V

    return-void
.end method

.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 4

    .line 585
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPersistentCategoryController:Lcom/android/settings/wifi/p2p/P2pPersistentCategoryPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->removeAllChildren()V

    .line 587
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "WifiP2pSettings"

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 588
    sget-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 590
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPersistentCategoryController:Lcom/android/settings/wifi/p2p/P2pPersistentCategoryPreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->addChild(Landroidx/preference/Preference;)V

    .line 591
    invoke-virtual {v2}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selecting group "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_2
    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    goto :goto_0

    .line 597
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " Selected group "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroupName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " disappered on next query "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 432
    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_5

    .line 433
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 434
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 437
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 439
    :cond_1
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 440
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 442
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->wps_info()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 445
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 447
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 448
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 449
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 450
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 452
    :cond_4
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1

    .line 469
    :cond_5
    instance-of v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v0, :cond_6

    .line 470
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    const/4 v0, 0x4

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 473
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v0, 0x1

    .line 397
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    .line 398
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 399
    iget-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    if-eqz v2, :cond_0

    .line 400
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 401
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 403
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 404
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 407
    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz p0, :cond_1

    .line 408
    sget p0, Lcom/android/settings/R$string;->wifi_p2p_menu_searching:I

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 410
    :cond_1
    sget p0, Lcom/android/settings/R$string;->wifi_p2p_menu_search:I

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 343
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.action.WIFI_P2P_PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestDeviceInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsIgnoreInitConnectionInfoCallback:Z

    .line 357
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$2b5R7FzwgOqx1vdLhUfqMEQt0cw;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/-$$Lambda$WifiP2pSettings$2b5R7FzwgOqx1vdLhUfqMEQt0cw;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestNetworkInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v1, "PEER_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEV_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz p0, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPersistentGroup;->getGroupName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GROUP_NAME"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
