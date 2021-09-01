.class Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LeaseInfoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/storage/LeaseInfoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeaseListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/app/blob/LeaseInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/development/storage/LeaseInfoListView;


# direct methods
.method constructor <init>(Lcom/android/settings/development/storage/LeaseInfoListView;Landroid/content/Context;)V
    .locals 1

    .line 145
    iput-object p1, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 148
    iput-object p2, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {p1}, Lcom/android/settings/development/storage/LeaseInfoListView;->access$000(Lcom/android/settings/development/storage/LeaseInfoListView;)Landroid/app/blob/BlobInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/blob/BlobInfo;->getLeases()Ljava/util/List;

    move-result-object p1

    .line 150
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method private getDescriptionString(Landroid/app/blob/LeaseInfo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getDescriptionResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    :goto_0
    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    sget p1, Lcom/android/settings/R$string;->accessor_no_description_text:I

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 184
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_1
    return-object p1

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    sget v0, Lcom/android/settings/R$string;->accessor_no_description_text:I

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    .line 191
    :cond_3
    throw p1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 158
    iget-object p3, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    .line 159
    invoke-static {p3}, Lcom/android/settings/development/storage/LeaseInfoListView;->access$100(Lcom/android/settings/development/storage/LeaseInfoListView;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 158
    invoke-static {p3, p2}, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/storage/LeaseInfoViewHolder;

    move-result-object p2

    .line 160
    iget-object p3, p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->rootView:Landroid/view/View;

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/blob/LeaseInfo;

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    iget-object v1, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x1080093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 171
    :goto_0
    iget-object v2, p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v1, p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leasePackageName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leaseDescription:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->getDescriptionString(Landroid/app/blob/LeaseInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p2, p2, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leaseExpiry:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/development/storage/LeaseInfoListView$LeaseListAdapter;->this$0:Lcom/android/settings/development/storage/LeaseInfoListView;

    sget v1, Lcom/android/settings/R$string;->accessor_expires_text:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 175
    invoke-virtual {p1}, Landroid/app/blob/LeaseInfo;->getExpiryTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settings/development/storage/SharedDataUtils;->formatTime(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    .line 174
    invoke-virtual {p0, v1, v2}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
