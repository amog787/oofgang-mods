.class Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$2;
.super Ljava/lang/Object;
.source "TrafficUsageSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->refreshDataTotalPre(J)V
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

    .line 375
    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$2;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    iput-wide p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$2;->val$totalByte:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 378
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$2;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    iget-wide v1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$2;->val$totalByte:J

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->checkDataTotalValue(J)J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 379
    invoke-static {v2, v0, v1, v3, v4}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$2;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$200(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
