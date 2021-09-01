.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v1

    .line 149
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    aget v6, v0, v4

    sub-int v7, v1, v6

    add-int/2addr v5, v7

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    move v4, v3

    :goto_2
    if-lez v5, :cond_3

    .line 156
    aget-object v6, v2, v4

    if-nez v6, :cond_3

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 160
    :cond_3
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_3
    if-ltz v4, :cond_5

    .line 161
    aget v6, v0, v4

    sub-int v6, v1, v6

    add-int/2addr v3, v6

    .line 162
    aget v6, v0, v4

    if-lez v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 166
    :cond_5
    :goto_4
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-lez v3, :cond_6

    aget-object v1, v2, v0

    if-nez v1, :cond_6

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 169
    :cond_6
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result p0

    invoke-virtual {v0, v5, v3, p0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object p0

    return-object p0
.end method

.method private static adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 230
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    .line 231
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result p0

    sub-int/2addr v3, p0

    .line 234
    array-length p0, v1

    if-nez p0, :cond_1

    if-lt v3, v2, :cond_0

    const/16 p0, 0x3a0

    if-gt v3, p0, :cond_0

    .line 238
    aget-object p0, p1, v0

    aget-object p0, p0, v2

    invoke-virtual {p0, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 239
    :cond_1
    aget p0, v1, v0

    if-eq p0, v3, :cond_2

    .line 241
    aget-object p0, p1, v0

    aget-object p0, p0, v2

    invoke-virtual {p0, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .locals 5

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    move v2, p4

    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_5

    :goto_2
    if-eqz p3, :cond_1

    if-ge v2, p1, :cond_2

    :cond_1
    if-nez p3, :cond_4

    if-ge v2, p2, :cond_4

    .line 492
    :cond_2
    invoke-virtual {p0, v2, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-ne p3, v4, :cond_4

    sub-int v4, p4, v2

    .line 494
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_3

    return p4

    :cond_3
    add-int/2addr v2, v0

    goto :goto_2

    :cond_4
    neg-int v0, v0

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method private static checkCodewordSkew(III)Z
    .locals 0

    add-int/lit8 p1, p1, -0x2

    if-gt p1, p0, :cond_0

    add-int/lit8 p2, p2, 0x2

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static correctErrors([I[II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 537
    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_1

    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x200

    if-gt p2, v0, :cond_1

    .line 544
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result p0

    return p0

    .line 542
    :cond_1
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method private static createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .locals 12

    .line 325
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move v2, v1

    .line 327
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    move v4, v1

    .line 328
    :goto_1
    aget-object v5, v0, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 329
    aget-object v5, v0, v2

    new-instance v6, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v6}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object p0

    array-length v2, p0

    const/4 v4, -0x1

    move v5, v1

    move v6, v4

    :goto_2
    if-ge v5, v2, :cond_6

    aget-object v7, p0, v5

    add-int/2addr v6, v3

    if-nez v7, :cond_2

    goto :goto_5

    .line 339
    :cond_2
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    array-length v8, v7

    move v9, v1

    :goto_3
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    if-eqz v10, :cond_4

    .line 340
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    if-ne v11, v4, :cond_3

    goto :goto_4

    .line 343
    :cond_3
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    aget-object v11, v0, v11

    aget-object v11, v11, v6

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private static createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 247
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v0

    .line 248
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    .line 251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 253
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    move v7, v5

    .line 254
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 255
    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    .line 256
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v7

    .line 257
    array-length v7, v8

    if-nez v7, :cond_0

    .line 258
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 259
    :cond_0
    array-length v7, v8

    const/4 v11, 0x1

    if-ne v7, v11, :cond_1

    .line 260
    aget v7, v8, v5

    aput v7, v2, v10

    goto :goto_2

    .line 262
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move v7, v9

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 267
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [[I

    :goto_3
    if-ge v5, v0, :cond_4

    .line 269
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 271
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result p0

    invoke-static {v1}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-static {p0, v2, v0, v1, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object p0

    return-object p0
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 294
    array-length v0, p3

    new-array v1, v0, [I

    const/16 v2, 0x64

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_5

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_0

    .line 299
    aget v5, p3, v4

    aget-object v6, p4, v4

    aget v7, v1, v4

    aget v6, v6, v7

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 302
    :cond_0
    :try_start_0
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    if-eqz v0, :cond_4

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_3

    .line 310
    aget v5, v1, v4

    aget-object v6, p4, v4

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 311
    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    goto :goto_3

    .line 314
    :cond_1
    aput v2, v1, v4

    add-int/lit8 v5, v0, -0x1

    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 316
    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_3
    move v2, v3

    goto :goto_0

    .line 307
    :cond_4
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0

    .line 321
    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 58
    new-instance v6, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    move v11, v1

    move-object v10, v6

    :goto_0
    const/4 v4, 0x2

    if-ge v11, v4, :cond_5

    if-eqz p1, :cond_0

    const/4 v7, 0x1

    move-object/from16 v4, p0

    move-object v5, v10

    move-object/from16 v6, p1

    move/from16 v8, p5

    move/from16 v9, p6

    .line 64
    invoke-static/range {v4 .. v9}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v0

    :cond_0
    if-eqz p3, :cond_1

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object v5, v10

    move-object/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    .line 68
    invoke-static/range {v4 .. v9}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v2

    .line 71
    :cond_1
    invoke-static {v0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v3

    if-eqz v3, :cond_4

    if-nez v11, :cond_3

    .line 75
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v4

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v5

    if-lt v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v4

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 78
    :cond_2
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v3, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_1

    .line 73
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 84
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 85
    invoke-virtual {v3, v1, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 86
    invoke-virtual {v3, v4, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    if-eqz v0, :cond_6

    move v0, v5

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    move/from16 v2, p5

    move/from16 v6, p6

    move v7, v5

    :goto_3
    if-gt v7, v4, :cond_11

    if-eqz v0, :cond_7

    move v8, v7

    goto :goto_4

    :cond_7
    sub-int v8, v4, v7

    .line 91
    :goto_4
    invoke-virtual {v3, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v9

    if-eqz v9, :cond_8

    goto/16 :goto_d

    :cond_8
    if-eqz v8, :cond_a

    if-ne v8, v4, :cond_9

    goto :goto_5

    .line 99
    :cond_9
    new-instance v9, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v9, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_7

    .line 97
    :cond_a
    :goto_5
    new-instance v9, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v8, :cond_b

    move v11, v5

    goto :goto_6

    :cond_b
    move v11, v1

    :goto_6
    invoke-direct {v9, v10, v11}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 101
    :goto_7
    invoke-virtual {v3, v8, v9}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 105
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v11

    const/4 v15, -0x1

    move v14, v11

    move v13, v15

    :goto_8
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v11

    if-gt v14, v11, :cond_10

    .line 106
    invoke-static {v3, v8, v14, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v11

    if-ltz v11, :cond_d

    .line 107
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v12

    if-le v11, v12, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v19, v11

    goto :goto_a

    :cond_d
    :goto_9
    if-ne v13, v15, :cond_e

    move/from16 v20, v13

    move v12, v14

    move/from16 v21, v15

    goto :goto_b

    :cond_e
    move/from16 v19, v13

    .line 113
    :goto_a
    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v12

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v16

    move-object/from16 v11, p0

    move/from16 v20, v13

    move/from16 v13, v16

    move/from16 p1, v14

    move v14, v0

    move/from16 v21, v15

    move/from16 v15, v19

    move/from16 v16, p1

    move/from16 v17, v2

    move/from16 v18, v6

    invoke-static/range {v11 .. v18}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v11

    move/from16 v12, p1

    if-eqz v11, :cond_f

    .line 116
    invoke-virtual {v9, v12, v11}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 118
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v13

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 119
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v13, v19

    goto :goto_c

    :cond_f
    :goto_b
    move/from16 v13, v20

    :goto_c
    add-int/lit8 v14, v12, 0x1

    move/from16 v15, v21

    goto :goto_8

    :cond_10
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 123
    :cond_11
    invoke-static {v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 512
    array-length v0, p0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 517
    invoke-static {p0, p2, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v1

    .line 518
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    .line 521
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p0

    .line 522
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 523
    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    return-object p0

    .line 513
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 7

    .line 400
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 405
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 410
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result p2

    if-eqz p3, :cond_1

    add-int p3, p4, p2

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 414
    :goto_0
    array-length p5, p0

    shr-int/lit8 p5, p5, 0x1

    if-ge p3, p5, :cond_2

    .line 415
    aget p5, p0, p3

    .line 416
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aget v0, p0, v0

    aput v0, p0, p3

    .line 417
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p3

    aput p5, p0, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    sub-int p3, p4, p2

    move v6, p4

    move p4, p3

    move p3, v6

    .line 436
    :goto_1
    invoke-static {p2, p6, p7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    .line 442
    :cond_3
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result p0

    int-to-long p5, p0

    .line 443
    invoke-static {p5, p6}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(J)I

    move-result p2

    const/4 p5, -0x1

    if-ne p2, p5, :cond_4

    return-object p1

    .line 447
    :cond_4
    new-instance p1, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result p0

    invoke-direct {p1, p4, p3, p0, p2}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    return-object p1
.end method

.method private static getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 183
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_3

    .line 186
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object p0

    .line 190
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object p1

    .line 192
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result p1

    if-eq v1, p1, :cond_2

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    if-nez p0, :cond_4

    goto :goto_1

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    .line 184
    :cond_6
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private static getBitCountForCodeword(I)[I
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    return-object v0

    :cond_0
    move v1, v3

    .line 585
    :cond_1
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private static getCodewordBucketNumber(I)I
    .locals 0

    .line 592
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result p0

    return p0
.end method

.method private static getCodewordBucketNumber([I)I
    .locals 2

    const/4 v0, 0x0

    .line 596
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget p0, p0, v1

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .locals 4

    .line 175
    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    .line 176
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x0

    move v5, p3

    :goto_1
    if-eqz p3, :cond_1

    if-lt p4, p2, :cond_2

    :cond_1
    if-nez p3, :cond_4

    if-lt p4, p1, :cond_4

    :cond_2
    if-ge v4, v0, :cond_4

    .line 463
    invoke-virtual {p0, p4, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-ne v6, v5, :cond_3

    .line 464
    aget v6, v1, v4

    add-int/2addr v6, v2

    aput v6, v1, v4

    add-int/2addr p4, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    xor-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-eq v4, v0, :cond_8

    if-eqz p3, :cond_5

    if-eq p4, p2, :cond_6

    :cond_5
    if-nez p3, :cond_7

    if-ne p4, p1, :cond_7

    :cond_6
    const/4 p0, 0x7

    if-ne v4, p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 p0, 0x0

    return-object p0

    :cond_8
    :goto_2
    return-object v1
.end method

.method private static getNumberOfECCodeWords(I)I
    .locals 1

    const/4 v0, 0x2

    shl-int p0, v0, p0

    return p0
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .locals 15

    move/from16 v8, p3

    .line 206
    new-instance v9, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v11, v0, :cond_4

    if-nez v11, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    :goto_1
    move v12, v0

    .line 210
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 211
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    move v13, v0

    move v14, v1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v14, v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v14, v0, :cond_3

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object v0, p0

    move/from16 v3, p3

    move v4, v13

    move v5, v14

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {v9, v14, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    if-eqz v8, :cond_1

    .line 218
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v0

    goto :goto_3

    .line 220
    :cond_1
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v0

    :goto_3
    move v13, v0

    :cond_2
    add-int/2addr v14, v12

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    return-object v9
.end method

.method private static getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .locals 6

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    sub-int v2, p1, v0

    .line 359
    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 363
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result p0

    :goto_1
    return p0

    .line 365
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p3, :cond_4

    .line 367
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result p0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result p0

    :goto_2
    return p0

    .line 369
    :cond_5
    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 370
    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_8

    if-eqz p3, :cond_7

    .line 373
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result p0

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result p0

    :goto_3
    return p0

    :cond_8
    const/4 p2, 0x0

    move v1, p2

    :goto_4
    sub-int/2addr p1, v0

    .line 377
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 379
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    array-length v3, v2

    move v4, p2

    :goto_5
    if-ge v4, v3, :cond_b

    aget-object v5, v2, v4

    if-eqz v5, :cond_a

    if-eqz p3, :cond_9

    .line 381
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result p0

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result p0

    :goto_6
    mul-int/2addr v0, v1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result p1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result p2

    sub-int/2addr p1, p2

    mul-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 389
    :cond_c
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object p0

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result p0

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result p0

    :goto_7
    return p0
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .locals 1

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result p0

    add-int/2addr p0, v0

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    .line 132
    :cond_0
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 136
    :cond_1
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object p0

    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object p0

    .line 138
    new-instance p1, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {p1, v1, p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    return-object p1
.end method

.method private static verifyCodewordCount([II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 551
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 559
    aget v1, p0, v0

    .line 560
    array-length v2, p0

    if-gt v1, v2, :cond_2

    if-nez v1, :cond_1

    .line 565
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 566
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v0

    goto :goto_0

    .line 568
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 561
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 554
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method
