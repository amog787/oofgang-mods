.class Lcom/oneplus/settings/security/OPSwitchRecordList$2;
.super Landroid/database/ContentObserver;
.source "OPSwitchRecordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/security/OPSwitchRecordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/security/OPSwitchRecordList;Landroid/os/Handler;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$2;->this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 160
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 161
    iget-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$2;->this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;

    invoke-static {p1}, Lcom/oneplus/settings/security/OPSwitchRecordList;->access$100(Lcom/oneplus/settings/security/OPSwitchRecordList;)V

    .line 162
    iget-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$2;->this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;

    invoke-static {p1}, Lcom/oneplus/settings/security/OPSwitchRecordList;->access$200(Lcom/oneplus/settings/security/OPSwitchRecordList;)V

    .line 163
    iget-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$2;->this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;

    invoke-static {p1}, Lcom/oneplus/settings/security/OPSwitchRecordList;->access$300(Lcom/oneplus/settings/security/OPSwitchRecordList;)Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$2;->this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;

    invoke-static {p1}, Lcom/oneplus/settings/security/OPSwitchRecordList;->access$300(Lcom/oneplus/settings/security/OPSwitchRecordList;)Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$2;->this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;

    invoke-static {p2}, Lcom/oneplus/settings/security/OPSwitchRecordList;->access$400(Lcom/oneplus/settings/security/OPSwitchRecordList;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;->setSwitchRecordInfos(Ljava/util/ArrayList;)V

    .line 165
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$2;->this$0:Lcom/oneplus/settings/security/OPSwitchRecordList;

    invoke-static {p0}, Lcom/oneplus/settings/security/OPSwitchRecordList;->access$300(Lcom/oneplus/settings/security/OPSwitchRecordList;)Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
