.class public final Lsis/you/zta/zta/you/cno;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final rtg:I = 0x28

.field public static final sis:I = 0xa

.field public static final ssp:I = 0x2a

.field public static final tsu:I = 0xc

.field public static final you:I = 0x2

.field public static final zta:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final you(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "HDR_FORMAL_NONE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "HDR_FORMAL_HDR"

    return-object p0

    :cond_1
    const/16 v0, 0xa

    if-ne p0, v0, :cond_2

    const-string p0, "HDR_FORMAL_MEMC"

    return-object p0

    :cond_2
    const/16 v0, 0xc

    if-ne p0, v0, :cond_3

    const-string p0, "HDR_FORMAL_HDR_MEMC"

    return-object p0

    :cond_3
    const/16 v0, 0x28

    if-ne p0, v0, :cond_4

    const-string p0, "HDR_FORMAL_MEMC_DUAL2"

    return-object p0

    :cond_4
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_5

    const-string p0, "HDR_FORMAL_HDR_MEMC_DUAL2"

    return-object p0

    :cond_5
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

    const-string v1, "HDR_FORMAL_NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "HDR_FORMAL_HDR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    const-string v1, "HDR_FORMAL_MEMC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_1
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    const-string v1, "HDR_FORMAL_HDR_MEMC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_2
    and-int/lit8 v1, p0, 0x28

    const/16 v3, 0x28

    if-ne v1, v3, :cond_3

    const-string v1, "HDR_FORMAL_MEMC_DUAL2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x28

    :cond_3
    and-int/lit8 v1, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_4

    const-string v1, "HDR_FORMAL_HDR_MEMC_DUAL2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2a

    :cond_4
    if-eq p0, v2, :cond_5

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

    :cond_5
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
