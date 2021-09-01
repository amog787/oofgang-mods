.class public Lcom/android/settingslib/animation/DisappearAnimationUtils;
.super Lcom/android/settingslib/animation/AppearAnimationUtils;
.source "DisappearAnimationUtils.java"


# static fields
.field private static final ROW_TRANSLATION_SCALER:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils$1;

    invoke-direct {v0}, Lcom/android/settingslib/animation/DisappearAnimationUtils$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;->ROW_TRANSLATION_SCALER:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 8

    .line 36
    sget-object v7, Lcom/android/settingslib/animation/DisappearAnimationUtils;->ROW_TRANSLATION_SCALER:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p6}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    .line 43
    iput-object p7, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    return-void
.end method


# virtual methods
.method protected calculateDelay(II)J
    .locals 6

    mul-int/lit8 v0, p1, 0x3c

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double p1, p1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 48
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, v4

    mul-double/2addr v2, p1

    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    iget p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    float-to-double p0, p0

    mul-double/2addr v0, p0

    double-to-long p0, v0

    return-wide p0
.end method
