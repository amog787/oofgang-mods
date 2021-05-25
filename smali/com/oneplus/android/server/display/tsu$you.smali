.class Lcom/oneplus/android/server/display/tsu$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/display/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "you"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[F>;"
    }
.end annotation


# instance fields
.field private zta:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/android/server/display/tsu$you;->zta:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/display/tsu$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/tsu$you;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/display/tsu$you;->zta(F[F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public zta(F[F[F)[F
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/android/server/display/tsu$you;->zta:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v2, p2, v0

    aget v3, p3, v0

    invoke-static {v2, v3, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
