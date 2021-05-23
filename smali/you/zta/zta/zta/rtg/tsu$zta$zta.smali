.class Lyou/zta/zta/zta/rtg/tsu$zta$zta;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/zta/zta/rtg/tsu$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field final synthetic zta:Lyou/zta/zta/zta/rtg/tsu$zta;


# direct methods
.method constructor <init>(Lyou/zta/zta/zta/rtg/tsu$zta;)V
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emergency call, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpLocMngrSrv"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    invoke-static {v0}, Lyou/zta/zta/zta/rtg/tsu$zta;->zta(Lyou/zta/zta/zta/rtg/tsu$zta;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "disable turning on location when 911"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "it is emergency call"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/tsu$zta;->you(Lyou/zta/zta/zta/rtg/tsu$zta;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/tsu$zta;->tsu(Lyou/zta/zta/zta/rtg/tsu$zta;)V

    iget-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/tsu$zta;->rtg(Lyou/zta/zta/zta/rtg/tsu$zta;)V

    iget-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/tsu$zta;->ssp(Lyou/zta/zta/zta/rtg/tsu$zta;)V

    iget-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/tsu$zta;->cno(Lyou/zta/zta/zta/rtg/tsu$zta;)V

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    invoke-static {p0, p2}, Lyou/zta/zta/zta/rtg/tsu$zta;->sis(Lyou/zta/zta/zta/rtg/tsu$zta;Z)Z

    const-string p0, "emergency call start, modify state done"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/tsu$zta;->kth(Lyou/zta/zta/zta/rtg/tsu$zta;)V

    iget-object p1, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    invoke-static {p1}, Lyou/zta/zta/zta/rtg/tsu$zta;->bio(Lyou/zta/zta/zta/rtg/tsu$zta;)V

    iget-object p0, p0, Lyou/zta/zta/zta/rtg/tsu$zta$zta;->zta:Lyou/zta/zta/zta/rtg/tsu$zta;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lyou/zta/zta/zta/rtg/tsu$zta;->sis(Lyou/zta/zta/zta/rtg/tsu$zta;Z)Z

    const-string p0, "emergency call end, restore state done"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
