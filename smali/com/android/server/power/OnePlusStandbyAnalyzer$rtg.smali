.class synthetic Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic cno:[I

.field static final synthetic rtg:[I

.field static final synthetic sis:[I

.field static final synthetic ssp:[I

.field static final synthetic tsu:[I

.field static final synthetic you:[I

.field static final synthetic zta:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->cno:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->cno:[I

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->cno:[I

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->cno:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->ssp:[I

    :try_start_4
    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->ssp:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->ssp:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->rtg:[I

    :try_start_7
    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->rtg:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->rtg:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->rtg:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$SimId;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$SimId;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->tsu:[I

    :try_start_b
    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SimId;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SimId;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->tsu:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SimId;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SimId;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->sis:[I

    :try_start_d
    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->sis:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->sis:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    :try_start_10
    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    const/4 v4, 0x5

    :try_start_14
    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    const/4 v5, 0x6

    :try_start_15
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x8

    aput v8, v6, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v6, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    aput v8, v6, v7
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xb

    aput v8, v6, v7
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xc

    aput v8, v6, v7
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xd

    aput v8, v6, v7
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xe

    aput v8, v6, v7
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0xf

    aput v8, v6, v7
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x10

    aput v8, v6, v7
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->bvj:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x11

    aput v8, v6, v7
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ibl:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x12

    aput v8, v6, v7
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->gwm:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x13

    aput v8, v6, v7
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x14

    aput v8, v6, v7
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->vdb:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x15

    aput v8, v6, v7
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->zgw:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x16

    aput v8, v6, v7
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->obl:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x17

    aput v8, v6, v7
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    :try_start_27
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    return-void
.end method
