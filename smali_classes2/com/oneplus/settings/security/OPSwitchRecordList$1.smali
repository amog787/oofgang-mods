.class Lcom/oneplus/settings/security/OPSwitchRecordList$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "OPSwitchRecordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/security/OPSwitchRecordList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/security/OPSwitchRecordList;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$1;->this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$1;->state:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 106
    iput p2, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$1;->state:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 111
    iget p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$1;->state:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    if-eqz p2, :cond_0

    .line 112
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$1;->this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;

    invoke-static {p0}, Lcom/oneplus/settings/security/OPSwitchRecordList;->access$000(Lcom/oneplus/settings/security/OPSwitchRecordList;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_0
    return-void
.end method
