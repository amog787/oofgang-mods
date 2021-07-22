.class public final Lcom/android/settings/utils/FileSizeFormatter;
.super Ljava/lang/Object;
.source "FileSizeFormatter.java"


# direct methods
.method private static formatBytes(Landroid/content/res/Resources;JIJ)Landroid/text/format/Formatter$BytesResult;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    neg-long p1, p1

    :cond_1
    long-to-float p1, p1

    long-to-float p2, p4

    div-float/2addr p1, p2

    const-wide/16 v3, 0x1

    cmp-long p2, p4, v3

    const-string v3, "%.0f"

    if-nez p2, :cond_3

    :cond_2
    move p2, v2

    goto :goto_1

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    const/16 p2, 0x64

    const-string v3, "%.2f"

    goto :goto_1

    :cond_4
    const/high16 p2, 0x41200000    # 10.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    const/16 p2, 0xa

    const-string v3, "%.1f"

    :goto_1
    if-eqz v0, :cond_5

    neg-float p1, p1

    :cond_5
    new-array v0, v2, [Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, p2

    mul-float/2addr p1, v1

    .line 110
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v1, p1

    mul-long/2addr v1, p4

    int-to-long p1, p2

    div-long/2addr v1, p1

    .line 112
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 114
    new-instance p1, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {p1, v0, p0, v1, v2}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1
.end method

.method public static formatFileSize(Landroid/content/Context;JIJ)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/utils/FileSizeFormatter;->formatBytes(Landroid/content/res/Resources;JIJ)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 60
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p2

    .line 61
    invoke-static {p0}, Lcom/android/settings/utils/FileSizeFormatter;->getFileSizeSuffix(Landroid/content/Context;)I

    move-result p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v0, p4, p5

    const/4 p5, 0x1

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object p1, p4, p5

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFileSizeSuffix(Landroid/content/Context;)I
    .locals 3

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "fileSizeSuffix"

    const-string v1, "string"

    const-string v2, "android"

    .line 66
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
