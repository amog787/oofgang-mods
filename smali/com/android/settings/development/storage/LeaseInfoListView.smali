.class public Lcom/android/settings/development/storage/LeaseInfoListView;
.super Landroid/app/ListActivity;
.source "LeaseInfoListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;

.field private mBlobInfo:Landroid/app/blob/BlobInfo;

.field private mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/storage/LeaseInfoListView;)Landroid/app/blob/BlobInfo;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/development/storage/LeaseInfoListView;)Landroid/view/LayoutInflater;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private getButtonOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 119
    new-instance v0, Lcom/android/settings/development/storage/-$$Lambda$LeaseInfoListView$CMUt1e-KJtW0KqtYKnvUHjRAN6E;

    invoke-direct {v0, p0}, Lcom/android/settings/development/storage/-$$Lambda$LeaseInfoListView$CMUt1e-KJtW0KqtYKnvUHjRAN6E;-><init>(Lcom/android/settings/development/storage/LeaseInfoListView;)V

    return-object v0
.end method

.method private getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 130
    new-instance v0, Lcom/android/settings/development/storage/-$$Lambda$LeaseInfoListView$A4QVig8RPjgXAHHThxcOTGf6rTI;

    invoke-direct {v0, p0}, Lcom/android/settings/development/storage/-$$Lambda$LeaseInfoListView$A4QVig8RPjgXAHHThxcOTGf6rTI;-><init>(Lcom/android/settings/development/storage/LeaseInfoListView;)V

    return-object v0
.end method

.method private getFooterView()Landroid/widget/Button;
    .locals 4

    .line 110
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    sget v1, Lcom/android/settings/R$string;->delete_blob_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/development/storage/LeaseInfoListView;->getButtonOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getHeaderView()Landroid/widget/LinearLayout;
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings/R$layout;->blob_list_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 96
    sget v2, Lcom/android/settings/R$id;->blob_label:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    sget v3, Lcom/android/settings/R$id;->blob_id:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 98
    sget v4, Lcom/android/settings/R$id;->blob_expiry:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 99
    sget v5, Lcom/android/settings/R$id;->blob_size:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 101
    iget-object v6, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {v6}, Landroid/app/blob/BlobInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    sget v2, Lcom/android/settings/R$string;->blob_id_text:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {v7}, Landroid/app/blob/BlobInfo;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0, v2, v6}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    .line 104
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {p0}, Landroid/app/blob/BlobInfo;->getSizeBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/settings/development/storage/SharedDataUtils;->formatSize(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private synthetic lambda$getButtonOnClickListener$0(Landroid/view/View;)V
    .locals 1

    .line 120
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->delete_blob_confirmation_text:I

    .line 121
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 122
    invoke-direct {p0}, Lcom/android/settings/development/storage/LeaseInfoListView;->getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    const v0, 0x104000a

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$getDialogOnClickListener$1(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 132
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    iget-object p2, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {p1, p2}, Landroid/app/blob/BlobStoreManager;->deleteBlob(Landroid/app/blob/BlobInfo;)V

    const/4 p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to delete blob: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LeaseInfoListView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setResult(I)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getButtonOnClickListener$0$LeaseInfoListView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/development/storage/LeaseInfoListView;->lambda$getButtonOnClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getDialogOnClickListener$1$LeaseInfoListView(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/storage/LeaseInfoListView;->lambda$getDialogOnClickListener$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iput-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mContext:Landroid/content/Context;

    .line 63
    const-class p1, Landroid/app/blob/BlobStoreManager;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobStoreManager;

    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobStoreManager:Landroid/app/blob/BlobStoreManager;

    .line 64
    const-class p1, Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    invoke-virtual {p0}, Landroid/app/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "BLOB_KEY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/blob/BlobInfo;

    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    .line 68
    new-instance p1, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;-><init>(Lcom/android/settings/development/storage/LeaseInfoListView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mAdapter:Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;

    .line 69
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error fetching leases for shared data: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mBlobInfo:Landroid/app/blob/BlobInfo;

    invoke-virtual {v0}, Landroid/app/blob/BlobInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LeaseInfoListView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView;->mAdapter:Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/development/storage/LeaseInfoListView;->getHeaderView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/development/storage/LeaseInfoListView;->getFooterView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setClickable(Z)V

    .line 80
    invoke-virtual {p0}, Landroid/app/ListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onNavigateUp()Z
    .locals 0

    .line 88
    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method
