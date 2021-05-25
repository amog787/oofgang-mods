.class public Lcom/oneplus/android/server/scene/sis;
.super Landroid/media/audiofx/AudioEffect;
.source ""


# static fields
.field public static final sis:I = 0x0

.field public static final tsu:I = 0x1

.field private static final you:Ljava/util/UUID;

.field private static final zta:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/sis;->zta:Ljava/util/UUID;

    const-string v0, "17852d51-161e-11e2-892e-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/sis;->you:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Lcom/oneplus/android/server/scene/sis;->zta:Ljava/util/UUID;

    sget-object v1, Lcom/oneplus/android/server/scene/sis;->you:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result p0

    return p0
.end method

.method public you(F)I
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/high16 v2, 0x45800000    # 4096.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-super {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([I[I)I

    move-result p0

    return p0

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public zta(S)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    new-array v1, v1, [S

    const/4 v2, 0x0

    aput-short p1, v1, v2

    invoke-super {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([I[S)I

    move-result p0

    return p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
