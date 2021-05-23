.class Lcom/android/server/am/OnePlusHighPowerDetector$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :cond_0
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x2710

    const v6, 0x101d7

    const v7, 0xd6e3

    const/16 v8, 0x50

    const/16 v9, 0x53

    const v10, 0xd6e7

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_3

    invoke-static {v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb(Z)Z

    new-array v1, v11, [I

    aput v9, v1, v12

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    new-array v1, v11, [I

    aput v8, v1, v12

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v1, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->obl(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf(Lcom/android/server/am/OnePlusHighPowerDetector;J)J

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v0

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_3
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb(Z)Z

    new-array v1, v11, [I

    aput v9, v1, v12

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v1, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->ear(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    :cond_4
    new-array v1, v11, [I

    aput v8, v1, v12

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v1, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->ire(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    :cond_5
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto/16 :goto_2

    :cond_6
    const-string v3, "ohpd.action.test"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v6, 0xd6e2

    if-eqz v3, :cond_13

    const-string v2, "code"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "type"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "pid"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pkg"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "uid"

    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    :try_start_0
    const-string v13, "notify#"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v13, 0x7

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pkg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " userid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const-string v18, "broadcast"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v14 .. v19}, Lcom/android/server/am/OnePlusHighPowerDetector;->you(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;IILjava/lang/String;I)V

    :cond_7
    const-string v3, "soff"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->obl(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v0

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_8
    const-string v3, "1st"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->obl(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    :cond_9
    const-string v3, "enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v1, "enable fake test"

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto/16 :goto_2

    :cond_a
    const-string v3, "disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v1, "disable fake test"

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto/16 :goto_2

    :cond_b
    const-string v3, "native"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to kill native process pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_2

    :cond_c
    const-string v3, "lru_dump"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v1, "OHPD"

    const-string v2, "[BGC] lru_dump"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->sis(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    goto/16 :goto_2

    :cond_d
    const-string v3, "oth_dump"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v1, "OHPD"

    const-string v2, "[BGC] oth_dump"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    goto/16 :goto_2

    :cond_e
    const-string v3, "restrict"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v1, "OHPD"

    const-string v2, "[Bgdetect] restrict"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Bgdetect] mEnableAggressiveKillGMS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->rtg(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Bgdetect] mIsAggressive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->ssp(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Bgdetect] mRestrictType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cno(Lcom/android/server/am/OnePlusHighPowerDetector;)Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    const-string v3, "forcestop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] forcestop pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1f

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v9, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->kth(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_10
    const-string v3, "gms_query"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v1, "OHPD"

    const-string v2, "[BGC] gms_query"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->bio(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    goto/16 :goto_2

    :cond_11
    const-string v0, "jump"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v9, :cond_1f

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] jump, try to start power setting of pkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APP_BATTERY_SETTINGS"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "OHPD"

    const-string v3, "[BGC] action: android.settings.APP_BATTERY_SETTINGS"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->gck()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_12
    const-string v0, "killUid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->igw()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    const-string v0, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is kill!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v1, "OHPD"

    const-string v2, "error occured while ACTION_TEST"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_13
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->wtn(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    goto/16 :goto_2

    :cond_14
    const-string v3, "com.oem.intent.action.force_stop_pkg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_15

    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "type"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f

    if-eq v3, v4, :cond_1f

    if-eq v1, v4, :cond_1f

    :goto_0
    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->dma(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V

    goto/16 :goto_2

    :cond_15
    const-string v3, "com.oem.intent.action.force_stop_high_pkg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userid"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "type"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f

    if-eq v3, v4, :cond_1f

    if-eq v1, v4, :cond_1f

    goto :goto_0

    :cond_16
    const-string v3, "com.oem.intent.action.enable_force_stop_feature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->ywr(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    goto/16 :goto_2

    :cond_17
    const-string v3, "com.oem.intent.action.bgc_clean_noti"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->qbh(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_18
    const-string v3, "com.oem.intent.action.ignore_pkg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :goto_1
    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->oif(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_19
    const-string v3, "com.oem.intent.action.ignore_high_pkg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1

    :cond_1a
    const-string v3, "com.oem.intent.action.ignore_bgc_pkg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1

    :cond_1b
    const-string v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v1, "OHPD"

    const-string v2, "receiver ACTION_DEVICE_IDLE_MODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->bvj(Lcom/android/server/am/OnePlusHighPowerDetector;)Landroid/os/PowerManager;

    move-result-object v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->gck()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->ibl(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    :cond_1c
    iget-object v1, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->bvj(Lcom/android/server/am/OnePlusHighPowerDetector;)Landroid/os/PowerManager;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->bvj(Lcom/android/server/am/OnePlusHighPowerDetector;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "OHPD"

    const-string v2, "Welcome to device idle"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->E1:I

    invoke-static {v0, v12, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm(Lcom/android/server/am/OnePlusHighPowerDetector;II)I

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->igw()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v0

    const v2, 0xd6d8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    aget v3, v3, v12

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1d
    const-string v3, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "LightIdle_Status"

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LightIdle] lightIdle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OHPD"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    if-eqz v1, :cond_1f

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->obl(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1f
    :goto_2
    return-void
.end method
