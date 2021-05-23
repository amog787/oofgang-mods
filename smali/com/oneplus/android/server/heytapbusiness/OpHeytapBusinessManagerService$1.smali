.class Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;
.super Lcom/oneplus/android/heytapbusiness/IOpHeytapBusinessManager$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-direct {p0}, Lcom/oneplus/android/heytapbusiness/IOpHeytapBusinessManager$Stub;-><init>()V

    return-void
.end method

.method private enforceCallerInstantPlatform(ILjava/lang/String;)V
    .locals 2

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    const-string v0, "com.nearme.instant.platform"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expected caller is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpHeytapBusiness"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->zta(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const-string v1, "addFastAppThirdLogin"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->enforceCallerInstantPlatform(ILjava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->cno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addFastAppWechatPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->zta(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const-string v1, "addFastAppWechatPay"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->enforceCallerInstantPlatform(ILjava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->cno(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;[Ljava/lang/String;)V

    return-void
.end method

.method public addMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->zta(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const-string v1, "addMiniProgramShare"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->enforceCallerInstantPlatform(ILjava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->bio()Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->cno(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    array-length p1, p3

    const-string v0, "dumpsys heytapbusiness"

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->bio()Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->you(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->you(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->you(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_1
    iget-object p1, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-static {p1}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->you(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-static {p0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->sis(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oneplus/android/server/heytapbusiness/sis;->sis(ILjava/lang/String;)Lcom/oneplus/android/server/heytapbusiness/sis;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/heytapbusiness/sis;->zta(Ljava/io/PrintWriter;)V

    goto/16 :goto_7

    :cond_0
    array-length p1, p3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    const/4 p1, 0x0

    aget-object p1, p3, p1

    const-string p3, "-a"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "-h"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p0, "Heytap business manager dump options:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [-h] [cmd] ..."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    -h: print this help"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  cmd may be one of:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    s(or share): print settings of sharing"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    l(or login): print settings of login"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    wp(or wechatpay): print settings of wechat pay"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    c(or configuration): print settings of configuration"

    :goto_2
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    const-string p3, "s"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a

    const-string p3, "share"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto/16 :goto_6

    :cond_3
    const-string p3, "l"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    const-string p3, "login"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_5

    :cond_4
    const-string p3, "wp"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    const-string p3, "wechatpay"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    const-string p3, "c"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "configuration"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown cmd: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; use -h for help"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_7
    :goto_3
    const-string p1, "dumpsys heytapbusiness configuration"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    :goto_4
    const-string p0, "dumpsys heytapbusiness wechatpay"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->you(Ljava/io/PrintWriter;)V

    goto :goto_7

    :cond_9
    :goto_5
    const-string p0, "dumpsys heytapbusiness login"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->you(Ljava/io/PrintWriter;)V

    goto :goto_7

    :cond_a
    :goto_6
    const-string p0, "dumpsys heytapbusiness share"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->bio()Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->you(Ljava/io/PrintWriter;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public getAppInfoCustomizations()Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Lcom/oneplus/android/heytapbusiness/appinfocustomization/AppInfoCustomization;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->you(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-static {p0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->sis(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oneplus/android/server/heytapbusiness/sis;->sis(ILjava/lang/String;)Lcom/oneplus/android/server/heytapbusiness/sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/heytapbusiness/sis;->you()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public removeFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->zta(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const-string v1, "removeFastAppThirdLogin"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->enforceCallerInstantPlatform(ILjava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/oneplus/android/server/heytapbusiness/tsu/you/zta;->bio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public removeFastAppWechatPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->zta(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const-string v1, "removeFastAppWechatPay"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->enforceCallerInstantPlatform(ILjava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->kth()Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/oneplus/android/server/heytapbusiness/tsu/tsu/zta;->bio(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;[Ljava/lang/String;)V

    return-void
.end method

.method public removeMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->this$0:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-static {v0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->zta(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const-string v1, "removeMiniProgramShare"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService$1;->enforceCallerInstantPlatform(ILjava/lang/String;)V

    invoke-static {}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->bio()Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/oneplus/android/server/heytapbusiness/tsu/sis/zta;->wtn(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;[Ljava/lang/String;)V

    return-void
.end method
