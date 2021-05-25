.class public Lcom/android/server/cjf/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final cno:[I

.field private static final kth:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/server/cjf/zta;",
            ">;"
        }
    .end annotation
.end field

.field private static final rtg:Ljava/lang/String; = "OnePlusEsportApisController"

.field private static final ssp:Z


# instance fields
.field private sis:Landroid/util/BoostFramework;

.field private tsu:Lcom/android/server/net/NetworkPolicyManagerService;

.field private you:Z

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/cjf/zta;->ssp:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/cjf/zta;->cno:[I

    new-instance v0, Lcom/android/server/cjf/zta$zta;

    invoke-direct {v0}, Lcom/android/server/cjf/zta$zta;-><init>()V

    sput-object v0, Lcom/android/server/cjf/zta;->kth:Landroid/util/Singleton;

    return-void

    :array_0
    .array-data 4
        0x42c14000    # 96.625f
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cjf/zta;->zta:Z

    iput-boolean v0, p0, Lcom/android/server/cjf/zta;->you:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cjf/zta;->sis:Landroid/util/BoostFramework;

    iput-object v0, p0, Lcom/android/server/cjf/zta;->tsu:Lcom/android/server/net/NetworkPolicyManagerService;

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/cjf/zta;->sis:Landroid/util/BoostFramework;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cjf/zta$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cjf/zta;-><init>()V

    return-void
.end method

.method public static you()Lcom/android/server/cjf/zta;
    .locals 1

    sget-object v0, Lcom/android/server/cjf/zta;->kth:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cjf/zta;

    return-object v0
.end method


# virtual methods
.method public rtg(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/cjf/zta;->ssp:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRestrictBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInEs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/cjf/zta;->zta:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusEsportApisController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/cjf/zta;->zta:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/cjf/zta;->zta(Z)V

    return-void
.end method

.method public sis(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "OnePlusEsportApisController"

    const-string p1, "networkPolicy is NULL!!!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/cjf/zta;->tsu:Lcom/android/server/net/NetworkPolicyManagerService;

    return-void
.end method

.method public tsu(Z)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/cjf/zta;->you:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_5

    const/4 v0, -0x1

    const-string v3, "OnePlusEsportApisController"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/cjf/zta;->sis:Landroid/util/BoostFramework;

    sget-object v4, Lcom/android/server/cjf/zta;->cno:[I

    invoke-virtual {p1, v2, v4}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result p1

    if-eq p1, v0, :cond_1

    sget-boolean p1, Lcom/android/server/cjf/zta;->ssp:Z

    if-eqz p1, :cond_0

    const-string p1, "success acquire KEEP_ALIVE"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/cjf/zta;->you:Z

    goto :goto_1

    :cond_1
    const-string p0, "KEEP_ALIVE failed!"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/cjf/zta;->sis:Landroid/util/BoostFramework;

    invoke-virtual {p1}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result p1

    if-ne p1, v0, :cond_4

    sget-boolean p1, Lcom/android/server/cjf/zta;->ssp:Z

    if-eqz p1, :cond_3

    const-string p1, "success release KEEP_ALIVE"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/cjf/zta;->you:Z

    goto :goto_1

    :cond_4
    const-string p0, "KEEP_ALIVE release failed"

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method public zta(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cjf/zta;->zta:Z

    iget-object p0, p0, Lcom/android/server/cjf/zta;->tsu:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundByEsport(Z)V

    :cond_0
    return-void
.end method
