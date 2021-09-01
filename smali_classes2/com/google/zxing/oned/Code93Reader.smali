.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C

.field private static final ASTERISK_ENCODING:I

.field private static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    const/16 v0, 0x30

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    .line 55
    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    :array_0
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 62
    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 256
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    .line 257
    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xf

    .line 258
    invoke-static {p0, v0, v1}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 266
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p2, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sget-object p1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    rem-int/lit8 v2, v2, 0x2f

    aget-char p1, p1, v2

    if-ne p0, p1, :cond_2

    return-void

    .line 272
    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 197
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_8

    .line 200
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_7

    const/16 v5, 0x64

    if-gt v4, v5, :cond_7

    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 205
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5a

    const/16 v7, 0x41

    packed-switch v4, :pswitch_data_0

    move v4, v2

    goto :goto_2

    :pswitch_0
    if-lt v5, v7, :cond_0

    if-gt v5, v6, :cond_0

    add-int/lit8 v5, v5, 0x20

    goto :goto_1

    .line 213
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_1
    if-lt v5, v7, :cond_1

    const/16 v4, 0x4f

    if-gt v5, v4, :cond_1

    add-int/lit8 v5, v5, -0x20

    goto :goto_1

    :cond_1
    if-ne v5, v6, :cond_2

    const/16 v4, 0x3a

    goto :goto_2

    .line 241
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_2
    if-lt v5, v7, :cond_3

    const/16 v4, 0x45

    if-gt v5, v4, :cond_3

    add-int/lit8 v5, v5, -0x26

    goto :goto_1

    :cond_3
    const/16 v4, 0x46

    if-lt v5, v4, :cond_4

    const/16 v4, 0x57

    if-gt v5, v4, :cond_4

    add-int/lit8 v5, v5, -0xb

    goto :goto_1

    .line 231
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_3
    if-lt v5, v7, :cond_5

    if-gt v5, v6, :cond_5

    add-int/lit8 v5, v5, -0x40

    :goto_1
    int-to-char v4, v5

    goto :goto_2

    .line 221
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 245
    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 203
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 249
    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 130
    iget-object v3, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 131
    iget-object p0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    .line 134
    array-length v3, p0

    move v5, v1

    move v6, v5

    move v4, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 138
    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v5

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 139
    aget v7, p0, v6

    add-int/2addr v7, v8

    aput v7, p0, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v3, -0x1

    if-ne v6, v7, :cond_2

    .line 142
    invoke-static {p0}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v9

    sget v10, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    const/4 v11, 0x2

    if-ne v9, v10, :cond_1

    new-array p0, v11, [I

    aput v4, p0, v1

    aput v2, p0, v8

    return-object p0

    .line 145
    :cond_1
    aget v9, p0, v1

    aget v10, p0, v8

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    add-int/lit8 v9, v3, -0x2

    .line 146
    invoke-static {p0, v11, p0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    aput v1, p0, v9

    .line 148
    aput v1, p0, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 153
    :goto_1
    aput v8, p0, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static patternToChar(I)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 188
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 189
    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 190
    sget-object p0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static toPattern([I)I
    .locals 8

    .line 161
    array-length v0, p0

    .line 163
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget v5, p0, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    move v3, v1

    :goto_1
    if-ge v1, v0, :cond_6

    .line 168
    aget v5, p0, v1

    shl-int/lit8 v5, v5, 0x8

    mul-int/lit8 v5, v5, 0x9

    div-int/2addr v5, v4

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    const/16 v7, 0x7f

    if-le v5, v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    const/4 v5, 0x1

    if-lt v6, v5, :cond_5

    const/4 v7, 0x4

    if-le v6, v7, :cond_2

    goto :goto_3

    :cond_2
    and-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_3

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_4

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    shl-int/2addr v3, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const/4 p0, -0x1

    return p0

    :cond_6
    return v3
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object p3

    const/4 v0, 0x1

    .line 71
    aget v1, p3, v0

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    .line 72
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 74
    iget-object v3, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    const/4 v4, 0x0

    .line 75
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 76
    iget-object p0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    :goto_0
    invoke-static {p2, v1, v3}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 83
    invoke-static {v3}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v5

    if-ltz v5, :cond_4

    .line 87
    invoke-static {v5}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v5

    .line 88
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    array-length v6, v3

    move v8, v1

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_0

    aget v9, v3, v7

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {p2, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v6

    const/16 v7, 0x2a

    if-ne v5, v7, :cond_3

    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    if-eq v6, v2, :cond_2

    .line 99
    invoke-virtual {p2, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_1

    .line 108
    invoke-static {p0}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 112
    invoke-static {p0}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 114
    aget p2, p3, v0

    aget p3, p3, v4

    add-int/2addr p2, p3

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-int/2addr v6, v1

    int-to-float v1, v6

    div-float/2addr v1, p3

    .line 116
    new-instance p3, Lcom/google/zxing/Result;

    const/4 v3, 0x0

    new-array v2, v2, [Lcom/google/zxing/ResultPoint;

    new-instance v5, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v5, p2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v2, v4

    new-instance p2, Lcom/google/zxing/ResultPoint;

    invoke-direct {p2, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v2, v0

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p3, p0, v3, v2, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object p3

    .line 105
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 100
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_3
    move v1, v6

    goto :goto_0

    .line 85
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method
