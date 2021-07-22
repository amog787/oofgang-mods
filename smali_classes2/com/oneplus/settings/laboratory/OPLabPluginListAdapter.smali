.class public Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPLabPluginListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflate:Landroid/view/LayoutInflater;

.field private mPluginData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/laboratory/OPLabPluginModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/laboratory/OPLabPluginModel;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mInflate:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/oneplus/settings/laboratory/OPLabPluginModel;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->getItem(I)Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 53
    new-instance p2, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;-><init>(Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$1;)V

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mInflate:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings/R$layout;->op_lab_feature_plugin_item:I

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 55
    sget v0, Lcom/android/settings/R$id;->feature_imageview:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;->featureImage:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/android/settings/R$id;->feature_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;->featureTitle:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 61
    :goto_0
    iget-object v0, p2, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;->featureTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-virtual {v1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, p2, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;->featureImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->geFeatureIconId()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p3
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/laboratory/OPLabPluginModel;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->mPluginData:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
