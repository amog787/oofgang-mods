.class public Lcom/android/server/am/oif;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static cno:Ljava/lang/reflect/Method;

.field protected static rtg:Ljava/lang/reflect/Method;

.field protected static sis:Ljava/lang/reflect/Method;

.field protected static ssp:Ljava/lang/reflect/Method;

.field protected static tsu:Ljava/lang/reflect/Method;

.field protected static you:Ljava/lang/reflect/Method;

.field protected static zta:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zta()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "com.android.server.job.JobServiceContext"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.android.server.job.controllers.JobStatus"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "restrictJob"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/oif;->zta:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Class;

    const-string v3, "getSourceUid"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/oif;->you:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Class;

    const-string v3, "getSourcePackageName"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/oif;->sis:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Class;

    const-string v3, "getTag"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/oif;->tsu:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Class;

    const-string v3, "getServiceComponent"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/oif;->rtg:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Class;

    const-string v2, "getJob"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/oif;->ssp:Ljava/lang/reflect/Method;

    return-void
.end method
