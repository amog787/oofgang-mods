.class public final Lsis/you/zta/zta/zta/bio;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final bio:I = 0x108

.field public static final cno:I = 0x106

.field public static final dma:I = 0x10c

.field public static final gck:I = 0x10b

.field public static final igw:I = 0x109

.field public static final kth:I = 0x107

.field public static final rtg:I = 0x104

.field public static final sis:I = 0x102

.field public static final ssp:I = 0x105

.field public static final tsu:I = 0x103

.field public static final wtn:I = 0x10a

.field public static final you:I = 0x101

.field public static final zta:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final you(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x100

    if-ne p0, v0, :cond_0

    const-string p0, "START_TRANSITION"

    return-object p0

    :cond_0
    const/16 v0, 0x101

    if-ne p0, v0, :cond_1

    const-string p0, "SET_ORIENTATION"

    return-object p0

    :cond_1
    const/16 v0, 0x102

    if-ne p0, v0, :cond_2

    const-string p0, "SET_HDR_FORMAL"

    return-object p0

    :cond_2
    const/16 v0, 0x103

    if-ne p0, v0, :cond_3

    const-string p0, "SET_SERVICE_DEBUG"

    return-object p0

    :cond_3
    const/16 v0, 0x104

    if-ne p0, v0, :cond_4

    const-string p0, "SET_HDR_SETTING"

    return-object p0

    :cond_4
    const/16 v0, 0x105

    if-ne p0, v0, :cond_5

    const-string p0, "SET_GAME_MODE"

    return-object p0

    :cond_5
    const/16 v0, 0x106

    if-ne p0, v0, :cond_6

    const-string p0, "SET_N2M_ENABLE"

    return-object p0

    :cond_6
    const/16 v0, 0x107

    if-ne p0, v0, :cond_7

    const-string p0, "CALIBRATION"

    return-object p0

    :cond_7
    const/16 v0, 0x108

    if-ne p0, v0, :cond_8

    const-string p0, "SET_WCG_GAMUT"

    return-object p0

    :cond_8
    const/16 v0, 0x109

    if-ne p0, v0, :cond_9

    const-string p0, "SET_CALI_PATTERN"

    return-object p0

    :cond_9
    const/16 v0, 0x10a

    if-ne p0, v0, :cond_a

    const-string p0, "SET_MEMC_SETTING"

    return-object p0

    :cond_a
    const/16 v0, 0x10b

    if-ne p0, v0, :cond_b

    const-string p0, "SET_SDR2HDR_SETTING"

    return-object p0

    :cond_b
    const/16 v0, 0x10c

    if-ne p0, v0, :cond_c

    const-string p0, "TYPE_MAX"

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final zta(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    const-string v1, "START_TRANSITION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit16 v1, p0, 0x101

    const/16 v3, 0x101

    if-ne v1, v3, :cond_1

    const-string v1, "SET_ORIENTATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x101

    :cond_1
    and-int/lit16 v1, p0, 0x102

    const/16 v3, 0x102

    if-ne v1, v3, :cond_2

    const-string v1, "SET_HDR_FORMAL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x102

    :cond_2
    and-int/lit16 v1, p0, 0x103

    const/16 v3, 0x103

    if-ne v1, v3, :cond_3

    const-string v1, "SET_SERVICE_DEBUG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x103

    :cond_3
    and-int/lit16 v1, p0, 0x104

    const/16 v3, 0x104

    if-ne v1, v3, :cond_4

    const-string v1, "SET_HDR_SETTING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x104

    :cond_4
    and-int/lit16 v1, p0, 0x105

    const/16 v3, 0x105

    if-ne v1, v3, :cond_5

    const-string v1, "SET_GAME_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x105

    :cond_5
    and-int/lit16 v1, p0, 0x106

    const/16 v3, 0x106

    if-ne v1, v3, :cond_6

    const-string v1, "SET_N2M_ENABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x106

    :cond_6
    and-int/lit16 v1, p0, 0x107

    const/16 v3, 0x107

    if-ne v1, v3, :cond_7

    const-string v1, "CALIBRATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x107

    :cond_7
    and-int/lit16 v1, p0, 0x108

    const/16 v3, 0x108

    if-ne v1, v3, :cond_8

    const-string v1, "SET_WCG_GAMUT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x108

    :cond_8
    and-int/lit16 v1, p0, 0x109

    const/16 v3, 0x109

    if-ne v1, v3, :cond_9

    const-string v1, "SET_CALI_PATTERN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x109

    :cond_9
    and-int/lit16 v1, p0, 0x10a

    const/16 v3, 0x10a

    if-ne v1, v3, :cond_a

    const-string v1, "SET_MEMC_SETTING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x10a

    :cond_a
    and-int/lit16 v1, p0, 0x10b

    const/16 v3, 0x10b

    if-ne v1, v3, :cond_b

    const-string v1, "SET_SDR2HDR_SETTING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x10b

    :cond_b
    and-int/lit16 v1, p0, 0x10c

    const/16 v3, 0x10c

    if-ne v1, v3, :cond_c

    const-string v1, "TYPE_MAX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x10c

    :cond_c
    if-eq p0, v2, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
