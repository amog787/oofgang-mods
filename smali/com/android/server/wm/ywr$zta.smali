.class public Lcom/android/server/wm/ywr$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ywr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ywr$zta$rtg;
    }
.end annotation


# static fields
.field private static a:Lcom/android/server/wm/ActivityRecord; = null

.field public static final b:I = 0x0

.field private static final bud:I = 0x6d

.field public static final bvj:I = 0x1

.field public static final c:I = 0x1

.field private static final cgv:I = 0x1f4

.field private static final cjf:Ljava/lang/String; = "com.oneplus.gallery"

.field public static final d:I = 0x2

.field private static e:Lcom/android/server/wm/ywr$zta$rtg; = null

.field private static final ear:Ljava/lang/String; = "com.amazon.avod.thirdpartyclient"

.field private static final fto:I = 0x0

.field private static final gwm:Ljava/lang/String; = "force-off"

.field private static final hmo:I = -0x1

.field private static final ibl:Ljava/lang/String; = "OemSceneModeActivityStack"

.field private static final ire:Ljava/lang/String; = "com.netflix.mediaclient"

.field public static final irq:I = 0x6f

.field private static ivd:Lcom/android/server/wm/ActivityRecord; = null

.field private static final les:I = 0x6e

.field private static final lqr:I = 0x1

.field private static final obl:Ljava/lang/String; = "1"

.field public static final oif:I = 0x0

.field private static final oxb:Ljava/lang/String; = "com.oneplus.camera"

.field private static qeg:Lcom/android/internal/statusbar/IStatusBarService; = null

.field private static final ugm:Ljava/lang/String; = "force-on"

.field private static final vdb:Ljava/lang/String; = "force-on-color"

.field private static vdw:Landroid/app/NotificationManager; = null

.field private static final veq:I = 0x2

.field private static final vju:I = 0x6c

.field private static final zgw:Ljava/lang/String; = "0"


# instance fields
.field private bio:Z

.field cno:I

.field private dma:Z

.field private gck:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private igw:Ljava/lang/String;

.field private kth:Ljava/lang/String;

.field final qbh:Landroid/content/BroadcastReceiver;

.field private rtg:Lcom/android/server/wm/ActivityStack;

.field private sis:Landroid/content/Context;

.field private ssp:Lcom/android/server/wm/ActivityStackSupervisor;

.field private tsu:Ljava/lang/String;

.field private wtn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private you:Landroid/content/Intent;

.field private ywr:Z

.field private zta:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ywr$zta;->cno:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ywr$zta;->kth:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/wm/ywr$zta;->bio:Z

    iput-object v1, p0, Lcom/android/server/wm/ywr$zta;->igw:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ywr$zta;->wtn:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ywr$zta;->gck:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/ywr$zta$sis;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ywr$zta$sis;-><init>(Lcom/android/server/wm/ywr$zta;)V

    iput-object v0, p0, Lcom/android/server/wm/ywr$zta;->qbh:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic bio(Lcom/android/server/wm/ywr$zta;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->you:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic cno(Lcom/android/server/wm/ywr$zta;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ywr$zta;->wtn(Ljava/lang/String;I)V

    return-void
.end method

.method private dma(ILjava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadMode2: enableReadModeNow pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeActivityStack"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, p3, p2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const/4 p1, 0x0

    sput-object p1, Lcom/android/server/wm/ywr$zta;->a:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ywr$zta;->veq(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private gck(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/wm/ywr$zta;->vdw:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/server/wm/ywr$zta;->vdw:Landroid/app/NotificationManager;

    :cond_0
    sget-object v0, Lcom/android/server/wm/ywr$zta;->vdw:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/server/wm/ywr$zta;->tsu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable Read Mode Notification for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->tsu:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v0, p0, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    sget-object p0, Lcom/android/server/wm/ywr$zta;->vdw:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method static synthetic igw(Lcom/android/server/wm/ywr$zta;)Lcom/android/server/wm/ActivityStack;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    return-object p0
.end method

.method private ire(Z)V
    .locals 5

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "OemSceneModeActivityStack"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gameModeShowToolBox(): handle showToolBoxGuideline, isStrong="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.gamespace"

    const-string v4, "com.oneplus.gamespace.service.RemoteService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string p1, "oneplus.intent.action.TOOLBOX_STRONG_GUIDE"

    goto :goto_0

    :cond_1
    const-string p1, "oneplus.intent.action.TOOLBOX_WEAK_GUIDE"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start service: intent="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic kth(Lcom/android/server/wm/ywr$zta;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ywr$zta;->dma(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/ywr$zta;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->zta:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/wm/ywr$zta;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->tsu:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/wm/ywr$zta;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ywr$zta;->zta:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic tsu()Landroid/app/NotificationManager;
    .locals 1

    sget-object v0, Lcom/android/server/wm/ywr$zta;->vdw:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private ugm(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private vdb(II)Z
    .locals 2

    iget-object p2, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x50601b8

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x50601b9

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-le p1, p0, :cond_2

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result p2

    sub-int/2addr p2, p0

    if-lt p1, p2, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private wtn(Ljava/lang/String;I)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReadMode2: cancelNotification pkg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneModeActivityStack"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/wm/ywr$zta;->qeg:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez p0, :cond_0

    const-string p0, "statusbar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    sput-object p0, Lcom/android/server/wm/ywr$zta;->qeg:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    :try_start_0
    sget-object p0, Lcom/android/server/wm/ywr$zta;->qeg:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to collapse notification panel, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lcom/android/server/wm/ywr$zta;->vdw:Landroid/app/NotificationManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.oneplus.android.server.scene.READ_MODE - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3ff

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/ywr$zta;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zta()Lcom/android/server/wm/ywr$zta$rtg;
    .locals 1

    sget-object v0, Lcom/android/server/wm/ywr$zta;->e:Lcom/android/server/wm/ywr$zta$rtg;

    return-object v0
.end method


# virtual methods
.method public bud(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->gck:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->kth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->gck:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->kth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/ywr$zta;->bio:Z

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->kth:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->gck:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->kth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/ywr$zta;->bio:Z

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ywr$zta;->igw:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public bvj(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, "force-on"

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneModeController;->c0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "force-on-color"

    goto :goto_0

    :cond_1
    const-string p1, "force-off"

    :goto_0
    const/4 v0, -0x2

    const-string v1, "rading_mode_status_auto"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[scene] handleEvaluateReadMode enabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneModeActivityStack"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public cgv(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    invoke-static {}, Lcom/android/server/wm/ywr;->zta()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ywr;->zta:Z

    const-string v1, "OemSceneModeActivityStack"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] pause from = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", to = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    sput-object p1, Lcom/android/server/wm/ywr$zta;->ivd:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_2
    sput-object v0, Lcom/android/server/wm/ywr$zta;->ivd:Lcom/android/server/wm/ActivityRecord;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ywr$zta;->ugm(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_3

    const-string p0, "[scene] Don\'t ignore the scene evaluation for quickly activity transition inside app"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x6c

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    sput-object v0, Lcom/android/server/wm/ywr$zta;->a:Lcom/android/server/wm/ActivityRecord;

    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x6d

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    sput-object v0, Lcom/android/server/wm/ywr$zta;->a:Lcom/android/server/wm/ActivityRecord;

    :cond_6
    return-void
.end method

.method public cjf(Lcom/android/server/wm/ActivityRecord;)V
    .locals 12

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneModeController;->c0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    const-string v1, "OemSceneModeActivityStack"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ReadMode2: skip notification due to read mode is changed:"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneModeController;->irq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/android/server/scene/OemSceneModeController;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ReadMode2: skip notification due to read mode is manually on:"

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadMode2: START send read mode notification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.oneplus.android.server.scene.READ_MODE - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ywr$zta;->tsu:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.OP_READING_MODE_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/ywr$zta;->you:Landroid/content/Intent;

    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReadMode2: sendReadModeNotification get app info failed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v6, 0x3e7

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    const v6, 0x50f0088

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v5

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    const v6, 0x50f00b7

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v5

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/server/wm/ywr$zta;->gck(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.oem.intent.action.ENABLE_READ_MODE_NOW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v7, "packageName"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v6

    const-string v8, "uid"

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    sget v9, Lcom/oneplus/android/server/scene/OemSceneModeController;->j0:I

    add-int/lit8 v10, v9, 0x1

    sput v10, Lcom/oneplus/android/server/scene/OemSceneModeController;->j0:I

    const/high16 v10, 0x8000000

    invoke-static {v6, v9, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v6, Landroid/app/Notification$Action$Builder;

    iget-object v9, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    const v11, 0x50f00b5

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v11, 0x1080376

    invoke-direct {v6, v11, v9, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.oem.intent.action.GO_READ_MODE_SETTINGS"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p1

    invoke-virtual {v6, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    sget v7, Lcom/oneplus/android/server/scene/OemSceneModeController;->j0:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Lcom/oneplus/android/server/scene/OemSceneModeController;->j0:I

    invoke-static {p1, v7, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v6, Landroid/app/Notification$Action$Builder;

    iget-object v7, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    const v8, 0x50f00b6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v11, v7, p1}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/wm/ywr$zta;->tsu:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    const v8, 0x50f00b8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x507016f

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    const v8, 0x106001c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v7, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ywr$zta;->you:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/ywr$zta$you;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/ywr$zta$you;-><init>(Lcom/android/server/wm/ywr$zta;Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ReadMode2: END send read mode notification for "

    goto/16 :goto_0
.end method

.method ear(IZ)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x50f0120

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    const v0, 0x50f011a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/ywr$zta$tsu;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ywr$zta$tsu;-><init>(Lcom/android/server/wm/ywr$zta;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fto(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p1

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x3ec

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v2, -0x2

    const-string v3, "op_gamut_mapping_mode"

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_2
    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[scene] evaluateGamutMode : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isGameModeApp = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneModeActivityStack"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public gwm(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iput-object p2, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    sget-object p1, Lcom/android/server/wm/ywr$zta;->e:Lcom/android/server/wm/ywr$zta$rtg;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/server/wm/ywr$zta$rtg;

    iget-object p2, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/wm/ywr$zta$rtg;-><init>(Lcom/android/server/wm/ywr$zta;Landroid/content/Context;Landroid/os/Handler;)V

    sput-object p1, Lcom/android/server/wm/ywr$zta;->e:Lcom/android/server/wm/ywr$zta$rtg;

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/wm/ywr$zta$zta;

    invoke-direct {p2, p0}, Lcom/android/server/wm/ywr$zta$zta;-><init>(Lcom/android/server/wm/ywr$zta;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public hmo(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p1

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x3ec

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/ywr$zta;->wtn:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/ywr$zta;->wtn:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/wm/ywr$zta;->bio:Z

    iput-object v2, p0, Lcom/android/server/wm/ywr$zta;->igw:Ljava/lang/String;

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ywr$zta;->wtn:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v0

    :goto_2
    if-eqz p1, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/ywr$zta;->bio:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/ywr$zta;->gck:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/ywr$zta;->gck:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/ywr$zta;->gck:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    :goto_3
    const/4 v4, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ywr$zta;->ear(IZ)V

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ywr$zta;->ear(IZ)V

    :cond_8
    :goto_4
    if-eqz p1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ywr$zta;->kth:Ljava/lang/String;

    goto :goto_5

    :cond_9
    iput-object v2, p0, Lcom/android/server/wm/ywr$zta;->kth:Ljava/lang/String;

    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/wm/ywr;->zta:Z

    const-string v3, "OemSceneModeActivityStack"

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[scene] evaluateGameModes : isGameModeApp="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-boolean v2, p0, Lcom/android/server/wm/ywr$zta;->bio:Z

    if-eqz v2, :cond_b

    move v1, v4

    :cond_b
    iput v1, v0, Landroid/os/Message;->arg2:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] evaluateGameModes :  gameMsg.arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gameMsg.arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[scene] evaluateGameModes : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isGameModeApp = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public ibl()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ywr$zta;->ywr:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/server/wm/ywr$zta;->ywr:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/ywr$zta;->dma:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/server/wm/ywr$zta;->dma:Z

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/wm/ywr$zta;->ire(Z)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/wm/ywr$zta;->ire(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public irq(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    invoke-static {}, Lcom/android/server/wm/ywr;->zta()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.oneplus.camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "com.amazon.avod.thirdpartyclient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "com.netflix.mediaclient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "com.oneplus.gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_4

    goto :goto_2

    :cond_4
    move v2, v5

    goto :goto_2

    :cond_5
    move v2, v6

    :goto_2
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p1, p2}, Lcom/android/server/wm/ywr;->kth(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_6

    const-string p0, "OemSceneModeActivityStack"

    const-string p1, "[scene] don\'t update the scene screen effect flag when permission dialog shown"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    if-eq v2, v4, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ywr$zta;->les(I)V

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x30eba209 -> :sswitch_3
        0x1dd9a466 -> :sswitch_2
        0x2abb3bf1 -> :sswitch_1
        0x7377f3e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public les(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public lqr(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p1, p2}, Lcom/android/server/wm/ywr;->kth(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    const-string v0, "OemSceneModeActivityStack"

    if-eqz p1, :cond_1

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[scene] Ignore the read mode evaluation for: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p1

    const/16 v1, 0x3eb

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/oneplus/android/server/scene/OemSceneModeController;->c0:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneModeController;->n0:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneModeController;->n0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneModeController;->irq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->p(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneModeController;->d0:Ljava/util/ArrayList;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadMode2: start check for read mode app: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/oneplus/android/server/scene/OemSceneModeController;->h0:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] evaluateReadModes: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", readMode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sLastEvaluatePackage="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneModeController;->n0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public obl(Ljava/lang/String;I)V
    .locals 2

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneModeController;->c0:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/wm/ywr$zta;->vdw:Landroid/app/NotificationManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReadMode2: packageChanged pkg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneModeActivityStack"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/wm/ywr$zta;->vdw:Landroid/app/NotificationManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.oneplus.android.server.scene.READ_MODE - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3ff

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public oif(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const/4 v2, -0x2

    const-string v3, "game_mode_status"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/ESportMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/ESportMode;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/oneplus/android/server/scene/ESportMode;->setEnable(ZZ)V

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[scene] handleEvaluateGameMode enabled: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneModeActivityStack"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public oxb(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    iget-object p2, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "esport_mode_gamingspace_enabled"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const-string v2, "com.oneplus.gamespace"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/wm/ywr$zta;->bio:Z

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/ywr$zta;->igw:Ljava/lang/String;

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/ywr$zta;->bio:Z

    iput-object v3, p0, Lcom/android/server/wm/ywr$zta;->igw:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p2, p0, Lcom/android/server/wm/ywr$zta;->bio:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/wm/ywr$zta;->igw:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/wm/ywr$zta;->igw:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public qbh(II)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_status"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ywr$zta;->vdb(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v2, "OemSceneModeActivityStack"

    if-eqz v0, :cond_0

    const-string v0, "gameModeShowToolBox(): startService for gamespace tool box"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.gamespace"

    const-string v5, "com.oneplus.gamespace.service.RemoteService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "oneplus.intent.action.FLOAT_TOOLBOX"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "RawX"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "RawY"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to start service: intent="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public veq(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    invoke-static {}, Lcom/android/server/wm/ywr;->zta()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_2

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    invoke-static {v0, v3, v2, v1}, Lcom/android/server/wm/OpUtilInjector;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ywr$zta;->rtg:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardShowing(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_4

    const-string p0, "OemSceneModeActivityStack"

    const-string p1, "[scene] Ignore scene evaluation when lock screen showing"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] resume from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", to = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", proactive paused activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ywr$zta;->ivd:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ever evalated activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ywr$zta;->a:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeActivityStack"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eq p1, p2, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ywr$zta;->ugm(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/wm/ywr$zta;->ivd:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v0, :cond_8

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_7

    const-string p0, "OemSceneModeActivityStack"

    const-string p1, "[scene] Jump to the same application as last one, don\'t evaluate mode"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/ywr$zta;->ssp:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-nez v1, :cond_a

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_9

    const-string p0, "OemSceneModeActivityStack"

    const-string p1, "[scene] Ignore scene evaluation while screen off"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v0

    return-void

    :cond_a
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/wm/ywr$zta;->a:Lcom/android/server/wm/ActivityRecord;

    sget-object v1, Lcom/android/server/wm/ywr$zta;->ivd:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v1, :cond_c

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ywr$zta;->ugm(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_b

    const-string p0, "OemSceneModeActivityStack"

    const-string p1, "[scene] Activity evaluated, don\'t evaluate mode"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_d

    const-string p0, "OemSceneModeActivityStack"

    const-string p1, "QuickReplyRunning, don\'t evaluate mode"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    :cond_e
    sput-object p2, Lcom/android/server/wm/ywr$zta;->a:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ywr$zta;->hmo(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ywr$zta;->lqr(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ywr$zta;->fto(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public vju(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "temp_disable_scene_screen_effect"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean p0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[scene] updateDisableSceneScreenEffectFlag toDisableMode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneModeActivityStack"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public ywr()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->wtn:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/ywr$zta;->kth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->gck:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/ywr$zta;->kth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ywr$zta;->kth:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ywr$zta;->bio:Z

    iput-object v0, p0, Lcom/android/server/wm/ywr$zta;->igw:Ljava/lang/String;

    return-void
.end method

.method public zgw()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_show_port_tool_box_guideline"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/ywr$zta;->dma:Z

    iget-object v0, p0, Lcom/android/server/wm/ywr$zta;->sis:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "first_show_land_tool_box_guideline"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wm/ywr$zta;->ywr:Z

    sget-boolean v0, Lcom/android/server/wm/ywr;->zta:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadToolBoxGuidelineParams(): port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ywr$zta;->dma:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", land="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/ywr$zta;->ywr:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneModeActivityStack"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
