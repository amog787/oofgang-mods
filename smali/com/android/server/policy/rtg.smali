.class public Lcom/android/server/policy/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/policy/IOpShutdownChordManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/rtg$you;
    }
.end annotation


# static fields
.field private static final cjf:J = 0x96L

.field private static final ear:J = 0x2bcL

.field private static final fto:I = 0x20000000

.field private static final gwm:I = 0xe

.field private static hmo:I = 0x0

.field private static final ire:Ljava/lang/String; = "quick_turn_on_voice_assistant"

.field private static final lqr:I = 0x0

.field private static final obl:J = 0x1f4L

.field private static final oxb:J = 0x7d0L

.field private static final ugm:I = 0x19

.field private static final vdb:Z

.field private static final zgw:J = 0x1f4L


# instance fields
.field private bio:Z

.field private bvj:Lcom/android/server/policy/PhoneWindowManager;

.field private cno:Z

.field private dma:J

.field private gck:J

.field private ibl:Z

.field private igw:I

.field private kth:Z

.field private oif:Landroid/os/Handler;

.field private qbh:Landroid/content/Context;

.field private rtg:Z

.field private sis:Z

.field private ssp:Z

.field private tsu:Z

.field private wtn:J

.field private you:Z

.field volatile ywr:Z

.field private final zta:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x103

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/rtg;->vdb:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/rtg;->zta:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/rtg;->dma:J

    return-void
.end method

.method private sis(Landroid/view/KeyEvent;ZZ)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/rtg;->ywr:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/rtg;->bvj:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/rtg;->qbh:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    const/16 p3, 0x19

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object p3, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/policy/rtg;->igw:I

    int-to-long v1, v1

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/policy/rtg;->bvj:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private tsu(Landroid/view/KeyEvent;Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/policy/rtg;->you:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/rtg;->sis:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/rtg;->tsu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/rtg;->cno:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/rtg;->wtn:J

    const-wide/16 v4, 0x2bc

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/policy/rtg;->gck:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/rtg;->rtg:Z

    iget-object v1, p0, Lcom/android/server/policy/rtg;->bvj:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/rtg;->ywr:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/rtg;->bvj:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean p1, p0, Lcom/android/server/policy/rtg;->bio:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/policy/rtg;->igw:I

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/policy/rtg;->bvj:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/policy/rtg;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/rtg;->bvj:Lcom/android/server/policy/PhoneWindowManager;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/policy/rtg;->qbh:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/policy/rtg;->bvj:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/rtg;->bio:Z

    iput p1, p0, Lcom/android/server/policy/rtg;->igw:I

    new-instance p2, Lcom/android/server/policy/rtg$you;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/policy/rtg$you;-><init>(Lcom/android/server/policy/rtg;Lcom/android/server/policy/rtg$zta;)V

    iput-object p2, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    sget-boolean p2, Lcom/android/server/policy/rtg;->vdb:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    iput-boolean p3, p0, Lcom/android/server/policy/rtg;->kth:Z

    sput p3, Lcom/android/server/policy/rtg;->hmo:I

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/rtg;->kth:Z

    sput p1, Lcom/android/server/policy/rtg;->hmo:I

    :goto_0
    sget-boolean p2, Lcom/android/server/policy/rtg;->vdb:Z

    iput-boolean p2, p0, Lcom/android/server/policy/rtg;->you:Z

    iget-object p2, p0, Lcom/android/server/policy/rtg;->qbh:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "device_provisioned"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_1

    move p1, p3

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/policy/rtg;->ibl:Z

    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Ljava/lang/Long;
    .locals 12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/policy/rtg;->you:Z

    if-eqz v4, :cond_5

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/rtg;->sis:Z

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/rtg;->tsu:Z

    if-nez v0, :cond_3

    iget-wide v6, p0, Lcom/android/server/policy/rtg;->gck:J

    iget-wide v8, p0, Lcom/android/server/policy/rtg;->dma:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/rtg;->gck:J

    const-wide/16 v10, 0x2bc

    add-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    new-instance p0, Ljava/lang/Long;

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    :cond_3
    const/16 v0, 0x18

    if-ne v2, v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/rtg;->rtg:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    iput-wide v4, p0, Lcom/android/server/policy/rtg;->dma:J

    iput-boolean v3, p0, Lcom/android/server/policy/rtg;->rtg:Z

    :cond_4
    new-instance p0, Ljava/lang/Long;

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p0

    :cond_5
    return-object v1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 5

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/android/server/policy/rtg;->cno:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/policy/rtg;->you()V

    iput-boolean v0, p0, Lcom/android/server/policy/rtg;->cno:Z

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/rtg;->cno:Z

    goto :goto_2

    :cond_3
    const/16 v4, 0x18

    if-ne v3, v4, :cond_6

    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/policy/rtg;->ssp:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_4

    iput-boolean v0, p0, Lcom/android/server/policy/rtg;->ssp:Z

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/policy/rtg;->sis:Z

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_6

    iput-boolean v0, p0, Lcom/android/server/policy/rtg;->sis:Z

    iput-boolean v1, p0, Lcom/android/server/policy/rtg;->rtg:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/rtg;->gck:J

    invoke-virtual {p0}, Lcom/android/server/policy/rtg;->you()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/rtg;->tsu(Landroid/view/KeyEvent;Z)V

    goto :goto_2

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/policy/rtg;->ssp:Z

    iput-boolean v1, p0, Lcom/android/server/policy/rtg;->sis:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/policy/rtg;->dma:J

    :cond_6
    :goto_2
    return-void
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZZZZI)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_4

    :cond_0
    if-eqz p4, :cond_4

    iget-boolean p3, p0, Lcom/android/server/policy/rtg;->you:Z

    if-eqz p3, :cond_4

    iput-boolean v0, p0, Lcom/android/server/policy/rtg;->ywr:Z

    iget-boolean p3, p0, Lcom/android/server/policy/rtg;->tsu:Z

    const/4 p4, 0x1

    if-nez p3, :cond_1

    iput-boolean p5, p0, Lcom/android/server/policy/rtg;->bio:Z

    iput p6, p0, Lcom/android/server/policy/rtg;->igw:I

    iput-boolean p4, p0, Lcom/android/server/policy/rtg;->tsu:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/rtg;->wtn:J

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/rtg;->tsu(Landroid/view/KeyEvent;Z)V

    :cond_1
    iget-boolean p3, p0, Lcom/android/server/policy/rtg;->kth:Z

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/android/server/policy/rtg;->ibl:Z

    if-nez p3, :cond_3

    :cond_2
    iget-boolean p3, p0, Lcom/android/server/policy/rtg;->ywr:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/server/policy/rtg;->bvj:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean p3, p3, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez p3, :cond_3

    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/policy/rtg;->sis(Landroid/view/KeyEvent;ZZ)V

    :cond_3
    return p4

    :cond_4
    return v0
.end method

.method public interceptPowerKeyUp()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/rtg;->tsu:Z

    invoke-virtual {p0}, Lcom/android/server/policy/rtg;->you()V

    iget-boolean v1, p0, Lcom/android/server/policy/rtg;->sis:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/policy/rtg;->you:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    const-string p0, "quick_turn_on_voice_assistant"

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p0, "device_provisioned"

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public updateSettings(Landroid/content/ContentResolver;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/rtg;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "quick_turn_on_voice_assistant"

    sget v2, Lcom/android/server/policy/rtg;->hmo:I

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/rtg;->kth:Z

    const-string v1, "device_provisioned"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/policy/rtg;->ibl:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public you()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/rtg;->you:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/rtg;->bvj:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v0, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/rtg;->you:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/rtg;->bio:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/rtg;->oif:Landroid/os/Handler;

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method
