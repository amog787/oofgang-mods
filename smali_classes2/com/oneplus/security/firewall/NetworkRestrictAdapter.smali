.class public Lcom/oneplus/security/firewall/NetworkRestrictAdapter;
.super Landroid/widget/BaseAdapter;
.source "NetworkRestrictAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppUidItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field mSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mAppUidItemList:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$array;->firewall_rule_items:I

    sget v1, Lcom/android/settings/R$layout;->filter_spinner_text_right:I

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 48
    sget p0, Lcom/android/settings/R$layout;->spinnerlayout:I

    invoke-virtual {p1, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-void
.end method

.method private updateRule(Lcom/oneplus/security/firewall/AppUidItem;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    return-void

    :cond_0
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 134
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/firewall/NetworkRestrictManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->updateRules(Lcom/oneplus/security/firewall/AppUidItem;II)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mAppUidItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/oneplus/security/firewall/AppUidItem;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mAppUidItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/firewall/AppUidItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->getItem(I)Lcom/oneplus/security/firewall/AppUidItem;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mAppUidItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/firewall/AppUidItem;

    invoke-virtual {p0}, Lcom/oneplus/security/firewall/AppUidItem;->getAppUid()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 74
    new-instance p2, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/settings/R$layout;->network_restrict_item_view:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 76
    sget v1, Lcom/android/settings/R$id;->name:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 77
    sget v1, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 78
    sget v1, Lcom/android/settings/R$id;->setting:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p2, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;->setting:Landroid/widget/Spinner;

    .line 79
    iget-object v2, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 80
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 84
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->getItem(I)Lcom/oneplus/security/firewall/AppUidItem;

    move-result-object p1

    .line 85
    iget-object v1, p2, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/security/firewall/AppPkgItem;

    invoke-virtual {v2}, Lcom/oneplus/security/firewall/AppPkgItem;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p2, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->getApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/security/firewall/AppPkgItem;

    invoke-virtual {v2}, Lcom/oneplus/security/firewall/AppPkgItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->isDataEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->isWlanEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->isDataEnable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->isWlanEnable()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->isDataEnable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->isWlanEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    .line 99
    :goto_1
    iget-object v1, p2, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;->setting:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 100
    iget-object v0, p2, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;->setting:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p2, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$ViewHolder;->setting:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object p3
.end method

.method public getmAppUidItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mAppUidItemList:Ljava/util/List;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    instance-of v0, p1, Lcom/oneplus/security/firewall/AppUidItem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    check-cast p1, Lcom/oneplus/security/firewall/AppUidItem;

    .line 194
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 195
    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppUidItem;->getApps()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/security/firewall/AppPkgItem;

    invoke-virtual {p1}, Lcom/oneplus/security/firewall/AppPkgItem;->getPkgName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "showAppImmediatePkg"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ":settings:need_back_to_ranklist"

    .line 196
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    sget p0, Lcom/android/settings/R$string;->app_data_usage:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-string v1, "com.android.settings.DataUsageSummary"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/security/utils/Utils;->startSettingsAppFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 175
    instance-of p2, p1, Lcom/oneplus/security/firewall/AppUidItem;

    if-nez p2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    check-cast p1, Lcom/oneplus/security/firewall/AppUidItem;

    .line 179
    invoke-direct {p0, p1, p3}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->updateRule(Lcom/oneplus/security/firewall/AppUidItem;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppUidItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 139
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 140
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    new-instance p1, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$1;

    invoke-direct {p1, p0}, Lcom/oneplus/security/firewall/NetworkRestrictAdapter$1;-><init>(Lcom/oneplus/security/firewall/NetworkRestrictAdapter;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    iput-object v0, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mAppUidItemList:Ljava/util/List;

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/oneplus/security/firewall/NetworkRestrictAdapter;->mAppUidItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 169
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
