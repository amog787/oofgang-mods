.class public abstract Lcom/oneplus/utils/reflection/utils/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# direct methods
.method public static hashCode(D)I
    .locals 0

    .line 481
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static hashCode(F)I
    .locals 0

    .line 490
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method public static hashCode(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static hashCode(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    return p0
.end method

.method public static nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_b

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 246
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 247
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 248
    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 250
    :cond_3
    instance-of v0, p0, [Z

    if-eqz v0, :cond_4

    instance-of v0, p1, [Z

    if-eqz v0, :cond_4

    .line 251
    check-cast p0, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    .line 253
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 254
    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 256
    :cond_5
    instance-of v0, p0, [C

    if-eqz v0, :cond_6

    instance-of v0, p1, [C

    if-eqz v0, :cond_6

    .line 257
    check-cast p0, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0

    .line 259
    :cond_6
    instance-of v0, p0, [D

    if-eqz v0, :cond_7

    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 260
    check-cast p0, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    .line 262
    :cond_7
    instance-of v0, p0, [F

    if-eqz v0, :cond_8

    instance-of v0, p1, [F

    if-eqz v0, :cond_8

    .line 263
    check-cast p0, [F

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    .line 265
    :cond_8
    instance-of v0, p0, [I

    if-eqz v0, :cond_9

    instance-of v0, p1, [I

    if-eqz v0, :cond_9

    .line 266
    check-cast p0, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    .line 268
    :cond_9
    instance-of v0, p0, [J

    if-eqz v0, :cond_a

    instance-of v0, p1, [J

    if-eqz v0, :cond_a

    .line 269
    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    .line 271
    :cond_a
    instance-of v0, p0, [S

    if-eqz v0, :cond_b

    instance-of v0, p1, [S

    if-eqz v0, :cond_b

    .line 272
    check-cast p0, [S

    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p0

    return p0

    :cond_b
    :goto_0
    return v1
.end method

.method public static nullSafeHashCode(Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 299
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 300
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 301
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 303
    :cond_1
    instance-of v0, p0, [Z

    if-eqz v0, :cond_2

    .line 304
    check-cast p0, [Z

    invoke-static {p0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeHashCode([Z)I

    move-result p0

    return p0

    .line 306
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 307
    check-cast p0, [B

    invoke-static {p0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeHashCode([B)I

    move-result p0

    return p0

    .line 309
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 310
    check-cast p0, [C

    invoke-static {p0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeHashCode([C)I

    move-result p0

    return p0

    .line 312
    :cond_4
    instance-of v0, p0, [D

    if-eqz v0, :cond_5

    .line 313
    check-cast p0, [D

    invoke-static {p0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeHashCode([D)I

    move-result p0

    return p0

    .line 315
    :cond_5
    instance-of v0, p0, [F

    if-eqz v0, :cond_6

    .line 316
    check-cast p0, [F

    invoke-static {p0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeHashCode([F)I

    move-result p0

    return p0

    .line 318
    :cond_6
    instance-of v0, p0, [I

    if-eqz v0, :cond_7

    .line 319
    check-cast p0, [I

    invoke-static {p0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeHashCode([I)I

    move-result p0

    return p0

    .line 321
    :cond_7
    instance-of v0, p0, [J

    if-eqz v0, :cond_8

    .line 322
    check-cast p0, [J

    invoke-static {p0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeHashCode([J)I

    move-result p0

    return p0

    .line 324
    :cond_8
    instance-of v0, p0, [S

    if-eqz v0, :cond_9

    .line 325
    check-cast p0, [S

    invoke-static {p0}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeHashCode([S)I

    move-result p0

    return p0

    .line 328
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static nullSafeHashCode([B)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 370
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, p0, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([C)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 385
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-char v3, p0, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([D)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 400
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-wide v3, p0, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 401
    invoke-static {v3, v4}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->hashCode(D)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([F)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 415
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p0, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 416
    invoke-static {v3}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->hashCode(F)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 430
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p0, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([J)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 445
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-wide v3, p0, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 446
    invoke-static {v3, v4}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->hashCode(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 340
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 341
    invoke-static {v3}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->nullSafeHashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([S)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 460
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-short v3, p0, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static nullSafeHashCode([Z)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    .line 355
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-boolean v3, p0, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 356
    invoke-static {v3}, Lcom/oneplus/utils/reflection/utils/ObjectUtils;->hashCode(Z)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
