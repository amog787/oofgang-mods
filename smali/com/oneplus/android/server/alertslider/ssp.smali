.class public Lcom/oneplus/android/server/alertslider/ssp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/alertslider/rtg;


# static fields
.field private static final cno:Ljava/lang/String; = "AlertSliderVibratorPolicy"

.field private static final kth:Z


# instance fields
.field rtg:Landroid/os/PowerManager$WakeLock;

.field private sis:Z

.field private final ssp:Ljava/lang/Runnable;

.field private tsu:Landroid/os/Handler;

.field private you:Landroid/os/Vibrator;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/alertslider/ssp;->kth:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oneplus/android/server/alertslider/ssp;->sis:Z

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/oneplus/android/server/alertslider/ssp;->tsu:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oneplus/android/server/alertslider/ssp;->rtg:Landroid/os/PowerManager$WakeLock;

    new-instance p2, Lcom/oneplus/android/server/alertslider/ssp$zta;

    invoke-direct {p2, p0}, Lcom/oneplus/android/server/alertslider/ssp$zta;-><init>(Lcom/oneplus/android/server/alertslider/ssp;)V

    iput-object p2, p0, Lcom/oneplus/android/server/alertslider/ssp;->ssp:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/ssp;->zta:Landroid/content/Context;

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/ssp;->you:Landroid/os/Vibrator;

    return-void
.end method

.method private bio()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->rtg:Landroid/os/PowerManager$WakeLock;

    const-string v1, "AlertSliderVibratorPolicy"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->zta:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->rtg:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->rtg:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/oneplus/android/server/alertslider/ssp;->kth:Z

    if-eqz v0, :cond_1

    const-string v0, "mWakeLock.acquire()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/ssp;->rtg:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_2
    return-void
.end method

.method static synthetic cno(Lcom/oneplus/android/server/alertslider/ssp;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/ssp;->zta:Landroid/content/Context;

    return-object p0
.end method

.method private igw()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->rtg:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/server/alertslider/ssp;->kth:Z

    if-eqz v0, :cond_0

    const-string v0, "AlertSliderVibratorPolicy"

    const-string v1, "mWakeLock.release()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/ssp;->rtg:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method static synthetic kth(Lcom/oneplus/android/server/alertslider/ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/ssp;->igw()V

    return-void
.end method

.method static synthetic rtg()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/alertslider/ssp;->kth:Z

    return v0
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/alertslider/ssp;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/ssp;->you:Landroid/os/Vibrator;

    return-object p0
.end method


# virtual methods
.method public sis(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/alertslider/ssp;->sis:Z

    return-void
.end method

.method public tsu()V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->sis:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AlertSliderVibratorPolicy"

    const-string v1, "setDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x61

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-wide/16 v4, 0xfa

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->tsu:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/ssp;->ssp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->you:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->you:Landroid/os/Vibrator;

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/ssp;->igw()V

    return-void

    :cond_1
    new-array v0, v0, [I

    const/16 v1, 0xc0

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/ssp;->bio()V

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/ssp;->you:Landroid/os/Vibrator;

    invoke-virtual {p0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_2
    return-void
.end method

.method public you()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->sis:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AlertSliderVibratorPolicy"

    const-string v1, "setUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x61

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->you:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->you:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancelNonSelfVibrate()V

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->tsu:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/ssp;->ssp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/ssp;->igw()V

    return-void

    :cond_1
    new-array v0, v0, [I

    const/16 v1, 0xc0

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/ssp;->you:Landroid/os/Vibrator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public zta()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/android/server/alertslider/ssp;->sis:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AlertSliderVibratorPolicy"

    const-string v1, "setMiddle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x61

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/ssp;->bio()V

    const/16 v0, 0x64

    const-string v1, "sys.vib.three.delay"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/ssp;->tsu:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/android/server/alertslider/ssp;->ssp:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/oneplus/android/server/alertslider/ssp;->tsu:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/ssp;->ssp:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    new-array v0, v0, [I

    const/16 v1, 0xc0

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/ssp;->bio()V

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/ssp;->you:Landroid/os/Vibrator;

    invoke-virtual {p0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/ssp;->you:Landroid/os/Vibrator;

    invoke-virtual {p0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
