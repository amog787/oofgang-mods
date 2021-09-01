.class Lcom/android/settings/UserCredentialsSettings$AliasLoader;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/settings/UserCredentialsSettings$Credential;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/UserCredentialsSettings;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings;)V

    return-void
.end method

.method private getCredentialsForUid(Landroid/security/KeyStore;I)Ljava/util/SortedMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "I)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 303
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 304
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_8

    aget-object v8, v4, v7

    .line 305
    iget-object v9, v8, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->prefix:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_7

    aget-object v12, v9, v11

    .line 306
    invoke-virtual {v1, v12, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_6

    aget-object v6, v13, v15

    .line 307
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move-object/from16 v16, v4

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_2

    const-string v0, "profile_key_name_encrypt_"

    .line 309
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "profile_key_name_decrypt_"

    .line 310
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "synthetic_password_"

    .line 314
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_3
    move-object/from16 v4, p0

    goto :goto_5

    .line 319
    :cond_2
    :try_start_0
    sget-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    if-ne v8, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p0

    .line 320
    :try_start_1
    invoke-direct {v4, v1, v0, v2}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->isAsymmetric(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_4

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-object/from16 v4, p0

    .line 327
    :cond_4
    invoke-interface {v3, v6}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-nez v0, :cond_5

    .line 329
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    invoke-direct {v0, v6, v2}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;I)V

    .line 330
    invoke-interface {v3, v6, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_5
    iget-object v0, v0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-virtual {v0, v8}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    .line 324
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine algorithm of key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserCredentialsSettings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, v16

    goto/16 :goto_2

    :cond_6
    move-object/from16 v16, v4

    move-object/from16 v4, p0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, v16

    goto/16 :goto_1

    :cond_7
    move-object/from16 v16, v4

    move-object/from16 v4, p0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_8
    return-object v3
.end method

.method private isAsymmetric(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 285
    new-instance p0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {p0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    move-object v5, p0

    .line 286
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    const p1, 0x10000002

    .line 293
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 298
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 299
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2

    .line 296
    :cond_2
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p1, "Key algorithm unknown"

    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_3
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    const-string p2, "Failed to obtain information about key"

    invoke-direct {p0, p2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-static {p1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/security/UnrecoverableKeyException;

    throw p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 260
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    .line 273
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x3e8

    .line 274
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    const/16 v2, 0x3f2

    .line 275
    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-direct {p0, p1, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCredentialsForUid(Landroid/security/KeyStore;I)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-direct {p0, p1, v0}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->getCredentialsForUid(Landroid/security/KeyStore;I)Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 260
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;)V"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 345
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 350
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/emptyview/EmptyPageView;

    .line 351
    invoke-virtual {v0}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->user_credential_none_installed:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 352
    invoke-virtual {v0}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyImageView()Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->op_empty:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    .line 359
    :goto_1
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;

    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->this$0:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
