.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$AdapterData;,
        Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# instance fields
.field private mAliasLoaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

.field private mConfirmedCredentialUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

.field private mConfirmingCredentialUser:I

.field private mGroupAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKeyChainConnectionByProfileId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTrustAllCaUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    .line 162
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 166
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/ArrayList;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/TrustedCredentialsSettings;I)Z
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->startConfirmCredential(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/settings/TrustedCredentialsSettings;)Z
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->isTrustAllCaCertModeInProgress()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    return p0
.end method

.method static synthetic access$3102(Lcom/android/settings/TrustedCredentialsSettings;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/List;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showTrustAllCaDialog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method private addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 9

    .line 280
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$300(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 282
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$200(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 285
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupCount()I

    move-result v1

    .line 290
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 291
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    .line 294
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 295
    invoke-virtual {v0, v3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    .line 297
    invoke-virtual {v0, v3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_0

    goto :goto_3

    .line 301
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildAdapter(I)Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;

    move-result-object v5

    .line 303
    sget v6, Lcom/android/settings/R$layout;->trusted_credential_list_container:I

    .line 304
    invoke-virtual {p0, v6, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 305
    invoke-virtual {v5, v6}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->setContainerView(Landroid/widget/LinearLayout;)V

    const/4 v7, 0x1

    if-le v1, v7, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v2

    .line 307
    :goto_1
    invoke-virtual {v5, v8}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->showHeader(Z)V

    .line 308
    invoke-virtual {v5, v4}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->showDivider(Z)V

    const/4 v8, 0x2

    if-gt v1, v8, :cond_2

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v7, v2

    .line 309
    :goto_2
    invoke-virtual {v5, v7}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->setExpandIfAvailable(Z)V

    if-eqz v4, :cond_4

    .line 311
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 313
    :cond_4
    invoke-virtual {p1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private closeKeyChainConnections()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 273
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isTrustAllCaCertModeInProgress()Z
    .locals 1

    .line 933
    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 2

    .line 953
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    .line 954
    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    .line 955
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showTrustAllCaDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    .line 938
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 937
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 939
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    .line 940
    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    new-instance p1, Lcom/android/settings/TrustedCredentialsSettings$2;

    invoke-direct {p1, p0}, Lcom/android/settings/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    .line 941
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 949
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private startConfirmCredential(I)Z
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 328
    :cond_0
    iput p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    const/4 p1, 0x1

    .line 329
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5c

    return p0
.end method

.method public getX509CertsFromCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 962
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/security/KeyChain$KeyChainConnection;

    .line 965
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object p0

    .line 966
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 967
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 968
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 970
    :try_start_2
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p0, v6, v3}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v6

    .line 971
    invoke-static {v6}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 972
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while retrieving certificate chain for root "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TrustedCredentialsSettings"

    .line 976
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v0

    :goto_2
    return-object v5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 254
    iget p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    .line 255
    iget-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    const/16 v0, -0x2710

    .line 258
    iput v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 261
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 263
    invoke-interface {p3, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 184
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "user"

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "keyguard"

    .line 188
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 189
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ARG_SHOW_NEW_FOR_USER"

    const/16 v3, -0x2710

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTrustAllCaUserId:I

    .line 191
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    .line 192
    iput v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    if-eqz p1, :cond_0

    const-string v1, "ConfirmingCredentialUser"

    .line 194
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    const-string v1, "ConfirmedCredentialUsers"

    .line 196
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    .line 205
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 206
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 207
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 208
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    sget p0, Lcom/android/settings/R$string;->trusted_credentials:I

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 224
    sget p3, Lcom/android/settings/R$layout;->trusted_credentials:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 225
    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 226
    sget-object p1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 228
    sget-object p1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    sget-object p2, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$100(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mWorkProfileChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    .line 239
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 242
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mGroupAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings;->closeKeyChainConnections()V

    .line 248
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "ConfirmedCredentialUsers"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 219
    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialUser:I

    const-string v0, "ConfirmingCredentialUser"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public removeOrInstallCert(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 2

    .line 984
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmedCredentialUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 995
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->startConfirmCredential(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 997
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mConfirmingCredentialListener:Ljava/util/function/IntConsumer;

    :cond_1
    return p1
.end method
