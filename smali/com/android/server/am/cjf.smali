.class public Lcom/android/server/am/cjf;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bio:I = 0x1

.field private static final bvj:Ljava/lang/String; = "setted_pkg_list"

.field private static final cno:Ljava/lang/String; = "doze_mode_policy"

.field private static final dma:I = 0x2

.field private static final gck:I = 0x1

.field private static final gwm:Ljava/lang/String; = "\\|"

.field private static final ibl:Ljava/lang/String; = "|"

.field private static final igw:I = 0x0

.field private static final kth:Ljava/lang/String; = "oneplus_opbf_switch"

.field private static oif:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static qbh:Lcom/android/server/am/cjf; = null

.field private static final rtg:I = 0x0

.field private static sis:Lcom/android/server/vdb; = null

.field private static final ssp:I = 0x1

.field private static tsu:Landroid/os/IDeviceIdleController; = null

.field private static final wtn:I = 0x0

.field public static final you:Z

.field private static ywr:Landroid/content/Context; = null

.field public static final zta:Ljava/lang/String; = "OnePlusAppControlModeService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/cjf;->you:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/cjf;->tsu:Landroid/os/IDeviceIdleController;

    sput-object v0, Lcom/android/server/am/cjf;->ywr:Landroid/content/Context;

    sput-object v0, Lcom/android/server/am/cjf;->qbh:Lcom/android/server/am/cjf;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/cjf;->oif:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/server/am/cjf;->ywr:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/am/cjf;->kth()V

    return-void
.end method

.method private static bio(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vdb;

    sput-object v0, Lcom/android/server/am/cjf;->sis:Lcom/android/server/vdb;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/vdb;->ugm(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "OnePlusAppControlModeService"

    const-string v0, "OpSmartPowerControl does not exist!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static cno()Lcom/android/server/vdb;
    .locals 1

    sget-object v0, Lcom/android/server/am/cjf;->sis:Lcom/android/server/vdb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vdb;

    sput-object v0, Lcom/android/server/am/cjf;->sis:Lcom/android/server/vdb;

    return-object v0
.end method

.method public static dma(Ljava/lang/String;II)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->you:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#setAppControlMode # packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OnePlusAppControlModeService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_7

    const/4 p1, 0x1

    new-array v2, p1, [I

    const/16 v3, 0x4c

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    const/4 v3, -0x2

    if-eqz v2, :cond_4

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    invoke-static {}, Lcom/android/server/am/cjf;->cno()Lcom/android/server/vdb;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/android/server/vdb;->bud(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_2
    if-ne p2, p1, :cond_3

    invoke-static {}, Lcom/android/server/am/cjf;->cno()Lcom/android/server/vdb;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/android/server/vdb;->bud(Ljava/lang/String;I)Z

    move-result p0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/am/cjf;->cno()Lcom/android/server/vdb;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/android/server/vdb;->bud(Ljava/lang/String;I)Z

    move-result p0

    :goto_0
    if-nez p0, :cond_7

    return v3

    :cond_4
    if-nez p2, :cond_5

    :try_start_0
    invoke-static {}, Lcom/android/server/am/cjf;->rtg()Landroid/os/IDeviceIdleController;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v3

    goto :goto_2

    :cond_5
    if-ne p2, p1, :cond_6

    :try_start_1
    invoke-static {}, Lcom/android/server/am/cjf;->rtg()Landroid/os/IDeviceIdleController;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v1, v0

    :cond_6
    :goto_2
    invoke-static {p0}, Lcom/android/server/am/cjf;->oif(Ljava/lang/String;)V

    move v0, v1

    :cond_7
    return v0
.end method

.method private gck(Ljava/lang/String;)V
    .locals 2

    const-string p0, "\\|"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/cjf;->oif:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/android/server/am/cjf;->oif:Ljava/util/Set;

    aget-object v1, p0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static igw(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/cjf;->oif:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private kth()V
    .locals 2

    sget-object v0, Lcom/android/server/am/cjf;->ywr:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "setted_pkg_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/cjf;->gck(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static oif(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/am/cjf;->oif:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/cjf;->oif:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/am/cjf;->qbh()V

    :cond_0
    return-void
.end method

.method private static qbh()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/android/server/am/cjf;->oif:Ljava/util/Set;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/am/cjf;->oif:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/cjf;->oif:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/am/cjf;->ywr:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setted_pkg_list"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateListToSettingSecure e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusAppControlModeService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static rtg()Landroid/os/IDeviceIdleController;
    .locals 1

    sget-object v0, Lcom/android/server/am/cjf;->tsu:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/cjf;->tsu:Landroid/os/IDeviceIdleController;

    return-object v0
.end method

.method public static sis(Ljava/lang/String;I)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    new-array v2, v0, [I

    const/16 v3, 0x4c

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/server/am/cjf;->bio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/cjf;->wtn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    sget-boolean v1, Lcom/android/server/am/cjf;->you:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#getAppControlMode # packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", mode="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",ret="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusAppControlModeService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public static final ssp(Landroid/content/Context;)Lcom/android/server/am/cjf;
    .locals 1

    sget-object v0, Lcom/android/server/am/cjf;->qbh:Lcom/android/server/am/cjf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/cjf;

    invoke-direct {v0, p0}, Lcom/android/server/am/cjf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/cjf;->qbh:Lcom/android/server/am/cjf;

    :cond_0
    sget-object p0, Lcom/android/server/am/cjf;->qbh:Lcom/android/server/am/cjf;

    return-object p0
.end method

.method public static tsu(Landroid/content/Context;I)I
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->you:Z

    const-string v2, "OnePlusAppControlModeService"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppControl#getAppControlState # mode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "doze_mode_policy"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/android/server/am/cjf;->you()Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-eq v1, v0, :cond_3

    invoke-static {p0, p1, v4}, Lcom/android/server/am/cjf;->ywr(Landroid/content/Context;II)I

    move-result p0

    if-gez p0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppControl# setAppControlState error # result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",mode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",on="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    :cond_4
    :goto_1
    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    if-ne p1, v4, :cond_7

    invoke-static {}, Lcom/android/server/am/cjf;->you()Z

    move-result v1

    goto :goto_2

    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_5

    goto :goto_1

    :cond_8
    :goto_2
    return v1
.end method

.method private static wtn(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vdb;

    sput-object v0, Lcom/android/server/am/cjf;->sis:Lcom/android/server/vdb;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/vdb;->oxb(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "OnePlusAppControlModeService"

    const-string v0, "OpSmartPowerControl does not exist!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static you()Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    return v1
.end method

.method public static ywr(Landroid/content/Context;II)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->you:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppControl#setAppControlState # mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OnePlusAppControlModeService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x2

    const-string v2, "oneplus_opbf_switch"

    const-string v3, "doze_mode_policy"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_4

    if-ne p2, v6, :cond_2

    invoke-static {v4}, Lcom/android/server/am/lqr;->hmo(Landroid/content/Context;)Lcom/android/server/am/lqr;

    move-result-object p1

    iput-boolean v6, p1, Lcom/android/server/am/lqr;->zta:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v6

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    invoke-static {v4}, Lcom/android/server/am/lqr;->hmo(Landroid/content/Context;)Lcom/android/server/am/lqr;

    move-result-object p1

    iput-boolean v5, p1, Lcom/android/server/am/lqr;->zta:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v5

    goto :goto_1

    :cond_3
    const/4 v1, -0x2

    goto :goto_1

    :cond_4
    if-ne p1, v6, :cond_6

    invoke-static {v4}, Lcom/android/server/am/lqr;->hmo(Landroid/content/Context;)Lcom/android/server/am/lqr;

    move-result-object p0

    if-ne p2, v6, :cond_5

    move v5, v6

    :cond_5
    iput-boolean v5, p0, Lcom/android/server/am/lqr;->zta:Z

    move v1, v0

    goto :goto_1

    :cond_6
    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-ne p2, v6, :cond_7

    move v0, v6

    goto :goto_0

    :cond_7
    move v0, v5

    :goto_0
    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-ne p2, v6, :cond_8

    move v5, v6

    :cond_8
    invoke-static {p0, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x3

    :cond_9
    :goto_1
    return v1
.end method

.method public static zta(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->you:Z

    const-string v2, "OnePlusAppControlModeService"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppControl#getAllAppControlModes # mode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p0, :cond_8

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [I

    const/16 v5, 0x4c

    aput v5, v4, v0

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/server/am/cjf;->cno()Lcom/android/server/vdb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/vdb;->bvj()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-boolean v4, Lcom/android/server/am/cjf;->you:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllAppControlModes: whitelist "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_3

    new-instance v7, Lcom/oneplus/appboot/AppControlMode;

    aget-object v8, v1, v6

    invoke-direct {v7, v8, p0, v3}, Lcom/oneplus/appboot/AppControlMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-object v4

    :cond_4
    invoke-static {}, Lcom/android/server/am/cjf;->rtg()Landroid/os/IDeviceIdleController;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getUserPowerWhitelist()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    array-length v5, v1

    goto :goto_2

    :cond_5
    move v5, v0

    :goto_2
    if-ge v0, v5, :cond_6

    new-instance v6, Lcom/oneplus/appboot/AppControlMode;

    aget-object v7, v1, v0

    invoke-direct {v6, v7, p0, v3}, Lcom/oneplus/appboot/AppControlMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    sget-boolean p0, Lcom/android/server/am/cjf;->you:Z

    if-eqz p0, :cond_7

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/appboot/AppControlMode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppControl#getAllAppControlModes # c="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    return-object v4

    :cond_8
    return-object v1
.end method
