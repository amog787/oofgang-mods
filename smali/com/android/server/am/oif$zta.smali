.class Lcom/android/server/am/oif$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/oif;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/oif;


# direct methods
.method constructor <init>(Lcom/android/server/am/oif;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const-string v4, "ExtBatteryStatsService"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/am/oif;->sis(Lcom/android/server/am/oif;J)J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==MSG_SCREEN_OFF== at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {p0}, Lcom/android/server/am/oif;->zta(Lcom/android/server/am/oif;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/am/oif;->kth(Lcom/android/server/am/oif;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==MSG_COLLECT_COUNT_CHG== mMaxDumpCount: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {v0}, Lcom/android/server/am/oif;->cno(Lcom/android/server/am/oif;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {p1}, Lcom/android/server/am/oif;->cno(Lcom/android/server/am/oif;)I

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "oops, disable the entire proto detail mechanism"

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v3, v1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_DUMP_DEBUG== preFix: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bfilter: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    :goto_1
    invoke-static {p0, p1, v3}, Lcom/android/server/am/oif;->bio(Lcom/android/server/am/oif;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Z)V

    goto/16 :goto_5

    :cond_1
    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    goto :goto_1

    :pswitch_3
    const-string p1, "==MSG_CONNECTIVITY_CHANGE=="

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {p0}, Lcom/android/server/am/oif;->igw(Lcom/android/server/am/oif;)I

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/am/oif;->gck(Lcom/android/server/am/oif;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==MSG_DEEPSLEEP_CHANGE== mUnderDeepSleep: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {v0}, Lcom/android/server/am/oif;->wtn(Lcom/android/server/am/oif;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {p1}, Lcom/android/server/am/oif;->wtn(Lcom/android/server/am/oif;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {p0}, Lcom/android/server/am/oif;->dma(Lcom/android/server/am/oif;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object p0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    goto/16 :goto_5

    :pswitch_5
    const-string p1, "==MSG_CLEAR_TIME=="

    :goto_2
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    iput-wide v1, p0, Lcom/android/server/am/oif;->veq:J

    goto :goto_5

    :pswitch_6
    const-string v0, "==MSG_LEVEL_DROP_SHOT== START++"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {v0}, Lcom/android/server/am/oif;->cno(Lcom/android/server/am/oif;)I

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "disabled, just return..."

    :goto_3
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {v0}, Lcom/android/server/am/oif;->ywr(Lcom/android/server/am/oif;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {v0}, Lcom/android/server/am/oif;->oif(Lcom/android/server/am/oif;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v2, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {v2}, Lcom/android/server/am/oif;->oif(Lcom/android/server/am/oif;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    invoke-static {v0, v1}, Lcom/android/server/am/oif;->qbh(Lcom/android/server/am/oif;Lcom/android/internal/os/BatteryStatsHelper;)Lcom/android/internal/os/BatteryStatsHelper;

    const-string v0, "Init BatteryStatsHelper ok"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {v0}, Lcom/android/server/am/oif;->bvj(Lcom/android/server/am/oif;)V

    iget-object v0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/oif;->you(Lcom/android/server/am/oif;Lnet/oneplus/odm/OpDeviceManagerInjector;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    goto :goto_4

    :cond_6
    const-string p0, "Init BatteryStatsHelper fail"

    goto :goto_3

    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/server/am/oif$zta;->zta:Lcom/android/server/am/oif;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/oif$wtn;

    invoke-static {p0, p1}, Lcom/android/server/am/oif;->tsu(Lcom/android/server/am/oif;Lcom/android/server/am/oif$wtn;)V

    const-string p0, "==MSG_LEVEL_DROP_SHOT== END--"

    goto/16 :goto_0

    :cond_8
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1e6d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
