.class public Lcom/oneplus/server/you;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final sis:I = 0x1388

.field private static you:Lcom/oneplus/core/oimc/OIMCServiceManager; = null

.field private static final zta:Ljava/lang/String; = "OIMCManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {v0}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    sput-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bio(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 1

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/core/oimc/OIMCServiceManager;->runRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    return-void
.end method

.method public static cno(Lcom/oneplus/core/oimc/OIMCRule;I)V
    .locals 1

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V

    return-void
.end method

.method public static igw(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v2

    const-string v3, "OIMCManager"

    if-nez v2, :cond_1

    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x1388

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    const-string v2, "oimc service boot failed!!!"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms for oimc service!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-static {v0, p0}, Lcom/oneplus/server/sis;->you(Lcom/oneplus/core/oimc/IOIMCServiceManager;Landroid/content/Context;)V

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-static {v0, p0}, Lcom/oneplus/server/sis;->sis(Lcom/oneplus/core/oimc/IOIMCServiceManager;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/oneplus/server/sis;->tsu(Landroid/content/Context;)V

    return-void
.end method

.method public static kth(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 1

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/core/oimc/OIMCServiceManager;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    return-void
.end method

.method public static rtg(Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    return-void
.end method

.method public static sis(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ssp(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
    .locals 1

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    return-void
.end method

.method public static tsu(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static wtn(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/core/oimc/OIMCServiceManager;->unRegisterRemoteAction(Ljava/lang/String;)V

    return-void
.end method

.method public static you(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 1

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/core/oimc/OIMCServiceManager;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    return-void
.end method

.method public static zta(Lcom/oneplus/core/oimc/OIMCRule;I)V
    .locals 1

    sget-object v0, Lcom/oneplus/server/you;->you:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V

    return-void
.end method
