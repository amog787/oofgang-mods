.class Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OPSwitchRecordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/security/OPSwitchRecordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchRecordAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSwitchRecordInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;->mSwitchRecordInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;->mSwitchRecordInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 197
    check-cast p1, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;->onBindViewHolder(Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;I)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;->mSwitchRecordInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;

    .line 221
    invoke-static {p1}, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;->access$500(Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->op_switch_record_info:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;->getModel()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/settings/R$layout;->op_switch_record_item:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 215
    new-instance p1, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setSwitchRecordInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;",
            ">;)V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;->mSwitchRecordInfos:Ljava/util/ArrayList;

    return-void
.end method
