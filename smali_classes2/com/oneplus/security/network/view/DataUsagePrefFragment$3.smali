.class Lcom/oneplus/security/network/view/DataUsagePrefFragment$3;
.super Ljava/lang/Object;
.source "DataUsagePrefFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/security/network/view/DataUsagePrefFragment;->animateUpdateMonthlyRemainingData(JJ)V
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

    .line 307
    iput-object p1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$3;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    iput-wide p2, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$3;->val$total:J

    iput-wide p4, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$3;->val$used:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 310
    iget-object v0, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$3;->this$0:Lcom/oneplus/security/network/view/DataUsagePrefFragment;

    iget-wide v1, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$3;->val$total:J

    iget-wide v3, p0, Lcom/oneplus/security/network/view/DataUsagePrefFragment$3;->val$used:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/security/network/view/DataUsagePrefFragment;->updateMonthlyRemainingData(JJ)V

    return-void
.end method
