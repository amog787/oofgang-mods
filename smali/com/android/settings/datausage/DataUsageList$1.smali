.class Lcom/android/settings/datausage/DataUsageList$1;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 222
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectedItem()Ljava/lang/Object;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList$1;->this$0:Lcom/android/settings/datausage/DataUsageList;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
