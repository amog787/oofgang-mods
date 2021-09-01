.class public Lcom/android/settings/FallbackHome;
.super Landroid/app/Activity;
.source "FallbackHome.java"


# instance fields
.field private final mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

.field private mHandler:Landroid/os/Handler;

.field private final mProgressTimeoutRunnable:Ljava/lang/Runnable;

.field private mProvisioned:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWallManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/-$$Lambda$FallbackHome$t1fq3k7x_PY-DiX5Fz-YbaIlCdg;

    invoke-direct {v0, p0}, Lcom/android/settings/-$$Lambda$FallbackHome$t1fq3k7x_PY-DiX5Fz-YbaIlCdg;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/android/settings/FallbackHome$1;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$1;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 129
    new-instance v0, Lcom/android/settings/FallbackHome$2;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$2;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/android/settings/FallbackHome$4;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$4;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FallbackHome;Landroid/app/WallpaperColors;I)I
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/FallbackHome;->updateVisibilityFlagsFromColors(Landroid/app/WallpaperColors;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/FallbackHome;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->maybeFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager$OnColorsChangedListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->fallback_home_finishing_boot:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x10c000d

    .line 59
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private loadWallpaperColors(I)V
    .locals 1

    .line 137
    new-instance v0, Lcom/android/settings/FallbackHome$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/FallbackHome$3;-><init>(Lcom/android/settings/FallbackHome;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 160
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private maybeFinish()V
    .locals 5

    .line 164
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FallbackHome"

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "User unlocked but no home; let\'s hope someone enables one soon?"

    .line 175
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string v0, "User unlocked and real home found; let\'s go!"

    .line 178
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 179
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateVisibilityFlagsFromColors(Landroid/app/WallpaperColors;I)I
    .locals 0

    .line 189
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    or-int/lit16 p0, p2, 0x2000

    or-int/lit8 p0, p0, 0x10

    return p0

    :cond_0
    and-int/lit16 p0, p2, -0x2001

    and-int/lit8 p0, p0, -0x11

    return p0
.end method


# virtual methods
.method public synthetic lambda$new$0$FallbackHome()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->lambda$new$0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/FallbackHome;->mProvisioned:Z

    if-nez v1, :cond_1

    .line 87
    sget p1, Lcom/android/settings/R$style;->FallbackHome_SetupWizard:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    const/16 p1, 0x1006

    goto :goto_0

    :cond_1
    const/16 p1, 0x600

    .line 95
    :goto_0
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_2

    const-string v0, "FallbackHome"

    const-string v1, "Wallpaper manager isn\'t ready, can\'t listen to color changes!"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/FallbackHome;->loadWallpaperColors(I)V

    .line 101
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->maybeFinish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/FallbackHome;->mProvisioned:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
