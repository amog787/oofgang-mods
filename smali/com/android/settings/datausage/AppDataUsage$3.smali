.class Lcom/android/settings/datausage/AppDataUsage$3;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;>;"
        }
    .end annotation

    .line 600
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    .line 601
    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->access$000(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 602
    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->setRetrieveDetail(Z)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;

    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object p2, p2, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 603
    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->setNetworkTemplate(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;

    .line 604
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->access$100(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object p2

    iget p2, p2, Lcom/android/settingslib/AppItem;->category:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 605
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$100(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$100(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->addUid(I)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 609
    :cond_0
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->access$100(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object p2

    iget p2, p2, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->addUid(I)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;

    .line 611
    :cond_1
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->access$200(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 612
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsage;->access$200(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->setCycles(Ljava/util/ArrayList;)Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;

    .line 614
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->build()Lcom/android/settingslib/net/NetworkCycleDataLoader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 597
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage$3;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;)V"
        }
    .end annotation

    .line 620
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->access$302(Lcom/android/settings/datausage/AppDataUsage;Ljava/util/List;)Ljava/util/List;

    .line 621
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->access$400(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Ljava/util/List;)Z

    .line 622
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->access$500(Lcom/android/settings/datausage/AppDataUsage;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-lez p1, :cond_3

    .line 623
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 626
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/net/NetworkCycleDataForUid;

    .line 627
    invoke-virtual {v2}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v4}, Lcom/android/settings/datausage/AppDataUsage;->access$500(Lcom/android/settings/datausage/AppDataUsage;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 633
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->access$600(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/SpinnerPreference;->setSelection(I)V

    .line 635
    :cond_2
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsage;->bindData(I)V

    goto :goto_2

    .line 637
    :cond_3
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$3;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsage;->bindData(I)V

    :goto_2
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
