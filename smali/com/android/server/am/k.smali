.class public Lcom/android/server/am/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static bud:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final bvj:Ljava/lang/String; = "CommonPolicy: widget receiver"

.field protected static cgv:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;",
            ">;"
        }
    .end annotation
.end field

.field protected static final cjf:Ljava/lang/String; = "CommonPolicy: running receiver"

.field private static dma:Lcom/android/server/am/k; = null

.field protected static final ear:Ljava/lang/String; = "CommonPolicy: running provider"

.field protected static fto:I = 0x0

.field protected static final gwm:Ljava/lang/String; = "CommonPolicy: text-to-speech service"

.field protected static final hmo:Ljava/lang/String; = "CommonPolicy: gms restrict"

.field protected static final ibl:Ljava/lang/String; = "CommonPolicy: widget provider"

.field protected static final ire:Ljava/lang/String; = "CommonPolicy: frozen receiver"

.field private static les:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static lqr:J = 0x0L

.field protected static final obl:Ljava/lang/String; = "CommonPolicy: wallpaper service"

.field protected static final oif:Ljava/lang/String; = "CommonPolicy: continuous requests service"

.field protected static final oxb:Ljava/lang/String; = "CommonPolicy: running service"

.field protected static final qbh:Ljava/lang/String; = "CommonPolicy: implict intent activity"

.field protected static final ugm:Ljava/lang/String; = "CommonPolicy: sync adapter service"

.field protected static final vdb:Ljava/lang/String; = "CommonPolicy: spell checker service"

.field protected static veq:Z = false

.field private static vju:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ywr:Ljava/lang/String; = "com.google.android.gms"

.field protected static final zgw:Ljava/lang/String; = "CommonPolicy: ime service"


# instance fields
.field private bio:Ljava/lang/String;

.field private cno:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gck:J

.field private igw:I

.field private kth:Ljava/lang/String;

.field private rtg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sis:Z

.field private ssp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wtn:Ljava/lang/String;

.field private you:Landroid/content/pm/PackageManager;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/k;->vju:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/k;->bud:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/k;->les:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/k;->igw:I

    iput-object p1, p0, Lcom/android/server/am/k;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/k;->you:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/server/am/k;->dma()V

    invoke-direct {p0}, Lcom/android/server/am/k;->qbh()V

    invoke-direct {p0}, Lcom/android/server/am/k;->ywr()V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/k;->kth:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/k;->bio:Ljava/lang/String;

    return-void
.end method

.method private synthetic bvj()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.textservice.SpellCheckerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/k;->you:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    sget-object v3, Lcom/android/server/am/k;->vju:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/am/k;->vju:Ljava/util/HashSet;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TTS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/k;->you:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    sget-object v3, Lcom/android/server/am/k;->bud:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_1
    sget-object v4, Lcom/android/server/am/k;->bud:Ljava/util/HashSet;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.SyncAdapter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/k;->you:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    sget-object v1, Lcom/android/server/am/k;->les:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_2
    sget-object v2, Lcom/android/server/am/k;->les:Ljava/util/HashSet;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_2
    return-void
.end method

.method private dma()V
    .locals 2

    const/4 p0, 0x3

    sput p0, Lcom/android/server/am/k;->fto:I

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/android/server/am/k;->lqr:J

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/am/k;->veq:Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/android/server/am/k;->cgv:Ljava/util/List;

    sget-object v0, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->you:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static gck(Landroid/content/Context;)Lcom/android/server/am/k;
    .locals 1

    sget-object v0, Lcom/android/server/am/k;->dma:Lcom/android/server/am/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/k;

    invoke-direct {v0, p0}, Lcom/android/server/am/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/k;->dma:Lcom/android/server/am/k;

    :cond_0
    sget-object p0, Lcom/android/server/am/k;->dma:Lcom/android/server/am/k;

    return-object p0
.end method

.method private kth(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/k;->gck:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/am/k;->lqr:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/k;->wtn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/am/k;->igw:I

    sget v0, Lcom/android/server/am/k;->fto:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/k;->igw()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/k;->igw()V

    return v1
.end method

.method public static oif(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/k;->les:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/k;->les:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private qbh()V
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    const-string v2, "ACTION_SET_ALARM"

    const-string v3, "ACTION_SET_TIMER"

    const-string v4, "ACTION_SHOW_ALARMS"

    const-string v5, "ACTION_INSERT"

    const-string v6, "ACTION_IMAGE_CAPTURE"

    const-string v7, "ACTION_VIDEO_CAPTURE"

    const-string v8, "INTENT_ACTION_STILL_IMAGE_CAMERA"

    const-string v9, "INTENT_ACTION_VIDEO_CAMERA"

    const-string v10, "ACTION_PICK"

    const-string v11, "ACTION_VIEW"

    const-string v12, "ACTION_EDIT"

    const-string v13, "ACTION_SENDTO"

    const-string v14, "ACTION_SEND"

    const-string v15, "ACTION_SEND_MULTIP"

    const-string v16, "ACTION_GET_CONTENT"

    const-string v17, "ACTION_OPEN_DOCUMENT"

    const-string v18, "ACTION_CREATE_DOCUMENT"

    const-string v19, "ACTION_RESERVE_TAXI_RESERVATION"

    const-string v20, "INTENT_ACTION_MEDIA_PLAY_FROM_SEARCH"

    const-string v21, "ACTION_CREATE_NOTE"

    const-string v22, "ACTION_DIAL"

    const-string v23, "ACTION_CALL"

    const-string v24, "com.google.android.gms.actions.SEARCH_ACTION"

    const-string v25, "ACTION_SENDTO"

    const-string v26, "ACTION_SEND"

    const-string v27, "ACTION_SEND_MULTIPLE"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/k;->rtg:Ljava/util/List;

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const-string v5, "android.intent.action.SCREEN_ON"

    const-string v6, "android.intent.action.SCREEN_OFF"

    const-string v7, "android.intent.action.TIME_TICK"

    const-string v8, "android.intent.action.USER_PRESENT"

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    const-string v10, "android.intent.action.ACTION_POWER_CONNECTED"

    const-string v11, "android.intent.action.ACTION_POWER_DISCONNECTED"

    const-string v12, "android.intent.action.BOOT_COMPLETED"

    const-string v13, "android.intent.action.LOCKED_BOOT_COMPLETED"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/k;->ssp:Ljava/util/List;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    const-string v2, "android.appwidget.action.APPWIDGET_DELETED"

    const-string v3, "android.appwidget.action.APPWIDGET_ENABLED"

    const-string v4, "android.appwidget.action.APPWIDGET_DISABLED"

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/k;->cno:Ljava/util/List;

    sget-object v1, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/rtg;

    invoke-direct {v2, v0}, Lcom/android/server/am/rtg;-><init>(Lcom/android/server/am/k;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static sis(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/k;->bud:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/k;->bud:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private tsu(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GMS] Forbidden Binding GMS via "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# canServiceGo # ret=false pkgName "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # android call"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static you(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/k;->les:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/k;->les:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ywr()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    const-string v2, "android.net.action.RECOMMEND_NETWORKS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    const-string v1, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zgw(Ljava/lang/String;)V
    .locals 6

    iget v0, p0, Lcom/android/server/am/k;->igw:I

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/android/server/am/k;->gck:J

    iput-object p1, p0, Lcom/android/server/am/k;->wtn:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/am/k;->igw:I

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/android/server/am/k;->gck:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/android/server/am/k;->lqr:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/k;->wtn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/am/k;->igw:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/am/k;->igw:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/k;->igw()V

    :goto_0
    return-void
.end method

.method public static zta(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/k;->vju:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/k;->vju:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected bio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ServiceRecord;ILandroid/content/Intent;Lcom/android/server/am/StartAppRecorder$zta;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x75

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/k;->sis:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p6}, Lcom/android/server/am/k;->tsu(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p6

    if-nez p6, :cond_0

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: gms restrict"

    :goto_0
    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object p6

    invoke-virtual {p6, p5}, Lcom/android/server/am/hmo;->c(I)Z

    move-result p5

    if-nez p5, :cond_1

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: running service"

    goto :goto_0

    :cond_1
    iget-object p5, p4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p5, p5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/server/am/k;->oif(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_2

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: sync adapter service"

    goto :goto_0

    :cond_2
    sget-object p5, Lcom/android/server/am/k;->vju:Ljava/util/HashSet;

    monitor-enter p5

    :try_start_0
    sget-object p6, Lcom/android/server/am/k;->vju:Ljava/util/HashSet;

    iget-object v0, p4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: spell checker service"

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    monitor-exit p5

    return-void

    :cond_3
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sget-object p6, Lcom/android/server/am/k;->bud:Ljava/util/HashSet;

    monitor-enter p6

    :try_start_1
    sget-object p5, Lcom/android/server/am/k;->bud:Ljava/util/HashSet;

    iget-object v0, p4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: text-to-speech service"

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    monitor-exit p6

    return-void

    :cond_4
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object p5, p0, Lcom/android/server/am/k;->kth:Ljava/lang/String;

    monitor-enter p5

    :try_start_2
    iget-object p6, p0, Lcom/android/server/am/k;->kth:Ljava/lang/String;

    iget-object v0, p4, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_5

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: ime service"

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    monitor-exit p5

    return-void

    :cond_5
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p6, p0, Lcom/android/server/am/k;->bio:Ljava/lang/String;

    monitor-enter p6

    :try_start_3
    iget-object p5, p0, Lcom/android/server/am/k;->bio:Ljava/lang/String;

    iget-object p4, p4, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: wallpaper service"

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    monitor-exit p6

    return-void

    :cond_6
    monitor-exit p6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-boolean p4, Lcom/android/server/am/k;->veq:Z

    if-eqz p4, :cond_8

    sget-object p4, Lcom/android/server/am/k;->cgv:Ljava/util/List;

    sget-object p5, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->you:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    invoke-interface {p4, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_8

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/android/server/am/hmo;->fto(I)I

    move-result p4

    const/16 p5, 0xf

    if-eq p4, p5, :cond_7

    const/4 p5, 0x3

    if-gt p4, p5, :cond_8

    :cond_7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p7, Lcom/android/server/am/StartAppRecorder$zta;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    iget-object p1, p1, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->label:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/k;->kth(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: continuous requests service"

    goto/16 :goto_0

    :cond_8
    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit p6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit p5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit p6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit p5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method protected cno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Lcom/android/server/am/StartAppRecorder$zta;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/k;->cno:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/hmo;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/hmo;->l(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: widget receiver"

    :goto_0
    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    return-void

    :cond_0
    if-eqz p4, :cond_2

    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz p4, :cond_2

    invoke-static {p5}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A2(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/k;->ssp:Ljava/util/List;

    invoke-interface {p0, p6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: frozen receiver"

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: running receiver"

    goto :goto_0

    :cond_2
    sget-boolean p4, Lcom/android/server/am/k;->veq:Z

    if-eqz p4, :cond_4

    sget-object p4, Lcom/android/server/am/k;->cgv:Ljava/util/List;

    sget-object p5, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    invoke-interface {p4, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_4

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/android/server/am/hmo;->fto(I)I

    move-result p4

    const/16 p5, 0xf

    if-eq p4, p5, :cond_3

    const/4 p5, 0x3

    if-gt p4, p5, :cond_4

    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p7, Lcom/android/server/am/StartAppRecorder$zta;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    iget-object p5, p5, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->label:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/k;->kth(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: continuous requests service"

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected gwm(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/k;->kth:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/k;->kth:Ljava/lang/String;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic ibl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/k;->bvj()V

    return-void
.end method

.method protected igw()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/k;->wtn:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/k;->igw:I

    return-void
.end method

.method protected obl(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

.method protected oxb(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GMS] mIsGMSRestricted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/am/k;->sis:Z

    return-void
.end method

.method protected rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/StartAppRecorder$zta;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/k;->rtg:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p5, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: implict intent activity"

    :goto_0
    iput-object p0, p5, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    return-void

    :cond_0
    sget-boolean p4, Lcom/android/server/am/k;->veq:Z

    if-eqz p4, :cond_2

    sget-object p4, Lcom/android/server/am/k;->cgv:Ljava/util/List;

    sget-object v0, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/am/hmo;->fto(I)I

    move-result p4

    const/16 v0, 0xf

    if-eq p4, v0, :cond_1

    const/4 v0, 0x3

    if-gt p4, v0, :cond_2

    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p5, Lcom/android/server/am/StartAppRecorder$zta;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    iget-object v0, v0, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->label:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/k;->kth(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p5, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: continuous requests service"

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/StartAppRecorder$zta;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/am/hmo;->c(I)Z

    move-result p4

    if-nez p4, :cond_0

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p5, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: running provider"

    :goto_0
    iput-object p0, p5, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/android/server/am/hmo;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p5, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: widget provider"

    goto :goto_0

    :cond_1
    sget-boolean p4, Lcom/android/server/am/k;->veq:Z

    if-eqz p4, :cond_3

    sget-object p4, Lcom/android/server/am/k;->cgv:Ljava/util/List;

    sget-object v0, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->tsu:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_3

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/am/hmo;->fto(I)I

    move-result p4

    const/16 v0, 0xf

    if-eq p4, v0, :cond_2

    const/4 v0, 0x3

    if-gt p4, v0, :cond_3

    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p5, Lcom/android/server/am/StartAppRecorder$zta;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    iget-object v0, v0, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->label:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/k;->kth(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p5, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "CommonPolicy: continuous requests service"

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected ugm(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/k;->bio:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/k;->bio:Ljava/lang/String;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method protected vdb(Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/k;->veq:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/k;->cgv:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/am/hmo;->ire()Lcom/android/server/am/hmo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/hmo;->fto(I)I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/k;->igw()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " # "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/k;->zgw(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected wtn()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # allowRequestEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/k;->veq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # allowRequestTimes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/k;->fto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # allowRequestDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/k;->lqr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # allowRequestList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/k;->cgv:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump # mGMSBindActionList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/k;->tsu:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mIsGMSRestricted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/k;->sis:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/k;->vju:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump # mSpellCheckerServices:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/k;->vju:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    sget-object v0, Lcom/android/server/am/k;->bud:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump # mTTSServices:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/k;->bud:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/k;->les:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/android/server/am/k;->les:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dump # mSyncAdapterServices i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " s:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mImplictIntentActions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/k;->rtg:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mFrozenReceiverBlockActions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/k;->ssp:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mWidgetsIntentActions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/k;->cno:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mCurrentIMEPackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/k;->kth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mCurrentWallpaperPackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/k;->bio:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method
