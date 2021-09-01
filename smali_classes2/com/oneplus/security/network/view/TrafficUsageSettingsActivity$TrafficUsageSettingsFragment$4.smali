.class Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;
.super Ljava/lang/Object;
.source "TrafficUsageSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->refreshDataWarnPre()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

.field final synthetic val$tenPercentPkgLeftAlert:Z


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;Z)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    iput-boolean p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;->val$tenPercentPkgLeftAlert:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {v0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$400(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;->val$tenPercentPkgLeftAlert:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 416
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {v0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$000(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {v1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$500(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)I

    move-result v1

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnValue(Landroid/content/Context;IJ)J

    move-result-wide v0

    .line 417
    iget-object v2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-virtual {v2, v0, v1}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->checkDataWarnValue(J)J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 418
    invoke-static {v2, v0, v1, v3, v3}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$4;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$600(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
