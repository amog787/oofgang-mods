.class public final Lcom/android/server/wm/ywr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ywr$zta;
    }
.end annotation


# static fields
.field static cno:Lcom/android/server/wm/ywr$zta; = null

.field private static rtg:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sis:Ljava/lang/String; = "OemSceneModeAmHelper"

.field private static ssp:Z

.field private static tsu:Lcom/oneplus/os/IOnePlusExService;

.field private static final you:Z

.field public static final zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/ywr;->zta:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ywr;->you:Z

    new-instance v0, Lcom/android/server/wm/ywr$zta;

    invoke-direct {v0}, Lcom/android/server/wm/ywr$zta;-><init>()V

    sput-object v0, Lcom/android/server/wm/ywr;->cno:Lcom/android/server/wm/ywr$zta;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bio()V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/ywr;->you:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeAmHelper"

    const-string v1, "[scene] start switching user"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/server/wm/ywr;->tsu:Lcom/oneplus/os/IOnePlusExService;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/os/IOnePlusExService;

    sput-object v1, Lcom/android/server/wm/ywr;->tsu:Lcom/oneplus/os/IOnePlusExService;

    :cond_0
    sget-object v1, Lcom/android/server/wm/ywr;->tsu:Lcom/oneplus/os/IOnePlusExService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/os/IOnePlusExService;->monitorSceneChanging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static cno()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeAmHelper"

    const-string v1, "ReadMode2: handleStopMonitorPassive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/wm/ywr;->rtg()Lcom/android/server/wm/ywr$zta;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ywr$zta;->igw(Lcom/android/server/wm/ywr$zta;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneModeController;->n0:Ljava/lang/String;

    return-void
.end method

.method public static kth(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    sget-object v0, Lcom/android/server/wm/ywr;->rtg:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/ywr;->rtg:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x110000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    sget-object v1, Lcom/android/server/wm/ywr;->rtg:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_2

    const-string p0, "OemSceneModeAmHelper"

    const-string v0, "[scene] scene evaluation ignore list: "

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wm/ywr;->rtg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ywr;->rtg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene]    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "[scene]     Empty"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    if-nez p1, :cond_3

    return p0

    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    :cond_4
    sget-object v0, Lcom/android/server/wm/ywr;->rtg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_6
    return p0
.end method

.method public static rtg()Lcom/android/server/wm/ywr$zta;
    .locals 1

    sget-object v0, Lcom/android/server/wm/ywr;->cno:Lcom/android/server/wm/ywr$zta;

    return-object v0
.end method

.method public static sis(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    sget-boolean p0, Lcom/android/server/wm/ywr;->you:Z

    if-eqz p0, :cond_1

    const-string p0, "OemSceneModeAmHelper"

    const-string v0, "[scene] end switching user"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/ywr;->rtg()Lcom/android/server/wm/ywr$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ywr$zta;->zgw()V

    sget-object v0, Lcom/android/server/wm/ywr;->tsu:Lcom/oneplus/os/IOnePlusExService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusExService;

    sput-object v0, Lcom/android/server/wm/ywr;->tsu:Lcom/oneplus/os/IOnePlusExService;

    :cond_0
    sget-object v0, Lcom/android/server/wm/ywr;->tsu:Lcom/oneplus/os/IOnePlusExService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/os/IOnePlusExService;->monitorSceneChanging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] error while operating the scene mode controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static ssp(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 4

    sget-boolean p3, Lcom/android/server/wm/ywr;->you:Z

    if-eqz p3, :cond_6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[scene] handleShowOrOccludedChanged showing "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", occluded "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "OemSceneModeAmHelper"

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, p3

    :goto_1
    sget-boolean v3, Lcom/android/server/wm/ywr;->ssp:Z

    if-eq v2, v3, :cond_5

    :try_start_0
    sget-object v3, Lcom/android/server/wm/ywr;->tsu:Lcom/oneplus/os/IOnePlusExService;

    if-nez v3, :cond_2

    sget-object v3, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v3}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/os/IOnePlusExService;

    sput-object v3, Lcom/android/server/wm/ywr;->tsu:Lcom/oneplus/os/IOnePlusExService;

    :cond_2
    sget-object v3, Lcom/android/server/wm/ywr;->tsu:Lcom/oneplus/os/IOnePlusExService;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move p3, v1

    :cond_4
    :goto_2
    invoke-interface {v3, p3}, Lcom/oneplus/os/IOnePlusExService;->monitorSceneChanging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[scene] error while operating the scene mode controller: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    sput-boolean v2, Lcom/android/server/wm/ywr;->ssp:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardShowing(I)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v1}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->updateSceneScreenEffectFlag(I)V

    :cond_6
    return-void
.end method

.method public static tsu()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeAmHelper"

    const-string v1, "clearGameModeRecord"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/wm/ywr;->rtg()Lcom/android/server/wm/ywr$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ywr$zta;->ywr()V

    return-void
.end method

.method public static you(Landroid/content/Context;Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/ywr;->you:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const/4 v1, -0x2

    const-string v2, "temp_disable_scene_button_lcok_feature"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[scene] updateSceneButtonLockFeature toDisable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneModeAmHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic zta()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/ywr;->you:Z

    return v0
.end method
