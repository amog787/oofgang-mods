.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCEReader.java"


# static fields
.field private static final MIDDLE_END_PATTERN:[I

.field private static final NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 39
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 46
    fill-array-data v2, :array_1

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_2
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 54
    iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    return-void
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 127
    aget-char v5, v0, v4

    const-string v6, "00000"

    const-string v7, "0000"

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v5, :pswitch_data_0

    .line 148
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x4

    .line 143
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    aget-char v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-virtual {v1, v0, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1, v0, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-virtual {v1, v0, v3, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1, v0, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 153
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    move v2, v0

    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 101
    sget-object v3, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    add-int/lit8 v1, v1, 0x30

    int-to-char p1, v1

    .line 102
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x30

    int-to-char p1, v2

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected checkChecksum(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 93
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 88
    sget-object p0, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object p0

    return-object p0
.end method

.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    const/4 v0, 0x0

    .line 61
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 62
    aput v0, p0, v1

    const/4 v2, 0x2

    .line 63
    aput v0, p0, v2

    const/4 v2, 0x3

    .line 64
    aput v0, p0, v2

    .line 65
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 66
    aget p2, p2, v1

    move v3, v0

    move v4, v3

    :goto_0
    const/4 v5, 0x6

    if-ge v3, v5, :cond_2

    if-ge p2, v2, :cond_2

    .line 71
    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, p0, p2, v5}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v5

    .line 72
    rem-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    array-length v6, p0

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, p0, v7

    add-int/2addr p2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    if-lt v5, v6, :cond_1

    rsub-int/lit8 v5, v3, 0x5

    shl-int v5, v1, v5

    or-int/2addr v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {p3, v4}, Lcom/google/zxing/oned/UPCEReader;->determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V

    return p2
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 0

    .line 113
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method
