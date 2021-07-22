.class public Lcom/android/settings/development/storage/BlobInfoListView;
.super Landroid/app/ListActivity;
.source "BlobInfoListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;

.field private mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/storage/BlobInfoListView;)Landroid/view/LayoutInflater;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private getDialogOnClickListener(Landroid/app/blob/BlobInfo;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 114
    new-instance v0, Lcom/android/settings/development/storage/-$$Lambda$BlobInfoListView$mNRtXv7UcK7Swcmvco9OQUcRSQ8;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/development/storage/-$$Lambda$BlobInfoListView$mNRtXv7UcK7Swcmvco9OQUcRSQ8;-><init>(Lcom/android/settings/development/storage/BlobInfoListView;Landroid/app/blob/BlobInfo;)V

    return-object v0
.end method

.method private synthetic lambda$getDialogOnClickListener$0(Landroid/app/blob/BlobInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 116
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    invoke-virtual {p2, p1}, Landroid/app/blob/BlobStoreManager;->deleteBlob(Landroid/app/blob/BlobInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to delete blob: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BlobInfoListView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget p1, Lcom/android/settings/R$string;->shared_data_delete_failure_text:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 122
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/development/storage/BlobInfoListView;->queryBlobsAndUpdateList()V

    return-void
.end method

.method private queryBlobsAndUpdateList()V
    .locals 3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mAdapter:Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;

    iget-object v1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/app/blob/BlobStoreManager;->queryBlobsForUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;->updateList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to fetch blobs for current user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlobInfoListView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget v0, Lcom/android/settings/R$string;->shared_data_query_failure_text:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    :goto_0
    return-void
.end method

.method private showDeleteBlobDialog(Landroid/app/blob/BlobInfo;)V
    .locals 2

    .line 105
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->shared_data_no_accessors_dialog_text:I

    .line 106
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/development/storage/BlobInfoListView;->getDialogOnClickListener(Landroid/app/blob/BlobInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    const p1, 0x104000a

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    const/4 p1, 0x0

    .line 108
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getDialogOnClickListener$0$BlobInfoListView(Landroid/app/blob/BlobInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/storage/BlobInfoListView;->lambda$getDialogOnClickListener$0(Landroid/app/blob/BlobInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1fac

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 86
    sget p1, Lcom/android/settings/R$string;->shared_data_delete_failure_text:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iput-object p0, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mContext:Landroid/content/Context;

    .line 57
    const-class p1, Landroid/app/blob/BlobStoreManager;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobStoreManager;

    iput-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    .line 58
    const-class p1, Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    new-instance p1, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;-><init>(Lcom/android/settings/development/storage/BlobInfoListView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mAdapter:Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/ListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/android/settings/development/storage/BlobInfoListView;->mAdapter:Lcom/android/settings/development/storage/BlobInfoListView$BlobListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobInfo;

    .line 95
    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getLeases()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/development/storage/BlobInfoListView;->showDeleteBlobDialog(Landroid/app/blob/BlobInfo;)V

    goto :goto_0

    .line 98
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/android/settings/development/storage/LeaseInfoListView;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "BLOB_KEY"

    .line 99
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x1fac

    .line 100
    invoke-virtual {p0, p2, p1}, Landroid/app/ListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public onNavigateUp()Z
    .locals 0

    .line 71
    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onResume()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/development/storage/BlobInfoListView;->queryBlobsAndUpdateList()V

    return-void
.end method
