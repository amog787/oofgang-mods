.class public Lcom/android/server/OnePlusUtil;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusUtil$sis;,
        Lcom/android/server/OnePlusUtil$zta;,
        Lcom/android/server/OnePlusUtil$you;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.oputil.debug"

.field private static sDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusUtil;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OnePlusUtil;->sDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean p0, Lcom/android/server/OnePlusUtil;->sDebug:Z

    const-string v0, "persist.sys.oputil.debug"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/OnePlusUtil;->sDebug:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusUtil;->sDebug:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusUtil;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method private dumpUtil(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const/4 p0, 0x2

    aget-object v0, p2, p0

    const-string v1, "fw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/OnePlusUtil$you;->sis(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    aget-object v0, p2, p0

    const-string v1, "front"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/OnePlusUtil$zta;->zta(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_1
    aget-object p0, p2, p0

    const-string p2, "gesture"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusUtil$sis;->you()Lcom/android/server/OnePlusUtil$sis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/OnePlusUtil$sis;->zta(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_2
    const-string p0, "********************** Help begin:**********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "1 dump all floating windows"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys activity log util fw"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "----------------------------------"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "2 dump front monitor"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys activity log util front"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "********************** Help end.  **********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addUidtoTouchWindowUids(IILjava/lang/String;III)V
    .locals 7

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/OnePlusUtil$you;->zta(IILjava/lang/String;III)V

    return-void
.end method

.method public dynamicallyConfigAMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    const-string v1, "util"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusUtil;->dumpUtil(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/am/kth;->zta(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    return-void
.end method

.method public dynamicallyConfigDisplayLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/display/DisplayManagerServiceDynamicLogConfig;->dynamicallyConfigLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public dynamicallyConfigPMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/bio;->zta(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    return-void
.end method

.method public dynamicallyConfigWMSLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/oxb;->zta(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    return-void
.end method

.method public onFindFocusedWindow()V
    .locals 0

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$you;->gck()V

    return-void
.end method

.method public onFling(I)V
    .locals 0

    invoke-static {}, Lcom/android/server/OnePlusUtil$sis;->you()Lcom/android/server/OnePlusUtil$sis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/OnePlusUtil$sis;->rtg(I)V

    return-void
.end method

.method public onTouch(Z)V
    .locals 0

    invoke-static {}, Lcom/android/server/OnePlusUtil$sis;->you()Lcom/android/server/OnePlusUtil$sis;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/OnePlusUtil$sis;->ssp(Z)V

    return-void
.end method

.method public setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/OnePlusUtil$zta;->wtn(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
