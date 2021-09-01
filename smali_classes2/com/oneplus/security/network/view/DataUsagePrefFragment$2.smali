.class Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;
.super Ljava/lang/Object;
.source "DataUsagePrefFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/view/DataUsagePrefFragment;->updateMonthlyRemainingData(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

.field final synthetic val$total:J

.field final synthetic val$used:J


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/view/DataUsagePrefFragment;JJ)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    iput-wide p2, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;->val$total:J

    iput-wide p4, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;->val$used:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 292
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-static {v0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->access$300(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)Lcom/oneplus/security/network/view/HeaderPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-static {v0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->access$300(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)Lcom/oneplus/security/network/view/HeaderPreference;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-static {v0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->access$100(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)I

    move-result v2

    iget-wide v3, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;->val$total:J

    iget-wide v5, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;->val$used:J

    iget-object p0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$2;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    invoke-static {p0}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->access$400(Lcom/oneplus/security/network/view/DataUsagePrefFragment;)J

    move-result-wide v7

    invoke-virtual/range {v1 .. v8}, Lcom/oneplus/security/network/view/HeaderPreference;->updateData(IJJJ)V

    goto :goto_0

    :cond_0
    const-string p0, "DataUsagePrefFragment"

    const-string v0, "mDataUsagePreference is null"

    .line 295
    invoke-static {p0, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
