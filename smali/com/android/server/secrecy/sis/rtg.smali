.class public Lcom/android/server/secrecy/sis/rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/sis/rtg$zta;,
        Lcom/android/server/secrecy/sis/rtg$you;
    }
.end annotation


# static fields
.field public static final cno:Ljava/lang/String; = "sys_secrecy_switch_list"

.field private static final rtg:Ljava/lang/String; = "data/system/sys_secrecy_switch_list.xml"

.field private static final ssp:Ljava/lang/String; = "system_ext/etc/sys_secrecy_switch_list.xml"


# instance fields
.field private sis:Lcom/android/server/secrecy/sis/rtg$you;

.field private final tsu:Lcom/android/server/secrecy/tsu/zta;

.field private final you:Lcom/android/server/secrecy/sis/rtg$zta;

.field private final zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/secrecy/sis/rtg$zta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "SecrecyService.SecrecySwitchHelper"

    iput-object p1, p0, Lcom/android/server/secrecy/sis/rtg;->zta:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/secrecy/tsu/zta;->sis()Lcom/android/server/secrecy/tsu/zta;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/secrecy/sis/rtg;->tsu:Lcom/android/server/secrecy/tsu/zta;

    new-instance p1, Lcom/android/server/secrecy/sis/rtg$you;

    invoke-direct {p1, p0, p2}, Lcom/android/server/secrecy/sis/rtg$you;-><init>(Lcom/android/server/secrecy/sis/rtg;Lcom/android/server/secrecy/sis/rtg$zta;)V

    iput-object p1, p0, Lcom/android/server/secrecy/sis/rtg;->sis:Lcom/android/server/secrecy/sis/rtg$you;

    iput-object p2, p0, Lcom/android/server/secrecy/sis/rtg;->you:Lcom/android/server/secrecy/sis/rtg$zta;

    :try_start_0
    const-string p0, "system_ext/etc/sys_secrecy_switch_list.xml"

    invoke-virtual {p1, p0}, Lcom/android/server/secrecy/sis/rtg$you;->kth(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/secrecy/sis/rtg;)Lcom/android/server/secrecy/tsu/zta;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/sis/rtg;->tsu:Lcom/android/server/secrecy/tsu/zta;

    return-object p0
.end method


# virtual methods
.method public bio()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/sis/rtg;->sis:Lcom/android/server/secrecy/sis/rtg$you;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg$you;->cno()Z

    move-result p0

    return p0
.end method

.method public cno()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/sis/rtg;->sis:Lcom/android/server/secrecy/sis/rtg$you;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg$you;->rtg()Z

    move-result p0

    return p0
.end method

.method public igw()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/secrecy/sis/rtg;->you:Lcom/android/server/secrecy/sis/rtg$zta;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/secrecy/sis/rtg$zta;->zta()V

    :cond_0
    const-string p0, "SecrecyService.SecrecySwitchHelper"

    const-string v0, "update SecrecySwitchHelper config"

    invoke-static {p0, v0}, Lcom/android/server/secrecy/sis/ssp/zta;->igw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public kth()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/secrecy/sis/rtg;->sis:Lcom/android/server/secrecy/sis/rtg$you;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg$you;->ssp()J

    move-result-wide v0

    return-wide v0
.end method

.method public rtg()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/sis/rtg;->sis:Lcom/android/server/secrecy/sis/rtg$you;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg$you;->sis()Z

    move-result p0

    return p0
.end method

.method public sis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/sis/rtg;->sis:Lcom/android/server/secrecy/sis/rtg$you;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg$you;->zta()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ssp()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/secrecy/sis/rtg;->sis:Lcom/android/server/secrecy/sis/rtg$you;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg$you;->tsu()J

    move-result-wide v0

    return-wide v0
.end method

.method public tsu()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/sis/rtg;->sis:Lcom/android/server/secrecy/sis/rtg$you;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg$you;->you()Z

    move-result p0

    return p0
.end method

.method public you(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "SecrecySwitchHelper dump"

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

    const-string v0, "support = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg;->bio()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activityswitch = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg;->tsu()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "logswitch = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg;->cno()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adb = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg;->rtg()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mac_timeout = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg;->kth()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "id_timeout = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/rtg;->ssp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
