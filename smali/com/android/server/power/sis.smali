.class public Lcom/android/server/power/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/power/IOpPowerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/sis$you;
    }
.end annotation


# static fields
.field private static final a:I = 0x5

.field private static final b:I = 0x6

.field private static final bud:I = 0x7

.field private static final c:Ljava/lang/String; = "com.oppo.market"

.field private static final cgv:Ljava/lang/String; = "ProcessManagement"

.field public static d:Lcom/android/server/OnePlusUtil$you; = null

.field private static e:Landroid/content/pm/PackageManager; = null

.field private static final fto:Z = false

.field private static final hmo:Z

.field private static final ire:Z = false

.field private static final irq:I = 0x1

.field private static final ivd:I = 0x1

.field private static final les:I = 0x0

.field private static lqr:Z = false

.field private static final qeg:I = 0x0

.field private static final vdw:I = 0x2

.field private static final veq:Ljava/lang/String; = "OpPowerManager"

.field private static final vju:I = 0x5


# instance fields
.field private bio:Lcom/oneplus/config/ConfigObserver;

.field bvj:[I

.field private cjf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cno:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dma:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ear:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gck:Z

.field private gwm:Z

.field ibl:[I

.field private igw:Landroid/app/ActivityManager;

.field private kth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private obl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private oif:Z

.field private oxb:Z

.field private qbh:I

.field private rtg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private sis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private ssp:Z

.field private tsu:Z

.field private ugm:Z

.field vdb:Ljava/lang/String;

.field private wtn:Landroid/media/AudioManager;

.field private you:Z

.field private final ywr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private zgw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zta:Lcom/android/server/power/PowerManagerService$PmsInner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/power/sis;->hmo:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/sis;->lqr:Z

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/sis;->d:Lcom/android/server/OnePlusUtil$you;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/sis;->e:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/sis;->you:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/sis;->cno:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/sis;->ywr:Ljava/util/HashMap;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/power/sis;->bvj:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/sis;->ibl:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/sis;->vdb:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/sis;->oxb:Z

    return-void
.end method

.method private bvj(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/power/sis;->ywr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ","

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/server/power/sis;->ywr:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/power/sis;->ywr:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ) into mLongWLBlackMap"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPowerManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cno(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/sis;->cno:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method private dma(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/sis;->igw:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/power/sis;->igw:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/sis;->igw:Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.gaana"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " forceStopPackageName  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPowerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getPowerManagerHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getPowerManagerHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private ear(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getDeviceIdleTempWhitelist()[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/sis;->gwm:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/power/sis;->bvj:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object p0, p0, Lcom/android/server/power/sis;->ibl:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v3

    :goto_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v3

    :goto_2
    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getDeviceIdleWhitelist()[I

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_5

    move p0, v2

    goto :goto_4

    :cond_5
    move p0, v3

    :goto_4
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_6

    move p1, v2

    goto :goto_5

    :cond_6
    move p1, v3

    :goto_5
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move v2, v3

    :goto_6
    return v2
.end method

.method private gwm(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/sis;->ywr:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private hmo(Lorg/json/JSONArray;)V
    .locals 9

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] jsonArray ==null mDozeBlackForAudioList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/sis;->kth:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] jsonArray ==null mLightIdleBlackList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/sis;->dma:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] jsonArray ==null mOemDisableWakeLockPackage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] jsonArray ==null mOemDisableWakeLockReason = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/sis;->ear:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpPowerManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] jsonArray ==null mOemScreenBlackPackage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/sis;->zgw:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_e

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemBlackPackageForAudio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/sis;->kth:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/power/sis;->kth:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v5, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/power/sis;->kth:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v4

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemBlackPackageForLongWakelock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/sis;->dma:Ljava/util/List;

    monitor-enter v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v5, p0, Lcom/android/server/power/sis;->dma:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v5, v0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/server/power/sis;->dma:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/server/power/sis;->dma:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/server/power/sis;->bvj(Ljava/util/List;)V

    monitor-exit v4

    goto/16 :goto_6

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_4
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemDisableWakeLockPackage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    monitor-enter v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v5, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v5, v0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    monitor-exit v4

    goto :goto_6

    :catchall_2
    move-exception p0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :cond_6
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemDisableWakeLockReason"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/sis;->ear:Ljava/util/List;

    monitor-enter v4
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v5, p0, Lcom/android/server/power/sis;->ear:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v5, v0

    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    iget-object v6, p0, Lcom/android/server/power/sis;->ear:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    monitor-exit v4

    goto :goto_6

    :catchall_3
    move-exception p0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p0

    :cond_8
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemScreenBlackPackage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/sis;->zgw:Ljava/util/List;

    monitor-enter v4
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v5, p0, Lcom/android/server/power/sis;->zgw:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v5, v0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    iget-object v6, p0, Lcom/android/server/power/sis;->zgw:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    monitor-exit v4

    goto :goto_6

    :catchall_4
    move-exception p0

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p0

    :cond_a
    :goto_6
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemKillWakeLocks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/server/power/sis;->obl:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tags"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v7, v0

    :goto_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_b

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/power/sis;->sis(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemPowerKillEnable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/sis;->oxb:Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_e
    const-string p1, "OpPowerManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] updated complete mDozeBlackForAudioList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/sis;->kth:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "OpPowerManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] updated complete mLightIdleBlackList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/sis;->dma:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "OpPowerManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] updated complete mOemDisableWakeLockPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "OpPowerManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] updated complete mOemDisableWakeLockReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/sis;->ear:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "OpPowerManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] updated complete mOemScreenBlackPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/sis;->zgw:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig], error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void
.end method

.method private ibl(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/sis;->cno:Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->cno(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private ire(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private obl(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/power/sis;->oxb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/sis;->obl:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "OpPowerManager"

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/sis;->obl:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " enableExclusiveWakeLocksInternal kill "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService$PmsInner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/sis;->obl:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/power/sis;->obl:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " enableExclusiveWakeLocksInternal forceStopPackageName packageName "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/server/power/sis;->dma(Ljava/lang/String;)Z

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private oif()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getWakelocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    iget-object v7, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v7, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/power/sis;->rtg(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/power/sis;->tsu(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, v7}, Lcom/android/server/power/sis;->qbh(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/power/sis;->dma(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private qbh(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/power/sis;->e:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sput-object p0, Lcom/android/server/power/sis;->e:Landroid/content/pm/PackageManager;

    :cond_0
    sget-object p0, Lcom/android/server/power/sis;->e:Landroid/content/pm/PackageManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private rtg(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->qbh(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/power/sis;->kth:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " blackPackageForAudio  packageName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPowerManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private sis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/sis;->obl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/sis;->obl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/power/sis;->obl:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ssp(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/sis;->zgw:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/sis;->zgw:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OpPowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not to screen on because of balck list"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private tsu(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 7

    invoke-direct {p0}, Lcom/android/server/power/sis;->ywr()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    return v4

    :cond_2
    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v3

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_4

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v6, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    if-ne v6, v2, :cond_3

    return v4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method private ugm(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OpPowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDisableWakeLock  packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private vdb(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/sis;->ear:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/sis;->ear:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/sis;->ear:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "OpPowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDisableWakeLock  reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private vju(IZ)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/power/sis;->hmo:Z

    const-string v1, "OpPowerManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBlockedUids: uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isBlocked = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_2

    sget-boolean p0, Lcom/android/server/power/sis;->hmo:Z

    if-eqz p0, :cond_1

    const-string p0, "UpdateBlockedUids is not allowed"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    if-eqz p2, :cond_4

    sget-boolean p2, Lcom/android/server/power/sis;->hmo:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adding powerMgr mBGFrozenBlockedUids with uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p0, p0, Lcom/android/server/power/sis;->cno:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-boolean p1, Lcom/android/server/power/sis;->hmo:Z

    if-eqz p1, :cond_5

    const-string p1, "clearing powerMgr mBGFrozenBlockedUids"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p0, p0, Lcom/android/server/power/sis;->cno:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private ywr()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/sis;->wtn:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/power/sis;->wtn:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/sis;->wtn:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const-string v1, "get_uid"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ":0"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/power/sis;->ire(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/power/sis;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->hmo(Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method public addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/sis;->you(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method bio(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/power/sis;->hmo:Z

    if-eqz v1, :cond_0

    const-string v1, "OpPowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableExclusiveWakeLocksInternal, forNetReachability = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/power/sis;->ssp:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/power/sis;->tsu:Z

    :goto_0
    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->updateWakeLockDisabledStatesLockedInner()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cgv(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/power/sis;->hmo:Z

    if-eqz v1, :cond_0

    const-string v1, "OpPowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setWakelockRestriction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/sis;->ugm:Z

    if-ne v1, p1, :cond_1

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/power/sis;->ugm:Z

    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->updateWakeLockDisabledStatesLockedInner()V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public checkForKeepWakeLocks(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 4

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/server/power/sis;->d:Lcom/android/server/OnePlusUtil$you;

    iget v3, v0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusUtil$you;->cno(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget v0, v0, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    return v2

    :cond_1
    if-ne v0, v3, :cond_2

    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->ssp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public checkWakeUpOrDoze(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget v0, p0, Lcom/android/server/power/sis;->qbh:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :cond_0
    const-string v0, "Not allow to hold any wakelock during doze mode for: "

    const/4 v1, 0x0

    const-string v2, "OpPowerManager"

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->vdb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-eqz p2, :cond_3

    const-string p1, "android"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/power/sis;->vdb:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->ugm(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allow to screen on: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/power/sis;->vdb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/power/sis;->vdb:Ljava/lang/String;

    return v1

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/power/sis;->ugm(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method protected cjf(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "********************** Help begin:**********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "1 All PowerManagerService log"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys power log all 0/1"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "2 All needed log when oem log is on"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys power log switch 0/1"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "----------------------------------"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "********************** Help end.  **********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public clearExclusiveWakeLock(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/power/sis;->kth(Z)V

    return-void
.end method

.method public disableExclusiveWakeLocks(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/power/sis;->bio(Z)V

    return-void
.end method

.method public enableExclusiveWakeLocks(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/power/sis;->wtn(Z)V

    return-void
.end method

.method public flushExclusiveWakeLock()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/sis;->gck()V

    return-void
.end method

.method public fto(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/power/sis;->hmo:Z

    if-eqz v1, :cond_0

    const-string v1, "OpPowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setDeepSleepMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/sis;->gwm:Z

    if-ne v1, p1, :cond_1

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/power/sis;->gwm:Z

    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->updateWakeLockDisabledStatesLockedInner()V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method gck()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/power/sis;->hmo:Z

    if-eqz v1, :cond_0

    const-string v1, "OpPowerManager"

    const-string v2, "flushExclusiveWakeLockInternal"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->updateWakeLockDisabledStatesLockedInner()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getExclusiveWakeLock(Z)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/power/sis;->rtg:Ljava/util/HashMap;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/sis;->sis:Ljava/util/HashMap;

    return-object p0
.end method

.method public handleForceStop(Landroid/os/Message;)V
    .locals 2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/power/sis;->igw:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/power/sis;->igw:Landroid/app/ActivityManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/sis;->igw:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public handleLightIdleBlackList()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLightDeviceIdleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpPowerManager"

    const-string v1, "Enter LightIdle, more aggressive to handle black audio"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/power/sis;->oif()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->updateWakeLockDisabledStatesLockedInner()V

    return-void
.end method

.method public handleOnlineConfig()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PmsInner;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ProcessManagement"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/sis;->hmo(Lorg/json/JSONArray;)V

    return-void
.end method

.method public ifEnableLogDump()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/sis;->you:Z

    return p0
.end method

.method public ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/sis;->igw(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected igw(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_6

    aget-object v0, p2, v1

    const-string v3, "log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, p2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const-string p2, "Invalid argument! Get detail help as bellow:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/power/sis;->cjf(Ljava/io/PrintWriter;)V

    return v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigPowerManagerServiceLogTag, args.length:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigPowerManagerServiceLogTag, args["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, p2, v2

    const/4 v3, 0x2

    aget-object p2, p2, v3

    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigPowerManagerServiceLogTag, logCategoryTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "all"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    iput-boolean p2, p0, Lcom/android/server/power/sis;->you:Z

    sput-boolean p2, Lcom/android/server/power/Notifier;->DEBUG:Z

    sput-boolean p2, Lcom/android/server/lights/LightsService;->DEBUG:Z

    goto :goto_2

    :cond_3
    const-string v3, "switch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sput-boolean p2, Lcom/android/server/lights/LightsService;->DEBUG:Z

    sput-boolean p2, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    invoke-static {p2, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->switchDynamicLog(ZZ)V

    goto :goto_2

    :cond_4
    const-string v1, "special"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string p2, "Invalid log tag argument! Get detail help as bellow:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/power/sis;->cjf(Ljava/io/PrintWriter;)V

    :goto_2
    return v2

    :cond_6
    return v1
.end method

.method public init(Landroid/content/res/Resources;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/sis;->qbh:I

    new-instance v1, Ljava/util/ArrayList;

    const v2, 0x5020016

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/power/sis;->dma:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLightIdleBlackList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/sis;->dma:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpPowerManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/sis;->dma:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/power/sis;->bvj(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    const v3, 0x5020017

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/power/sis;->kth:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDozeBlackForAudioList = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/sis;->kth:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PmsInner;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$PmsInner;->getPowerManagerHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/sis$you;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/power/sis$you;-><init>(Lcom/android/server/power/sis;Lcom/android/server/power/sis$zta;)V

    const-string v5, "ProcessManagement"

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/sis;->bio:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p1, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$PmsInner;->getPowerManagerHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PmsInner;->getPowerManagerHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1770

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    const-string v1, "com.moblie.bestapps.inlike"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    const-string v1, "com.ifeng.news2"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    const-string v1, "com.tencent.mtt"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    const-string v1, "com.ijinshan.browser_fast"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    const-string v1, "com.netease.cloudmusic"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    const-string v1, "com.taobao.trip"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOemDisableWakeLockPackage = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/sis;->cjf:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/sis;->ear:Ljava/util/List;

    const-string v1, "com.appboy.push"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOemDisableWakeLockReason = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/sis;->ear:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/sis;->zgw:Ljava/util/List;

    const-string v1, "com.joym.armorhero.sj360"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/sis;->sis:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/android/server/power/sis;->tsu:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/sis;->rtg:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/android/server/power/sis;->ssp:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/sis;->obl:Ljava/util/HashMap;

    const-string p1, "com.google.android.googlequicksearchbox"

    const-string v0, "AudioIn"

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/sis;->sis(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    return-void
.end method

.method kth(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/power/sis;->rtg:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/sis;->sis:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public lqr([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/sis;->ibl:[I

    iget-boolean p1, p0, Lcom/android/server/power/sis;->oif:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->updateWakeLockDisabledStatesLockedInner()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method oxb(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/power/sis;->ssp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/sis;->rtg:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/sis;->rtg:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public sendOemShutDownBroadcast(Landroid/content/BroadcastReceiver;)V
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v0, "oneplus.intent.action.OEM_SHUTDOWN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.oppo.market"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getPowerManagerHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setDeviceIdleAggressive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/sis;->gck:Z

    return-void
.end method

.method public setDeviceIdleState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/power/sis;->qbh:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/sis;->oif:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setWakelockDisabled(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getDeviceIdleMode()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLightDeviceIdleMode()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$PmsInner;->getForceSuspendActive()Z

    move-result v2

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_18

    iget v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v6, 0x2710

    const-string v7, " wakeLock:"

    const-string v8, "OpPowerManager"

    if-lt v3, v6, :cond_c

    iget-object v6, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerService$PmsInner;->getConstants()Lcom/android/server/power/PowerManagerService$Constants;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const/16 v9, 0x14

    if-eqz v6, :cond_1

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-boolean v6, v2, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    if-nez v6, :cond_1

    iget v2, v2, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v2, v9, :cond_1

    const/16 v6, 0xb

    if-le v2, v6, :cond_1

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const/4 v6, 0x4

    if-eqz v0, :cond_7

    iget-boolean v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    if-eqz v10, :cond_2

    iput-boolean v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLongBeforeIdle:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->obl(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    iget-object v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    invoke-direct {p0, v3}, Lcom/android/server/power/sis;->ear(I)Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, v10, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v11, v9, :cond_7

    if-le v11, v6, :cond_3

    move v2, v5

    :cond_3
    iget-boolean v11, p0, Lcom/android/server/power/sis;->gck:Z

    if-eqz v11, :cond_4

    iget v11, v10, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-ne v11, v6, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->tsu(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v11

    if-nez v11, :cond_4

    move v2, v5

    :cond_4
    iget-boolean v11, p0, Lcom/android/server/power/sis;->gwm:Z

    if-eqz v11, :cond_5

    move v2, v5

    :cond_5
    iget-boolean v11, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLongBeforeIdle:Z

    if-eqz v11, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->tsu(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v11

    if-nez v11, :cond_7

    sget-boolean v11, Lcom/android/server/power/sis;->lqr:Z

    if-eqz v11, :cond_6

    iget v10, v10, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-gt v10, v6, :cond_6

    move v10, v5

    goto :goto_1

    :cond_6
    move v10, v4

    :goto_1
    if-nez v10, :cond_7

    move v2, v5

    :cond_7
    iget-boolean v10, p0, Lcom/android/server/power/sis;->ugm:Z

    if-eqz v10, :cond_a

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->tsu(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    iget-object v11, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v11}, Lcom/android/server/power/PowerManagerService$PmsInner;->getDeviceIdleWhitelist()[I

    move-result-object v11

    invoke-static {v11, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    if-gez v11, :cond_a

    iget-object v11, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v11}, Lcom/android/server/power/PowerManagerService$PmsInner;->getDeviceIdleTempWhitelist()[I

    move-result-object v11

    invoke-static {v11, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_a

    iget v3, v10, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-eq v3, v9, :cond_a

    if-le v3, v6, :cond_8

    move v2, v5

    :cond_8
    iget v3, v10, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    if-ne v3, v6, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->tsu(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-nez v3, :cond_9

    move v2, v5

    :cond_9
    if-eqz v2, :cond_a

    sget-boolean v3, Lcom/android/server/power/sis;->hmo:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", is disabled by restriction"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-nez v2, :cond_d

    if-nez v1, :cond_b

    if-eqz v0, :cond_d

    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->gwm(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v2

    goto :goto_2

    :cond_c
    move v2, v4

    :cond_d
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/power/sis;->tsu:Z

    if-eqz v1, :cond_f

    if-nez v2, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/power/sis;->zgw(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/android/server/power/sis;->hmo:Z

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", is disabled by OnePlusPowerController(E)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v2, v5

    :cond_f
    iget-boolean v1, p0, Lcom/android/server/power/sis;->ssp:Z

    if-eqz v1, :cond_11

    if-nez v2, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/power/sis;->oxb(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-boolean v1, Lcom/android/server/power/sis;->hmo:Z

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", is disabled by OnePlusPowerController(N)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v2, v5

    :cond_11
    if-nez v2, :cond_13

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->ibl(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-boolean v1, Lcom/android/server/power/sis;->hmo:Z

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", is disabled by BGFrozen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move v2, v5

    :cond_13
    if-eqz v0, :cond_15

    if-nez v2, :cond_15

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v0

    move v1, v4

    :goto_3
    if-ge v1, v0, :cond_15

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/power/sis;->rtg(I)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-direct {p0, p1}, Lcom/android/server/power/sis;->tsu(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-direct {p0, v3}, Lcom/android/server/power/sis;->qbh(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/sis;->dma(Ljava/lang/String;)Z

    goto :goto_4

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    :goto_4
    iget p0, p0, Lcom/android/server/power/sis;->qbh:I

    if-eqz p0, :cond_16

    if-ne p0, v5, :cond_17

    :cond_16
    iput-boolean v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLongBeforeIdle:Z

    :cond_17
    iget-boolean p0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq p0, v2, :cond_18

    iput-boolean v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    return v5

    :cond_18
    return v4
.end method

.method public updateBlockedUids(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/sis;->vju(IZ)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->updateWakeLockDisabledStatesLockedInner()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method veq([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/sis;->bvj:[I

    iget-boolean p1, p0, Lcom/android/server/power/sis;->oif:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->updateWakeLockDisabledStatesLockedInner()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method wtn(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$PmsInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/power/sis;->hmo:Z

    if-eqz v1, :cond_0

    const-string v1, "OpPowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableExclusiveWakeLocksInternal, forNetReachability = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/power/sis;->ssp:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/power/sis;->tsu:Z

    :goto_0
    iget-object p0, p0, Lcom/android/server/power/sis;->zta:Lcom/android/server/power/PowerManagerService$PmsInner;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->updateWakeLockDisabledStatesLockedInner()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method you(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/server/power/sis;->rtg:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/sis;->sis:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-boolean p1, Lcom/android/server/power/sis;->hmo:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_4

    const-string v2, "RestrictWakeLocks"

    goto :goto_5

    :cond_4
    const-string v2, "ExclusiveWakeLocks"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ", tags = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpPowerManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    return-void
.end method

.method zgw(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/power/sis;->tsu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/sis;->sis:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/sis;->sis:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
