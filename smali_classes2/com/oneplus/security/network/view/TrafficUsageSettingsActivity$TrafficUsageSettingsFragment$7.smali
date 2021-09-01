.class Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;
.super Ljava/lang/Object;
.source "TrafficUsageSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->showConfirmSetDataLimitDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

.field final synthetic val$totalByte:J


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;J)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    iput-wide p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->val$totalByte:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const-string p1, "data_limit"

    const/4 p2, 0x1

    .line 536
    invoke-static {p1, p2}, Lcom/oneplus/security/utils/Utils;->sendAppTracker(Ljava/lang/String;I)V

    .line 537
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    iget-wide v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->val$totalByte:J

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->checkDataTotalValue(J)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long v4, v0, v2

    .line 538
    div-long/2addr v4, v2

    .line 539
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {p1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$000(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v6, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {v6}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$500(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)I

    move-result v6

    invoke-static {p1, v4, v5, v6}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setDataLimitValue(Landroid/content/Context;JI)V

    .line 540
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {p1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$000(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v4, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {v4}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$500(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)I

    move-result v4

    invoke-static {p1, p2, v4}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setDataTotalState(Landroid/content/Context;ZI)V

    .line 542
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {p1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$000(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object v4, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {v4}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$500(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)I

    move-result v4

    invoke-static {p1, v4}, Lcom/oneplus/security/SecureService;->startServiceForDataUsage(Landroid/content/Context;I)V

    .line 543
    div-long v2, v0, v2

    long-to-int p1, v2

    .line 544
    iget-object v2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {v2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$700(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {v3}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$500(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)I

    move-result v3

    int-to-long v4, p1

    invoke-interface {v2, v3, v4, v5}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->setPackageTotalUsage(IJ)V

    .line 545
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->refreshDataTotalPre(J)V

    .line 546
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {p1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$1000(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 547
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {p1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$000(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->startService(Landroid/content/Context;)V

    .line 552
    iget-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {p1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$000(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$7;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$500(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->resetTrafficDialogAlertedState(Landroid/content/Context;I)V

    return-void
.end method
