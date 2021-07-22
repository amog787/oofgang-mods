.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$AsciiDigits;
    }
.end annotation


# direct methods
.method public static compare(JJ)I
    .locals 0

    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 390
    invoke-static/range {p0 .. p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x2

    if-lt v1, v2, :cond_b

    const/16 v2, 0x24

    if-gt v1, v2, :cond_b

    const/4 v2, 0x0

    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 399
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v4, v2, 0x1

    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/common/primitives/Longs$AsciiDigits;->digit(C)I

    move-result v5

    if-ltz v5, :cond_a

    if-lt v5, v1, :cond_3

    goto :goto_2

    :cond_3
    neg-int v5, v5

    int-to-long v5, v5

    int-to-long v7, v1

    const-wide/high16 v9, -0x8000000000000000L

    .line 408
    div-long v11, v9, v7

    .line 410
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_7

    add-int/lit8 v13, v4, 0x1

    .line 411
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/Longs$AsciiDigits;->digit(C)I

    move-result v4

    if-ltz v4, :cond_6

    if-ge v4, v1, :cond_6

    cmp-long v14, v5, v11

    if-gez v14, :cond_4

    goto :goto_1

    :cond_4
    mul-long/2addr v5, v7

    int-to-long v14, v4

    add-long v16, v14, v9

    cmp-long v4, v5, v16

    if-gez v4, :cond_5

    return-object v3

    :cond_5
    sub-long/2addr v5, v14

    move v4, v13

    goto :goto_0

    :cond_6
    :goto_1
    return-object v3

    :cond_7
    if-eqz v2, :cond_8

    .line 423
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_8
    cmp-long v0, v5, v9

    if-nez v0, :cond_9

    return-object v3

    :cond_9
    neg-long v0, v5

    .line 427
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_a
    :goto_2
    return-object v3

    .line 394
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
