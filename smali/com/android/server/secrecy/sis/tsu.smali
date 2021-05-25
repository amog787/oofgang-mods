.class public Lcom/android/server/secrecy/sis/tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/sis/tsu$zta;
    }
.end annotation


# static fields
.field private static gck:J = 0x278d00L

.field private static igw:Ljava/lang/String; = "SecrecyService.ResetCountDownTimer"

.field private static wtn:J = 0x15180L


# instance fields
.field private bio:J

.field private cno:Landroid/app/PendingIntent;

.field private kth:J

.field private rtg:Landroid/app/AlarmManager;

.field private final sis:Ljava/lang/String;

.field private ssp:Landroid/content/Intent;

.field private tsu:Lcom/android/server/secrecy/sis/tsu$zta;

.field private final you:Lcom/android/server/secrecy/sis/sis;

.field private final zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/secrecy/sis/sis;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.secrecy.policyfactor.invalid.expire."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/secrecy/sis/tsu;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/sis/tsu;->sis:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/secrecy/sis/tsu;->zta:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/secrecy/sis/tsu;->you:Lcom/android/server/secrecy/sis/sis;

    invoke-direct {p0}, Lcom/android/server/secrecy/sis/tsu;->rtg()V

    return-void
.end method

.method private rtg()V
    .locals 4

    new-instance v0, Lcom/android/server/secrecy/sis/tsu$zta;

    invoke-direct {v0, p0, p0}, Lcom/android/server/secrecy/sis/tsu$zta;-><init>(Lcom/android/server/secrecy/sis/tsu;Lcom/android/server/secrecy/sis/tsu;)V

    iput-object v0, p0, Lcom/android/server/secrecy/sis/tsu;->tsu:Lcom/android/server/secrecy/sis/tsu$zta;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/secrecy/sis/tsu;->sis:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/secrecy/sis/tsu;->zta:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/secrecy/sis/tsu;->tsu:Lcom/android/server/secrecy/sis/tsu$zta;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/secrecy/sis/tsu;->sis:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/secrecy/sis/tsu;->ssp:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/secrecy/sis/tsu;->zta:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/sis/tsu;->cno:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/server/secrecy/sis/tsu;->zta:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/secrecy/sis/tsu;->rtg:Landroid/app/AlarmManager;

    sget-wide v0, Lcom/android/server/secrecy/sis/tsu;->wtn:J

    sget-wide v2, Lcom/android/server/secrecy/sis/tsu;->gck:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/secrecy/sis/tsu;->cno(JJ)V

    return-void
.end method

.method static synthetic zta()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/secrecy/sis/tsu;->igw:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cno(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/secrecy/sis/tsu;->bio:J

    iput-wide p3, p0, Lcom/android/server/secrecy/sis/tsu;->kth:J

    sget-object p1, Lcom/android/server/secrecy/sis/tsu;->igw:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateCountDownTime, mCountDownTimeForMac = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/server/secrecy/sis/tsu;->bio:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/secrecy/sis/ssp/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/secrecy/sis/tsu;->igw:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateCountDownTime, mCountDownTimeForId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/server/secrecy/sis/tsu;->kth:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/Throwable;

    const-string p3, "Kevin_DEBUG"

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, p2}, Lcom/android/server/secrecy/sis/ssp/zta;->you(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public sis(Ljava/lang/String;)J
    .locals 1

    const-string v0, "mac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Lcom/android/server/secrecy/sis/tsu;->bio:J

    return-wide p0

    :cond_0
    const-string v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide p0, p0, Lcom/android/server/secrecy/sis/tsu;->kth:J

    return-wide p0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public ssp(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/sis/tsu;->sis(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/secrecy/sis/tsu;->rtg:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/secrecy/sis/tsu;->cno:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/android/server/secrecy/sis/tsu;->rtg:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/secrecy/sis/tsu;->cno:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget-object p0, Lcom/android/server/secrecy/sis/tsu;->igw:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCountDown, countDownTime = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/secrecy/sis/ssp/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tsu()Lcom/android/server/secrecy/sis/sis;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/sis/tsu;->you:Lcom/android/server/secrecy/sis/sis;

    return-object p0
.end method

.method public you(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "ResetCountDownTimer dump"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCountDownTimeForMac  = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/secrecy/sis/tsu;->bio:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mCountDownTimeForId   = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/secrecy/sis/tsu;->kth:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
