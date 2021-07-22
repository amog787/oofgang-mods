.class public final Lcom/google/zxing/common/DecoderResult;
.super Ljava/lang/Object;
.source "DecoderResult.java"


# instance fields
.field private final byteSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final ecLevel:Ljava/lang/String;

.field private other:Ljava/lang/Object;

.field private final rawBytes:[B

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    .line 43
    iput-object p2, p0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    .line 45
    iput-object p4, p0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getByteSegments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/google/zxing/common/DecoderResult;->byteSegments:Ljava/util/List;

    return-object p0
.end method

.method public getECLevel()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/zxing/common/DecoderResult;->ecLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getOther()Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/google/zxing/common/DecoderResult;->other:Ljava/lang/Object;

    return-object p0
.end method

.method public getRawBytes()[B
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/zxing/common/DecoderResult;->rawBytes:[B

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/zxing/common/DecoderResult;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setErasures(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public setErrorsCorrected(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public setOther(Ljava/lang/Object;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->other:Ljava/lang/Object;

    return-void
.end method
