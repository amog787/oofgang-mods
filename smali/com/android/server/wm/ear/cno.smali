.class public Lcom/android/server/wm/ear/cno;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zta:Ljava/lang/String; = "OpStartingWindowManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bio(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "net.oneplus.launcher"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static cno(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ear/you;->kth()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpStartingWindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static igw(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/ear/you;->kth()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static kth(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/ear/cno;->tsu(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static rtg(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " called by \n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xc

    const-string v1, " "

    invoke-static {p0, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ear/cno;->ssp(Ljava/lang/String;)V

    return-void
.end method

.method public static sis(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/wm/ear/you;->tsu()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/android/server/wm/ear/zta;->tsu:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static ssp(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ear/you;->kth()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpStartingWindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static tsu(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/wm/ear/you;->ssp()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/android/server/wm/ear/zta;->ssp:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static wtn()V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/ear/you;->kth()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_0
    return-void
.end method

.method public static you(Landroid/graphics/Bitmap;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    div-int/lit8 v3, v2, 0x1e

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v1

    const v5, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v5, v1

    float-to-int v5, v5

    const v6, 0x3f2b851f    # 0.67f

    mul-float/2addr v1, v6

    float-to-int v1, v1

    sub-int v6, v1, v5

    div-int/lit8 v6, v6, 0xf

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_0
    if-ge v5, v1, :cond_5

    move v7, v0

    :goto_1
    if-ge v7, v2, :cond_4

    invoke-virtual {p0, v5, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    if-nez v9, :cond_2

    return v4

    :cond_2
    invoke-static {v8}, Landroid/graphics/Color;->luminance(I)F

    move-result v8

    const v9, 0x3a03126f    # 5.0E-4f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    return v4

    :cond_3
    add-int/2addr v7, v3

    goto :goto_1

    :cond_4
    add-int/2addr v5, v6

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

.method public static zta(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lcom/android/server/wm/ear/zta;->rtg:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
