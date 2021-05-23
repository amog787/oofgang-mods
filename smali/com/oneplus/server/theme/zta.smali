.class public Lcom/oneplus/server/theme/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "com.oplus.permission.safe.OpThemeBroadcastPerm"

.field private static final bio:Ljava/lang/String; = "OnePlusThemeController"

.field private static final bud:Ljava/lang/String; = "oneplus_basiccolor_black"

.field private static final bvj:Ljava/lang/String; = "oneplus_fodicon"

.field public static final cgv:I = 0x1

.field private static final cjf:Ljava/lang/String; = "com.oem.intent.action.PKG_ADDED_UPDATED"

.field private static final dma:Ljava/lang/String; = "oneplus_dynamicfont"

.field private static final ear:Ljava/lang/String; = "android.settings.oneplus_theme_ready"

.field private static final fto:Ljava/lang/String; = "persist.sys.theme_first_launch"

.field private static final gck:Ljava/lang/String; = "oneplus_accentcolor"

.field private static final gwm:Ljava/lang/String; = "android.settings.oneplus_theme_enable"

.field private static final hmo:Ljava/lang/String; = "oneplus.change_white_theme_again"

.field private static final ibl:Ljava/lang/String; = "oneplus_dialog"

.field private static final igw:Z

.field private static final ire:Ljava/lang/String; = "com.oem.intent.action.parallel_overlay_ready"

.field private static final irq:Ljava/lang/String; = "oneplus_shape_circle"

.field private static ivd:Z = false

.field private static final les:Ljava/lang/String; = "oneplus_basiccolor_white"

.field private static final lqr:Ljava/lang/String; = "persist.sys.theme_version"

.field private static final obl:Ljava/lang/String; = "android.settings.OEM_FONT_MODE"

.field private static final oif:Ljava/lang/String; = "oneplus_fodanimation"

.field private static final oxb:Ljava/lang/String; = "android.settings.oneplus_basiccolor_ready"

.field private static final qbh:Ljava/lang/String; = "oneplus_icon"

.field private static final qeg:I = 0x1

.field private static final ugm:Ljava/lang/String; = "android.settings.oneplus_theme_disable"

.field private static final vdb:Ljava/lang/String; = "android.settings.oneplus_theme_enable_single"

.field private static vdw:Lcom/oneplus/server/theme/zta; = null

.field public static final veq:I = 0x2

.field public static final vju:I = 0x0

.field private static final wtn:Ljava/lang/String; = "oneplus_basiccolor"

.field private static final ywr:Ljava/lang/String; = "oneplus_panel"

.field private static final zgw:Ljava/lang/String; = "android.settings.oneplus_theme_disable_single"


# instance fields
.field private cno:Landroid/os/Handler;

.field private kth:Landroid/os/HandlerThread;

.field private rtg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sis:Landroid/app/IUiModeManager;

.field private ssp:Landroid/content/BroadcastReceiver;

.field private tsu:Landroid/os/IUserManager;

.field private you:Landroid/content/om/IOverlayManager;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/server/theme/zta;->igw:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/server/theme/zta;->vdw:Lcom/oneplus/server/theme/zta;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/server/theme/zta;->ivd:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/theme/zta;->rtg:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/oneplus/server/theme/zta;->igw:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusThemeController"

    const-string v1, "OnePlusThemeController, Construct called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/server/theme/zta;->bvj()V

    const-string p1, "user"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/server/theme/zta;->tsu:Landroid/os/IUserManager;

    const-string p1, "overlay"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/server/theme/zta;->you:Landroid/content/om/IOverlayManager;

    const-string p1, "uimode"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/server/theme/zta;->sis:Landroid/app/IUiModeManager;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput v0, p1, v0

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x502002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5020030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Lcom/oneplus/server/theme/zta;->rtg:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    invoke-static {p0}, Landroid/content/res/OpAccentColorUtils;->initForSystem(Landroid/content/Context;)V

    return-void
.end method

.method private bvj()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OnePlusThemeController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/theme/zta;->kth:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oneplus/server/theme/zta$zta;

    iget-object v1, p0, Lcom/oneplus/server/theme/zta;->kth:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/server/theme/zta$zta;-><init>(Lcom/oneplus/server/theme/zta;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/server/theme/zta;->cno:Landroid/os/Handler;

    return-void
.end method

.method private cno()V
    .locals 5

    sget-boolean v0, Lcom/oneplus/server/theme/zta;->ivd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/theme/zta;->cno:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sput-boolean v1, Lcom/oneplus/server/theme/zta;->ivd:Z

    const-string v0, "android.settings.oneplus_theme_ready"

    const-string v1, "com.android.settings"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/theme/zta;->oxb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dma(Landroid/content/Context;)Lcom/oneplus/server/theme/zta;
    .locals 1

    sget-object v0, Lcom/oneplus/server/theme/zta;->vdw:Lcom/oneplus/server/theme/zta;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/server/theme/zta;

    invoke-direct {v0, p0}, Lcom/oneplus/server/theme/zta;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/server/theme/zta;->vdw:Lcom/oneplus/server/theme/zta;

    :cond_0
    sget-object p0, Lcom/oneplus/server/theme/zta;->vdw:Lcom/oneplus/server/theme/zta;

    return-object p0
.end method

.method private gwm()Z
    .locals 3

    const-string p0, "ro.build.version.ota"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "persist.sys.theme_version"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "OnePlusThemeController"

    if-eqz v0, :cond_0

    const-string p0, "normal reboot"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "ota reboot"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private kth(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeFont. FontID "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", User "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusThemeController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-boolean p0, Lcom/oneplus/theme/OpFontHelperInjector;->sFeatureEnable:Z

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/OpFontControlInjector;->changeFontForUser(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private obl(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private oif()V
    .locals 5

    sget-boolean v0, Lcom/oneplus/server/theme/zta;->igw:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusThemeController"

    const-string v1, "initBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/server/theme/zta$you;

    invoke-direct {v0, p0}, Lcom/oneplus/server/theme/zta$you;-><init>(Lcom/oneplus/server/theme/zta;)V

    iput-object v0, p0, Lcom/oneplus/server/theme/zta;->ssp:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.settings.oneplus_theme_enable"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.settings.oneplus_theme_enable_single"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.settings.oneplus_theme_disable"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.settings.oneplus_theme_disable_single"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.parallel_overlay_ready"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "oneplus.change_white_theme_again"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/server/theme/zta;->ssp:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "com.oplus.permission.safe.OpThemeBroadcastPerm"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/server/theme/zta;->ssp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->ssp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private oxb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private qbh()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "oem_black_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OnePlusThemeController"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method static synthetic rtg(Lcom/oneplus/server/theme/zta;)Landroid/content/om/IOverlayManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->you:Landroid/content/om/IOverlayManager;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/server/theme/zta;)Landroid/app/IUiModeManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->sis:Landroid/app/IUiModeManager;

    return-object p0
.end method

.method private ssp()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    invoke-static {p0}, Landroid/content/res/OpAccentColorUtils;->changeGlobalAccentColor(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/server/theme/zta;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->zta:Landroid/content/Context;

    return-object p0
.end method

.method private ugm()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic you(Lcom/oneplus/server/theme/zta;)I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/theme/zta;->qbh()I

    move-result p0

    return p0
.end method

.method private ywr(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->you:Landroid/content/om/IOverlayManager;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/content/om/IOverlayManager;->getAllOverlays(I)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    iget-object v3, v2, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusThemeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method static synthetic zta(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/server/theme/zta;->ivd:Z

    return p0
.end method


# virtual methods
.method public bio(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableTheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusThemeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oneplus/server/theme/zta;->ywr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v2, Lcom/oneplus/server/theme/zta;->igw:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableTheme target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/server/theme/zta;->you:Landroid/content/om/IOverlayManager;

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-interface {v2, v0, v3, v4}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public gck(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusThemeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oneplus/server/theme/zta;->ywr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v2, Lcom/oneplus/server/theme/zta;->igw:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableTheme target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/server/theme/zta;->you:Landroid/content/om/IOverlayManager;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3, p2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ibl()V
    .locals 4

    const-string v0, "OnePlusThemeController"

    const-string v1, "OnePlusThemeController initTheme"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/server/theme/zta;->oif()V

    const-string v1, "persist.sys.theme_first_launch"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/server/theme/zta;->gwm()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/server/theme/zta;->qbh()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "themeModeStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", CurUiMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/server/theme/zta;->sis:Landroid/app/IUiModeManager;

    invoke-interface {v3}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const-string v1, "oneplus_basiccolor_white"

    invoke-virtual {p0, v1}, Lcom/oneplus/server/theme/zta;->wtn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/oneplus/server/theme/zta;->sis:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lcom/oneplus/server/theme/zta;->sis:Landroid/app/IUiModeManager;

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/app/IUiModeManager;->setNightMode(I)V

    goto :goto_0

    :cond_2
    const-string p0, "Strange theme status"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public igw(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableTheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusThemeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oneplus/server/theme/zta;->ywr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v2, Lcom/oneplus/server/theme/zta;->igw:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableTheme target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/server/theme/zta;->you:Landroid/content/om/IOverlayManager;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, p2}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public vdb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OnePlusThemeController"

    const-string v1, "processDisableThemeCategory"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "processDisableThemeCategory, category is null"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "processDisableThemeCategory, secondaryCategory is null"

    goto :goto_0

    :cond_1
    const-string v0, "oneplus_accentcolor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/server/theme/zta;->ssp()V

    goto :goto_1

    :cond_2
    const-string v0, "oneplus_dynamicfont"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/oneplus/server/theme/zta;->kth(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/server/theme/zta;->bio(Ljava/lang/String;)V

    const-string p2, "oneplus_basiccolor"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0}, Lcom/oneplus/server/theme/zta;->cno()V

    return-void
.end method

.method public wtn(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTheme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusThemeController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oneplus/server/theme/zta;->ywr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/oneplus/server/theme/zta;->igw:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableTheme target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/server/theme/zta;->you:Landroid/content/om/IOverlayManager;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4, v0}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public zgw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OnePlusThemeController"

    const-string v1, "processEnableThemeCategory"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "processThemeCategory, category is null"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "processThemeCategory, secondaryCategory is null"

    goto :goto_0

    :cond_1
    const-string v0, "oneplus_accentcolor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/server/theme/zta;->ssp()V

    goto :goto_1

    :cond_2
    const-string v0, "oneplus_dynamicfont"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/oneplus/server/theme/zta;->kth(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/server/theme/zta;->wtn(Ljava/lang/String;)V

    const-string p2, "oneplus_basiccolor"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.settings.oneplus_basiccolor_ready"

    invoke-direct {p0, p1}, Lcom/oneplus/server/theme/zta;->obl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/server/theme/zta;->cno()V

    return-void
.end method
