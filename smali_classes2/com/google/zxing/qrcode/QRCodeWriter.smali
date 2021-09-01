.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;
    .locals 9

    .line 87
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr p3, v2

    add-int v3, v0, p3

    add-int/2addr p3, v1

    .line 95
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 96
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 98
    div-int v3, p1, v3

    div-int p3, p2, p3

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int v3, v0, p3

    sub-int v3, p1, v3

    .line 103
    div-int/lit8 v3, v3, 0x2

    mul-int v4, v1, p3

    sub-int v4, p2, v4

    .line 104
    div-int/lit8 v4, v4, 0x2

    .line 106
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, v1, :cond_2

    move v6, p1

    move v7, v3

    :goto_1
    if-ge v6, v0, :cond_1

    .line 111
    invoke-virtual {p0, v6, p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v8

    if-ne v8, v2, :cond_0

    .line 112
    invoke-virtual {v5, v7, v4, p3, p3}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, p3

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, p3

    goto :goto_0

    :cond_2
    return-object v5

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 58
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, p0, :cond_3

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    .line 67
    sget-object p0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 p2, 0x4

    if-eqz p5, :cond_1

    .line 70
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v0, :cond_0

    move-object p0, v0

    .line 74
    :cond_0
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 80
    :cond_1
    invoke-static {p1, p0, p5}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object p0

    .line 81
    invoke-static {p0, p3, p4, p2}, Lcom/google/zxing/qrcode/QRCodeWriter;->renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    .line 63
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Requested dimensions are too small: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x78

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can only encode QR_CODE, but got "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Found empty contents"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
