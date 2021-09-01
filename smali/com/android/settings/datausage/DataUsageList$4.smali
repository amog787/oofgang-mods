.class Lcom/android/settings/datausage/DataUsageList$4;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 632
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageList;->access$000(Lcom/android/settings/datausage/DataUsageList;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget p2, p2, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-static {p1, p2}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object p1

    .line 633
    new-instance v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->access$100(Lcom/android/settings/datausage/DataUsageList;)Landroid/content/Context;

    move-result-object v1

    const/4 p2, 0x0

    aget-wide v2, p1, p2

    const/4 p2, 0x1

    aget-wide v4, p1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    .line 643
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageList;->access$300(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p2}, Lcom/android/settings/datausage/DataUsageList;->access$200(Lcom/android/settings/datausage/DataUsageList;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/net/NetworkCycleChartData;

    invoke-virtual {p1, p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkCycleData(Lcom/android/settingslib/net/NetworkCycleChartData;)V

    .line 645
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageList;->access$400(Lcom/android/settings/datausage/DataUsageList;)V

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
