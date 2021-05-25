.class public Lcom/android/server/am/StartAppSpecialUidsPolicy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;
    }
.end annotation


# static fields
.field protected static final cjf:Ljava/lang/String; = "SpecialUidsPolicy: caller is a nfc app"

.field protected static final ear:Ljava/lang/String; = "SpecialUidsPolicy: caller is a assistant app"

.field private static fto:Lcom/android/server/am/StartAppSpecialUidsPolicy; = null

.field protected static final gwm:Ljava/lang/String; = "SpecialUidsPolicy: callee is a hide launcher app"

.field protected static final hmo:Ljava/lang/String; = "SpecialUidsPolicy: callee is a high power usage app"

.field protected static final ibl:Ljava/lang/String; = "SpecialUidsPolicy: callee is a special app"

.field protected static final ire:Ljava/lang/String; = "SpecialUidsPolicy: caller is a accessibility app"

.field private static lqr:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final obl:Ljava/lang/String; = "SpecialUidsPolicy: caller is a sms app"

.field protected static final oxb:Ljava/lang/String; = "SpecialUidsPolicy: caller is a launcher app"

.field protected static final ugm:Ljava/lang/String; = "SpecialUidsPolicy: caller is a system app"

.field protected static final vdb:Ljava/lang/String; = "SpecialUidsPolicy: callee has same uid as caller\'s"

.field protected static final zgw:Ljava/lang/String; = "SpecialUidsPolicy: caller is a dialer app"


# instance fields
.field private bio:I

.field private bvj:Landroid/content/BroadcastReceiver;

.field private cno:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dma:Landroid/content/ContentResolver;

.field private gck:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private igw:I

.field private kth:I

.field private oif:Landroid/content/BroadcastReceiver;

.field private qbh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:Z

.field private sis:Lcom/android/server/am/AppRecordManagerService;

.field private ssp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Lcom/android/internal/app/AssistUtils;

.field private wtn:I

.field private you:Landroid/content/pm/PackageManager;

.field private ywr:Landroid/database/ContentObserver;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->lqr:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/StartAppSpecialUidsPolicy$zta;

    invoke-static {}, Lcom/android/server/am/lqr;->ire()Lcom/android/server/am/lqr;

    sget-object v1, Lcom/android/server/am/lqr;->s:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/StartAppSpecialUidsPolicy$zta;-><init>(Lcom/android/server/am/StartAppSpecialUidsPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ywr:Landroid/database/ContentObserver;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.oneplus"

    const-string v2, "cts"

    const-string v3, "clock"

    const-string v4, "alarm"

    const-string v5, "calendar"

    const-string v6, "plan"

    const-string v7, "mail"

    const-string v8, "test"

    const-string v9, "com.nearme.gamecenter"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->qbh:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/StartAppSpecialUidsPolicy$you;

    invoke-direct {v0, p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy$you;-><init>(Lcom/android/server/am/StartAppSpecialUidsPolicy;)V

    iput-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->oif:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/StartAppSpecialUidsPolicy$sis;

    invoke-direct {v0, p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy$sis;-><init>(Lcom/android/server/am/StartAppSpecialUidsPolicy;)V

    iput-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->bvj:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->dma:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->you:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->sis:Lcom/android/server/am/AppRecordManagerService;

    new-instance p1, Lcom/android/internal/app/AssistUtils;

    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zta:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->tsu:Lcom/android/internal/app/AssistUtils;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ssp:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gck:Ljava/util/Set;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zta:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->oif:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zta:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->bvj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->dma:Landroid/content/ContentResolver;

    const-string v0, "dialer_default_application"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ywr:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->dma:Landroid/content/ContentResolver;

    const-string v0, "sms_default_application"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ywr:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->dma:Landroid/content/ContentResolver;

    const-string v0, "assistant"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ywr:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->dma:Landroid/content/ContentResolver;

    const-string v0, "nfc_payment_default_component"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ywr:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object p1, Lcom/android/server/am/lqr;->s:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/bio;

    invoke-direct {v0, p0}, Lcom/android/server/am/bio;-><init>(Lcom/android/server/am/StartAppSpecialUidsPolicy;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private bio(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->qbh:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static dma(Landroid/content/Context;)Lcom/android/server/am/StartAppSpecialUidsPolicy;
    .locals 1

    sget-object v0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->fto:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->fto:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    :cond_0
    sget-object p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->fto:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    return-object p0
.end method

.method private igw(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->qbh(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic oif()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ugm()V

    invoke-direct {p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zgw()V

    invoke-virtual {p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gck()V

    return-void
.end method

.method private qbh(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->sis:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRecordManagerService;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->you:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static rtg(I)V
    .locals 2

    sget-object v0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->lqr:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/StartAppSpecialUidsPolicy;->lqr:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

.method static synthetic sis(Lcom/android/server/am/StartAppSpecialUidsPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->rtg:Z

    return p1
.end method

.method private ugm()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zta:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/lqr;->ire()Lcom/android/server/am/lqr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/lqr;->lqr(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->bio:I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zta:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/lqr;->ire()Lcom/android/server/am/lqr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/lqr;->lqr(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->kth:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->tsu:Lcom/android/internal/app/AssistUtils;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/lqr;->ire()Lcom/android/server/am/lqr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/lqr;->lqr(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->igw:I

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zta:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/lqr;->ire()Lcom/android/server/am/lqr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/lqr;->lqr(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->wtn:I

    :cond_3
    return-void
.end method

.method private wtn(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->qbh(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno:Ljava/util/Set;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic you(Lcom/android/server/am/StartAppSpecialUidsPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->zgw()V

    return-void
.end method

.method public static ywr(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->lqr:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/StartAppSpecialUidsPolicy;->lqr:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

.method private zgw()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->you:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-static {}, Lcom/android/server/am/lqr;->ire()Lcom/android/server/am/lqr;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/server/am/lqr;->lqr(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/StartAppSpecialUidsPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ugm()V

    return-void
.end method


# virtual methods
.method public synthetic bvj()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->oif()V

    return-void
.end method

.method public cno(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Lcom/android/server/am/StartAppRecorder$zta;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->kth(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Lcom/android/server/am/StartAppRecorder$zta;Lcom/android/server/am/ServiceRecord;)V

    return-void
.end method

.method protected gck()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mHighPowerUsageUids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ssp:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump # mLauncherAppUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mDefaultSMSUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->kth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mDefaultDialerUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->bio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mAssistantUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->igw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mNFCUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->wtn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mHideLaucherApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/StartAppSpecialUidsPolicy;->lqr:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mAccessibilityServiceUids:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gck:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected gwm(I)V
    .locals 1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ssp:Ljava/util/Set;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected ibl(I)V
    .locals 1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gck:Ljava/util/Set;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public kth(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Lcom/android/server/am/StartAppRecorder$zta;Lcom/android/server/am/ServiceRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->sis:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppRecordManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    if-eq p5, p1, :cond_1

    sget-object p1, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->you:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    if-ne p5, p1, :cond_0

    if-eqz p7, :cond_0

    iget-object p1, p7, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/am/lqr;->ire()Lcom/android/server/am/lqr;

    move-result-object p1

    iget-object p7, p7, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p7, p7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p7}, Lcom/android/server/am/lqr;->vdw(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: caller is a system app"

    :goto_1
    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->bio(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: callee is a special app"

    goto :goto_1

    :cond_2
    if-ne p3, p4, :cond_5

    sget-object p1, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->rtg:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    if-ne p5, p1, :cond_3

    invoke-static {}, Lcom/android/server/am/lqr;->ire()Lcom/android/server/am/lqr;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/server/am/lqr;->c(I)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    if-ne p5, p1, :cond_4

    invoke-static {}, Lcom/android/server/am/lqr;->ire()Lcom/android/server/am/lqr;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/server/am/lqr;->c(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: callee has same uid as caller\'s"

    goto :goto_1

    :cond_5
    invoke-static {p4}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ywr(I)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: callee is a hide launcher app"

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    if-ne p5, p1, :cond_7

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: caller is a launcher app"

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->bio:I

    if-ne p1, p3, :cond_8

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: caller is a dialer app"

    goto :goto_1

    :cond_8
    iget p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->kth:I

    if-ne p1, p3, :cond_9

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: caller is a sms app"

    goto :goto_1

    :cond_9
    iget p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->igw:I

    if-ne p1, p3, :cond_a

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: caller is a assistant app"

    goto/16 :goto_1

    :cond_a
    iget p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->wtn:I

    if-ne p1, p3, :cond_b

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: caller is a nfc app"

    goto/16 :goto_1

    :cond_b
    iget-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gck:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: caller is a accessibility app"

    goto/16 :goto_1

    :cond_c
    iget-object p1, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ssp:Ljava/util/Set;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->rtg:Z

    if-eqz p0, :cond_d

    sget-object p0, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    if-eq p5, p0, :cond_d

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SpecialUidsPolicy: callee is a high power usage app"

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method protected ssp(I)V
    .locals 1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ssp:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected tsu(I)V
    .locals 1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gck:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected vdb(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gck:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gck:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
