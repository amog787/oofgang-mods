.class Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectSubscriptionAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
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
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mSubscriptions:Ljava/util/List;

    .line 139
    iput-object p1, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isMdnProvisioned(Ljava/lang/String;)Z
    .locals 0

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "[\\D0]+"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->getItem(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_1

    .line 164
    iget-object p2, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 165
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 167
    :cond_0
    iget-object p2, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->select_account_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 169
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->getItem(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 171
    sget p3, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 172
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    sget v1, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, ""

    if-nez p1, :cond_2

    .line 176
    sget p1, Lcom/android/settings/R$string;->sim_calls_ask_first_prefs_title:I

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$drawable;->ic_feedback_24dp:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object p0, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mContext:Landroid/content/Context;

    const p1, 0x1010038

    .line 180
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 179
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->isMdnProvisioned(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object p0, p0, Lcom/android/settings/sim/SimListDialogFragment$SelectSubscriptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object p2
.end method
