.class public final Lcom/google/zxing/aztec/encoder/AztecCode;
.super Ljava/lang/Object;
.source "AztecCode.java"


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object p0
.end method

.method public setCodeWords(I)V
    .locals 0

    return-void
.end method

.method public setCompact(Z)V
    .locals 0

    return-void
.end method

.method public setLayers(I)V
    .locals 0

    return-void
.end method

.method public setMatrix(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    return-void
.end method
