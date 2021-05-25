.class synthetic Lcom/android/server/am/OnePlusBGController$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic cno:[I

.field static final synthetic kth:[I

.field static final synthetic rtg:[I

.field static final synthetic sis:[I

.field static final synthetic ssp:[I

.field static final synthetic tsu:[I

.field static final synthetic you:[I

.field static final synthetic zta:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/android/server/am/OnePlusBGController$SnapshotType;->values()[Lcom/android/server/am/OnePlusBGController$SnapshotType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/am/OnePlusBGController$you;->kth:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusBGController$SnapshotType;->zta:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/server/am/OnePlusBGController$you;->kth:[I

    sget-object v3, Lcom/android/server/am/OnePlusBGController$SnapshotType;->tsu:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/server/am/OnePlusBGController$you;->kth:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$SnapshotType;->you:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->kth:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$SnapshotType;->sis:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$CleanType;->values()[Lcom/android/server/am/OnePlusBGController$CleanType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/am/OnePlusBGController$you;->cno:[I

    :try_start_4
    sget-object v5, Lcom/android/server/am/OnePlusBGController$CleanType;->zta:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->cno:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$CleanType;->you:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->cno:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$CleanType;->sis:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->cno:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$CleanType;->tsu:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$MySipperType;->values()[Lcom/android/server/am/OnePlusBGController$MySipperType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/am/OnePlusBGController$you;->ssp:[I

    :try_start_8
    sget-object v5, Lcom/android/server/am/OnePlusBGController$MySipperType;->zta:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->ssp:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$MySipperType;->you:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->ssp:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$MySipperType;->sis:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$NetType;->values()[Lcom/android/server/am/OnePlusBGController$NetType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/am/OnePlusBGController$you;->rtg:[I

    :try_start_b
    sget-object v5, Lcom/android/server/am/OnePlusBGController$NetType;->sis:Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->rtg:[I

    sget-object v5, Lcom/android/server/am/OnePlusBGController$NetType;->you:Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    invoke-static {}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->values()[Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/server/am/OnePlusBGController$you;->tsu:[I

    :try_start_d
    sget-object v5, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {v5}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->tsu:[I

    sget-object v5, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {v5}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->tsu:[I

    sget-object v5, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {v5}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->tsu:[I

    sget-object v5, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {v5}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$PersistType;->values()[Lcom/android/server/am/OnePlusBGController$PersistType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/am/OnePlusBGController$you;->sis:[I

    :try_start_11
    sget-object v4, Lcom/android/server/am/OnePlusBGController$PersistType;->zta:Lcom/android/server/am/OnePlusBGController$PersistType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v3, Lcom/android/server/am/OnePlusBGController$you;->sis:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$PersistType;->you:Lcom/android/server/am/OnePlusBGController$PersistType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v3, Lcom/android/server/am/OnePlusBGController$you;->sis:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$PersistType;->sis:Lcom/android/server/am/OnePlusBGController$PersistType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$ProcType;->values()[Lcom/android/server/am/OnePlusBGController$ProcType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/am/OnePlusBGController$you;->you:[I

    :try_start_14
    sget-object v4, Lcom/android/server/am/OnePlusBGController$ProcType;->zta:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v3, Lcom/android/server/am/OnePlusBGController$you;->you:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$ProcType;->sis:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v3, Lcom/android/server/am/OnePlusBGController$you;->you:[I

    sget-object v4, Lcom/android/server/am/OnePlusBGController$ProcType;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    invoke-static {}, Lcom/android/server/am/OnePlusBGController$RomType;->values()[Lcom/android/server/am/OnePlusBGController$RomType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/am/OnePlusBGController$you;->zta:[I

    :try_start_17
    sget-object v4, Lcom/android/server/am/OnePlusBGController$RomType;->zta:Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v1, Lcom/android/server/am/OnePlusBGController$you;->zta:[I

    sget-object v3, Lcom/android/server/am/OnePlusBGController$RomType;->you:Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/android/server/am/OnePlusBGController$you;->zta:[I

    sget-object v1, Lcom/android/server/am/OnePlusBGController$RomType;->sis:Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method
