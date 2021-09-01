.class public final Lcom/google/zxing/BinaryBitmap;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"


# instance fields
.field private final binarizer:Lcom/google/zxing/Binarizer;

.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Binarizer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    return-void

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Binarizer must be non-null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object p0
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/Binarizer;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getHeight()I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getWidth()I

    move-result p0

    return p0
.end method

.method public isRotateSupported()Z
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->isRotateSupported()Z

    move-result p0

    return p0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;

    const/4 p0, 0x0

    throw p0
.end method
