.class Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;
.super Ljava/lang/Object;
.source "EpicenterTranslateClipReveal.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTemp:Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    invoke-direct {v0}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/appcompat/widget/EpicenterTranslateClipReveal$1;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroidx/appcompat/widget/EpicenterTranslateClipReveal$State;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;)Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;
    .locals 2

    .line 257
    iget-object p0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    iget v0, p2, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;->upper:I

    iget v1, p3, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;->upper:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;->upper:I

    .line 258
    iget v0, p2, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;->lower:I

    iget v1, p3, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;->lower:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;->lower:I

    .line 259
    iget p2, p2, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;->trans:F

    iget p3, p3, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;->trans:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    float-to-int p1, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, p0, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;->trans:F

    return-object p0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p2, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    check-cast p3, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/EpicenterTranslateClipReveal$StateEvaluator;->evaluate(FLandroidx/appcompat/widget/EpicenterTranslateClipReveal$State;Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;)Landroidx/appcompat/widget/EpicenterTranslateClipReveal$State;

    move-result-object p0

    return-object p0
.end method
