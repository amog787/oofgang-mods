.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    .line 59
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 65
    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 77
    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    .line 109
    sget-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    sget-object v2, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v3, "vendor.product.device"

    const-string v4, ""

    .line 99
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v3, "vendor.display.lcd_density"

    const/16 v4, 0x1e0

    .line 100
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    const/4 v3, 0x0

    .line 110
    invoke-static {v3}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v5

    const/4 v6, -0x1

    if-gtz v5, :cond_0

    .line 115
    iput v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 116
    iput v6, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return-void

    .line 120
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 121
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 124
    iget v9, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 128
    iget v10, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int/lit16 v8, v8, 0xa0

    .line 129
    div-int/lit16 v8, v8, 0x140

    const/high16 v10, 0x3fc00000    # 1.5f

    int-to-float v8, v8

    int-to-float v11, v5

    div-float/2addr v8, v11

    .line 130
    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    .line 133
    array-length v8, v2

    .line 135
    array-length v10, v1

    add-int/lit8 v11, v10, 0x1

    add-int/2addr v11, v8

    .line 139
    new-array v12, v11, [Ljava/lang/String;

    .line 140
    new-array v13, v11, [I

    if-lez v10, :cond_3

    move v14, v3

    move v15, v14

    :goto_0
    if-ge v14, v10, :cond_4

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/display/DisplayDensityUtils;->useOld1080Dpi()Z

    move-result v16

    if-eqz v16, :cond_1

    sub-int v16, v10, v14

    mul-int/lit8 v4, v16, 0x28

    rsub-int v4, v4, 0x1a4

    goto :goto_1

    :cond_1
    sub-int v4, v10, v14

    mul-int/lit8 v4, v4, 0x1e

    rsub-int v4, v4, 0x1c2

    :goto_1
    if-ne v9, v4, :cond_2

    move v6, v15

    .line 162
    :cond_2
    aget v3, v1, v14

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v15

    .line 163
    aput v4, v13, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1e0

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    :cond_4
    if-ne v9, v5, :cond_5

    move v6, v15

    .line 171
    :cond_5
    aput v5, v13, v15

    .line 172
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v15

    const/4 v1, 0x1

    add-int/2addr v15, v1

    if-lez v8, :cond_d

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_d

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/display/DisplayDensityUtils;->useOld1080Dpi()Z

    move-result v4

    const/16 v10, 0x21c

    const/4 v14, 0x2

    if-eqz v4, :cond_8

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    if-ne v3, v1, :cond_7

    const/16 v10, 0x1f4

    goto :goto_4

    :cond_7
    if-ne v3, v14, :cond_b

    goto :goto_4

    :cond_8
    if-nez v3, :cond_9

    :goto_3
    const/16 v10, 0x1e0

    goto :goto_4

    :cond_9
    if-ne v3, v1, :cond_a

    const/16 v10, 0x1fe

    goto :goto_4

    :cond_a
    if-ne v3, v14, :cond_b

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    :goto_4
    if-ne v9, v10, :cond_c

    move v6, v15

    .line 204
    :cond_c
    aput v10, v13, v15

    .line 205
    aget v4, v2, v3

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    if-ltz v6, :cond_e

    goto :goto_5

    :cond_e
    add-int/2addr v11, v1

    .line 217
    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 218
    aput v9, v2, v15

    .line 220
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 221
    sget v3, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v1, v6

    invoke-virtual {v7, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v15

    move v6, v15

    .line 226
    :goto_5
    iput v5, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 227
    iput v6, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return-void
.end method

.method public static clearForcedDisplayDensity(I)V
    .locals 2

    .line 283
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 284
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 1

    .line 267
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 268
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic lambda$clearForcedDisplayDensity$0(II)V
    .locals 1

    .line 286
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 287
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DisplayDensityUtils"

    const-string p1, "Unable to clear forced display density setting"

    .line 289
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$setForcedDisplayDensity$1(III)V
    .locals 1

    .line 307
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 308
    invoke-interface {v0, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DisplayDensityUtils"

    const-string p1, "Unable to save forced display density setting"

    .line 310
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2

    .line 304
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 305
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    .line 251
    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return p0
.end method

.method public getDefaultDensity()I
    .locals 0

    .line 255
    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return p0
.end method

.method public useOld1080Dpi()Z
    .locals 2

    const-string p0, "ro.sf.lcd_density"

    const-string v0, "480"

    .line 233
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "400"

    .line 234
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "420"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
