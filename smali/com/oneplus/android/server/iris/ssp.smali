.class public Lcom/oneplus/android/server/iris/ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/iris/ssp$zta;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "oneplus_memc_video_theacme_summary"

.field private static final b:Ljava/lang/String; = "oneplus.intent.action.ONEPLUS_LAB_FEATURE_DETAILS"

.field private static final bud:Ljava/lang/String; = "com.android.settings"

.field private static final c:J = 0x6ddd00L

.field private static final cgv:Ljava/lang/String; = "notification_cancel"

.field private static final cjf:Ljava/lang/String; = "op_iris_memc_notification_switch"

.field private static final d:J = 0x5265c00L

.field private static final ear:Ljava/lang/String; = "op_iris_memc_notification_switch_copy"

.field private static final fto:Ljava/lang/String; = "op_memc_notification"

.field private static final hmo:Ljava/lang/String; = "reset_timer_action"

.field private static final ire:Ljava/lang/String; = "stop_memc_120hz"

.field private static final irq:Ljava/lang/String; = "oneplus_lab_feature_title"

.field private static final ivd:Ljava/lang/String; = "oneplus_memc_video_theacme_title"

.field private static final les:Ljava/lang/String; = "oneplus_lab_feature_toggle_count"

.field private static final lqr:Ljava/lang/String; = "notification_content"

.field private static final obl:Z

.field private static final oxb:Ljava/lang/String; = "op_iris_video_memc_extreme_status"

.field private static final qeg:Ljava/lang/String; = "oneplus_lab_feature_key"

.field private static final vdw:Ljava/lang/String; = "oneplus_lab_feature_Summary"

.field private static final veq:Ljava/lang/String; = "notification_turn_off"

.field private static final vju:Ljava/lang/String; = "notification_DELETE"

.field private static final zgw:Ljava/lang/String; = "OpIrisMEMCTimer"


# instance fields
.field private bio:J

.field private bvj:Landroid/app/PendingIntent;

.field private cno:Z

.field private dma:Landroid/app/AlarmManager;

.field private gck:Landroid/content/Context;

.field private gwm:Landroid/app/PendingIntent;

.field private ibl:Landroid/app/PendingIntent;

.field private igw:J

.field private kth:Z

.field private oif:Landroid/app/PendingIntent;

.field private qbh:Landroid/app/PendingIntent;

.field private rtg:Z

.field private sis:Z

.field private ssp:Z

.field private tsu:Z

.field private ugm:Landroid/app/PendingIntent;

.field private vdb:Lcom/oneplus/android/server/iris/ssp$zta;

.field private wtn:I

.field private you:Z

.field private ywr:Landroid/app/NotificationManager;

.field private zta:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/iris/ssp;->obl:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/android/server/iris/ssp;->zta:I

    iput-object p1, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/oneplus/android/server/iris/ssp;->bio:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/ssp;->sis:Z

    return-void
.end method

.method static synthetic bio(Lcom/oneplus/android/server/iris/ssp;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/iris/ssp;->ssp:Z

    return p0
.end method

.method private bvj()V
    .locals 7

    const-string v0, "OpIrisMEMCTimer"

    const-string v1, "sendNotification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->ywr:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/oneplus/android/server/iris/ssp;->zta:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const-string v2, "op_memc_notification"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->ywr:Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const v5, 0x50f0155

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/app/NotificationChannel;

    const/4 v6, 0x3

    invoke-direct {v5, v2, v1, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v5, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    move-object v1, v5

    :cond_0
    iget-object v2, p0, Lcom/oneplus/android/server/iris/ssp;->ywr:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->bvj:Landroid/app/PendingIntent;

    const/high16 v2, 0x8000000

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v5, "notification_content"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    invoke-static {v5, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->bvj:Landroid/app/PendingIntent;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->ibl:Landroid/app/PendingIntent;

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v5, "notification_turn_off"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    invoke-static {v5, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->ibl:Landroid/app/PendingIntent;

    :cond_2
    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->gwm:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v5, "notification_cancel"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    invoke-static {v5, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->gwm:Landroid/app/PendingIntent;

    :cond_3
    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->ugm:Landroid/app/PendingIntent;

    if-nez v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v5, "notification_DELETE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    invoke-static {v5, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->ugm:Landroid/app/PendingIntent;

    :cond_4
    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const v4, 0x50f0075

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/android/server/iris/ssp;->ibl:Landroid/app/PendingIntent;

    invoke-direct {v1, v3, v2, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Action$Builder;

    iget-object v4, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const v5, 0x50f0073

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/android/server/iris/ssp;->gwm:Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    const v3, 0x108008a

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const v5, 0x50f0076

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const v5, 0x106001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/android/server/iris/ssp;->bvj:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/android/server/iris/ssp;->ugm:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v3, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const v4, 0x50f0074

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->ywr:Landroid/app/NotificationManager;

    iget p0, p0, Lcom/oneplus/android/server/iris/ssp;->zta:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private cjf()V
    .locals 2

    const-string v0, "OpIrisMEMCTimer"

    const-string v1, "stopResetTiming"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->rtg:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->dma:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->oif:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->rtg:Z

    return-void
.end method

.method static synthetic cno(Lcom/oneplus/android/server/iris/ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/ssp;->cjf()V

    return-void
.end method

.method static synthetic dma(Lcom/oneplus/android/server/iris/ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/ssp;->obl()V

    return-void
.end method

.method static synthetic gck(Lcom/oneplus/android/server/iris/ssp;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/ssp;->ywr:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic igw(Lcom/oneplus/android/server/iris/ssp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/ssp;->ssp:Z

    return p1
.end method

.method static synthetic kth(Lcom/oneplus/android/server/iris/ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/ssp;->oif()V

    return-void
.end method

.method private obl()V
    .locals 6

    const-string v0, "string"

    const-string v1, "com.android.settings"

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "oneplus_memc_video_theacme_title"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "oneplus_memc_video_theacme_summary"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "oneplus.intent.action.ONEPLUS_LAB_FEATURE_DETAILS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "oneplus_lab_feature_toggle_count"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "oneplus_lab_feature_title"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "oneplus_lab_feature_Summary"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "oneplus_lab_feature_key"

    const-string v2, "op_iris_video_memc_extreme_status"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private oif()V
    .locals 2

    const-string v0, "OpIrisMEMCTimer"

    const-string v1, "resetTiming"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/oneplus/android/server/iris/ssp;->bio:J

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/ssp;->qbh()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->you:Z

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/ssp;->oxb()V

    return-void
.end method

.method private qbh()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/android/server/iris/ssp;->wtn:I

    const-string v1, "op_iris_memc_notification_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/iris/ssp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/ssp;->you:Z

    return p1
.end method

.method static synthetic sis(Lcom/oneplus/android/server/iris/ssp;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/iris/ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/ssp;->zgw()V

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/iris/ssp;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/iris/ssp;->wtn:I

    return p0
.end method

.method static synthetic wtn(Lcom/oneplus/android/server/iris/ssp;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/iris/ssp;->zta:I

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/iris/ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/ssp;->bvj()V

    return-void
.end method

.method private zgw()V
    .locals 6

    const-string v0, "OpIrisMEMCTimer"

    const-string v1, "startResetTiming"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->rtg:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->oif:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "reset_timer_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->oif:Landroid/app/PendingIntent;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->dma:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/oneplus/android/server/iris/ssp;->oif:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->rtg:Z

    return-void
.end method

.method static synthetic zta()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/iris/ssp;->obl:Z

    return v0
.end method


# virtual methods
.method public ear()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->tsu:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OpIrisMEMCTimer"

    const-string v1, "stopVideoTiming"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x6ddd00

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oneplus/android/server/iris/ssp;->igw:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oneplus/android/server/iris/ssp;->bio:J

    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->dma:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/ssp;->qbh:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->tsu:Z

    return-void
.end method

.method public gwm(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExtremeMEMCStatus enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisMEMCTimer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/ssp;->kth:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/ssp;->oxb()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/ssp;->ear()V

    :goto_0
    return-void
.end method

.method public ibl(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBatterySaverEnable enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisMEMCTimer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/ssp;->ear()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/ssp;->oxb()V

    :goto_0
    return-void
.end method

.method public ire()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->dma:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->ywr:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/ssp;->qbh()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->you:Z

    return-void
.end method

.method public oxb()V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->sis:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->you:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->tsu:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->ssp:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->kth:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "OpIrisMEMCTimer"

    const-string v1, "startVideoTiming"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/android/server/iris/ssp;->igw:J

    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->qbh:Landroid/app/PendingIntent;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "stop_memc_120hz"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->qbh:Landroid/app/PendingIntent;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->dma:Landroid/app/AlarmManager;

    iget-wide v2, p0, Lcom/oneplus/android/server/iris/ssp;->igw:J

    iget-wide v4, p0, Lcom/oneplus/android/server/iris/ssp;->bio:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/oneplus/android/server/iris/ssp;->qbh:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->tsu:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public ugm(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimerEnable enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisMEMCTimer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/iris/ssp;->sis:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/oneplus/android/server/iris/ssp;->cno:Z

    if-eqz p1, :cond_1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/android/server/iris/ssp;->cno:Z

    new-instance v2, Lcom/oneplus/android/server/iris/ssp$zta;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/iris/ssp$zta;-><init>(Lcom/oneplus/android/server/iris/ssp;)V

    iput-object v2, p0, Lcom/oneplus/android/server/iris/ssp;->vdb:Lcom/oneplus/android/server/iris/ssp$zta;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "stop_memc_120hz"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "reset_timer_action"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "notification_turn_off"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "notification_cancel"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "notification_DELETE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "notification_content"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/android/server/iris/ssp;->vdb:Lcom/oneplus/android/server/iris/ssp$zta;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/ssp;->cno:Z

    iget-object v2, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/android/server/iris/ssp;->vdb:Lcom/oneplus/android/server/iris/ssp$zta;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    iget-object v2, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/android/server/iris/ssp;->wtn:I

    const-string v4, "op_iris_memc_notification_switch_copy"

    invoke-static {v2, v4, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_3

    move v0, v1

    :cond_3
    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/android/server/iris/ssp;->wtn:I

    invoke-static {v0, v4, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/oneplus/android/server/iris/ssp;->gck:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/oneplus/android/server/iris/ssp;->wtn:I

    const-string v2, "op_iris_memc_notification_switch"

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/android/server/iris/ssp;->oif()V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/ssp;->cjf()V

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/ssp;->ear()V

    return-void
.end method

.method public vdb(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/iris/ssp;->wtn:I

    return-void
.end method

.method public ywr(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "------------Timer Status----------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTimerEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/ssp;->sis:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPauseVideoTiming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/ssp;->you:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVideoTimingStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/ssp;->tsu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mResetTimingStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/ssp;->rtg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsCharging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/ssp;->ssp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegisterBattery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/ssp;->cno:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsExtremeMemc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/iris/ssp;->kth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRemainPlayTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/android/server/iris/ssp;->bio:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/android/server/iris/ssp;->igw:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
