.class Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OPSwitchRecordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/security/OPSwitchRecordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchRecordViewHolder"
.end annotation


# instance fields
.field private mRecordItemView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 192
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 193
    sget v0, Lcom/android/settings/R$id;->record_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;->mRecordItemView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordViewHolder;->mRecordItemView:Landroid/widget/TextView;

    return-object p0
.end method
