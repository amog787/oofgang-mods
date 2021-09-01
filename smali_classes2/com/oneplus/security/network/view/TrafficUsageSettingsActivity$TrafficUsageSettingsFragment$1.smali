.class Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$1;
.super Ljava/lang/Object;
.source "TrafficUsageSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->refreshAccountDayPre(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

.field final synthetic val$accountDay:I


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;I)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$1;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    iput p2, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$1;->val$accountDay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$1;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {v0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$000(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->traffic_reset_day_summary:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$1;->val$accountDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$1;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    sget v5, Lcom/android/settings/R$string;->traffic_day_dimension:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object p0, p0, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment$1;->this$0:Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;

    invoke-static {p0}, Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;->access$100(Lcom/oneplus/security/network/view/TrafficUsageSettingsActivity$TrafficUsageSettingsFragment;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
