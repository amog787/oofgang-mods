.class Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings$AdapterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray<",
        "Ljava/util/List<",
        "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)V
    .locals 3

    .line 683
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 684
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    .line 685
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2300(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object p0, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    .line 687
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 688
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isUserTabAndTrustAllCertMode()Z
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3000(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object p0

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldSkipProfile(Landroid/os/UserHandle;)Z
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    .line 694
    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private showTrustAllCaDialogIfNeeded()V
    .locals 6

    .line 802
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->isUserTabAndTrustAllCertMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 810
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 811
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 813
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    if-eqz v3, :cond_2

    .line 814
    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$3200(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v5, v5, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v5}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 815
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 819
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no cert is pending approval for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TrustedCredentialsSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 823
    :cond_4
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3300(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 705
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 708
    :try_start_0
    iget-object v2, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v2, v2, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :try_start_1
    iget-object v3, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v3, v3, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings;->access$800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    .line 710
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 713
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v4}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    .line 718
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    .line 719
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 720
    invoke-direct {v0, v9}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->shouldSkipProfile(Landroid/os/UserHandle;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    .line 723
    :cond_0
    iget-object v11, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v9

    .line 726
    iget-object v11, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v11, v11, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v11}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 727
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v9

    .line 728
    iget-object v11, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v11}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2700(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v9

    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 730
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v2

    return-object v0

    .line 732
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v8, v11

    .line 733
    invoke-virtual {v5, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v7, v4, :cond_7

    .line 736
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    .line 737
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 738
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Ljava/util/List;

    .line 739
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 740
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v2

    return-object v0

    .line 742
    :cond_3
    iget-object v11, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v11, v11, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v11}, Lcom/android/settings/TrustedCredentialsSettings;->access$2600(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/security/KeyChain$KeyChainConnection;

    .line 744
    invoke-direct {v0, v10}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->shouldSkipProfile(Landroid/os/UserHandle;)Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v14, :cond_6

    if-nez v11, :cond_4

    goto/16 :goto_4

    .line 749
    :cond_4
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v10

    .line 750
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 751
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_5

    .line 753
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    move-object/from16 v19, v3

    const/4 v3, 0x1

    .line 754
    invoke-interface {v10, v6, v3}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v16

    .line 756
    invoke-static/range {v16 .. v16}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v16

    .line 757
    new-instance v3, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move/from16 v20, v4

    iget-object v4, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v4}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object v4

    move-object/from16 v21, v5

    iget-object v5, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    .line 758
    invoke-static {v5}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v5

    const/16 v18, 0x0

    move/from16 v22, v11

    move-object v11, v3

    move/from16 v23, v12

    move-object v12, v10

    move-object/from16 v24, v10

    move-object v10, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v5

    move v5, v15

    move-object v15, v6

    move/from16 v17, v5

    invoke-direct/range {v11 .. v18}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;Lcom/android/settings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 757
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    add-int/lit8 v9, v9, 0x1

    .line 759
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v3, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v3, v11

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v11, v22, 0x1

    move-object v14, v4

    move v15, v5

    move-object v13, v10

    move-object/from16 v3, v19

    move/from16 v4, v20

    move-object/from16 v5, v21

    move/from16 v12, v23

    move-object/from16 v10, v24

    goto :goto_3

    :cond_5
    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object v10, v13

    move v5, v15

    .line 761
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 762
    invoke-virtual {v1, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move v5, v15

    .line 746
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v19

    move/from16 v4, v20

    move-object/from16 v5, v21

    goto/16 :goto_2

    .line 764
    :cond_7
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    .line 765
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "TrustedCredentialsSettings"

    const-string v2, "InterruptedException while loading aliases."

    .line 770
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0

    :catch_1
    move-exception v0

    const-string v1, "TrustedCredentialsSettings"

    const-string v2, "Remote exception while loading aliases."

    .line 767
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 678
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->doInBackground([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;)V"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 784
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 786
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$700(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 788
    :cond_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 789
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 790
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 792
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings;->access$2300(Lcom/android/settings/TrustedCredentialsSettings;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 793
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->showTrustAllCaDialogIfNeeded()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 678
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onPostExecute(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 700
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->this$1:Lcom/android/settings/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData;->access$900(Lcom/android/settings/TrustedCredentialsSettings$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    .line 701
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 702
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mContentView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    .line 775
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 776
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 777
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 780
    :cond_0
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 678
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
