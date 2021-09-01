.class public Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.super Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;
.source "NetworkRequestDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;,
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;
    }
.end annotation


# instance fields
.field private mAccessPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

.field mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

.field private mShowLimitedItem:Z

.field private mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->showAllButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->hideProgressIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Ljava/util/List;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->renewAccessPointList(Ljava/util/List;)V

    return-void
.end method

.method private getDialogAdapter()Landroid/widget/BaseAdapter;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    return-object p0
.end method

.method private hideProgressIcon()V
    .locals 1

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    if-nez p0, :cond_0

    return-void

    .line 214
    :cond_0
    sget v0, Lcom/android/settings/R$id;->network_request_title_progress:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 216
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroidx/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 112
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 123
    iput-boolean p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    const/4 p2, 0x0

    .line 124
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->renewAccessPointList(Ljava/util/List;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    const/16 p0, 0x8

    .line 126
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$3(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, -0x3

    .line 120
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/16 p2, 0x8

    .line 121
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    new-instance p2, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/android/settings/wifi/NetworkRequestDialogFragment;
    .locals 1

    .line 75
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;-><init>()V

    return-object v0
.end method

.method private renewAccessPointList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->updateKeys(Ljava/util/List;)V

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object p1

    .line 319
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 320
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private showAllButton()V
    .locals 1

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x3

    .line 202
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method getAccessPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    return-object p0
.end method

.method public synthetic lambda$onCreateDialog$0$NetworkRequestDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$NetworkRequestDialogFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$1(Landroidx/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$2$NetworkRequestDialogFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$2(Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$3$NetworkRequestDialogFragment(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$3(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method notifyAdapterRefresh()V
    .locals 1

    .line 325
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialogAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialogAdapter()Landroid/widget/BaseAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 172
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz p0, :cond_0

    .line 173
    invoke-interface {p0}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object p1

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-nez v0, :cond_1

    return-void

    .line 155
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 156
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 157
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 159
    invoke-static {p1, p2, p2}, Lcom/android/settings/wifi/WifiUtils;->getWifiConfig(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    .line 164
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    invoke-interface {p0, p2}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    sget v1, Lcom/android/settings/R$layout;->network_request_dialog_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    sget v1, Lcom/android/settings/R$id;->network_request_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget v1, Lcom/android/settings/R$id;->network_request_summary_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    sget v1, Lcom/android/settings/R$id;->network_request_title_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    new-instance v1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    sget v4, Lcom/android/settings/R$layout;->preference_access_point:I

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, p0, p1, v4, v5}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    .line 100
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    .line 102
    invoke-virtual {v1, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$WCubGJZUXXghSB4GzGNKVjh70wc;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$WCubGJZUXXghSB4GzGNKVjh70wc;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    .line 103
    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->network_connection_request_dialog_showall:I

    .line 105
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$kMx9q9fSHpeKkR6QNAI-Ppkj7yk;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$kMx9q9fSHpeKkR6QNAI-Ppkj7yk;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    invoke-virtual {p0, v3}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 118
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$PTu_vRjTWuG_4vH1Q83vJ5FyGZs;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$PTu_vRjTWuG_4vH1Q83vJ5FyGZs;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onDestroy()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    :cond_0
    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 297
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->renewAccessPointList(Ljava/util/List;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 179
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onPause()V

    .line 181
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-eqz p0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 222
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    .line 227
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onResume()V

    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void
.end method
