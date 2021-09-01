.class public Lcom/android/settings/security/SecurityFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SecurityFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/security/SecurityFeatureProvider;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/android/settings/security/trustagent/TrustAgentManager;

    invoke-direct {v0}, Lcom/android/settings/security/trustagent/TrustAgentManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/settings/security/SecurityFeatureProviderImpl;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    return-object p0
.end method
