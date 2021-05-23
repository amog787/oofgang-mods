.class Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/OpScreenRotationImprovement$you;->kth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rtg:Lcom/android/server/wm/OpScreenRotationImprovement$you;

.field final synthetic sis:[F

.field final synthetic tsu:I

.field final synthetic you:Landroid/animation/ArgbEvaluator;

.field final synthetic zta:J


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpScreenRotationImprovement$you;JLandroid/animation/ArgbEvaluator;[FI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->rtg:Lcom/android/server/wm/OpScreenRotationImprovement$you;

    iput-wide p2, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->zta:J

    iput-object p4, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->you:Landroid/animation/ArgbEvaluator;

    iput-object p5, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->sis:[F

    iput p6, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->tsu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    long-to-float p3, p3

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->getDuration()J

    move-result-wide v0

    long-to-float p4, v0

    div-float/2addr p3, p4

    iget-object p4, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->you:Landroid/animation/ArgbEvaluator;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->rtg:Lcom/android/server/wm/OpScreenRotationImprovement$you;

    iget-object v0, v0, Lcom/android/server/wm/OpScreenRotationImprovement$you;->sis:Lcom/android/server/wm/OpScreenRotationImprovement;

    invoke-static {v0}, Lcom/android/server/wm/OpScreenRotationImprovement;->access$600(Lcom/android/server/wm/OpScreenRotationImprovement;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->rtg:Lcom/android/server/wm/OpScreenRotationImprovement$you;

    iget-object v1, v1, Lcom/android/server/wm/OpScreenRotationImprovement$you;->sis:Lcom/android/server/wm/OpScreenRotationImprovement;

    invoke-static {v1}, Lcom/android/server/wm/OpScreenRotationImprovement;->access$700(Lcom/android/server/wm/OpScreenRotationImprovement;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p3, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->sis:[F

    invoke-virtual {p3}, Landroid/graphics/Color;->red()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p4, v1

    iget-object p4, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->sis:[F

    invoke-virtual {p3}, Landroid/graphics/Color;->green()F

    move-result v0

    const/4 v1, 0x1

    aput v0, p4, v1

    iget-object p4, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->sis:[F

    invoke-virtual {p3}, Landroid/graphics/Color;->blue()F

    move-result p3

    const/4 v0, 0x2

    aput p3, p4, v0

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->sis:[F

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ScreenShot Popular Color="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->rtg:Lcom/android/server/wm/OpScreenRotationImprovement$you;

    iget-object p2, p2, Lcom/android/server/wm/OpScreenRotationImprovement$you;->sis:Lcom/android/server/wm/OpScreenRotationImprovement;

    invoke-static {p2}, Lcom/android/server/wm/OpScreenRotationImprovement;->access$600(Lcom/android/server/wm/OpScreenRotationImprovement;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Windowing Layer Popular Color="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->rtg:Lcom/android/server/wm/OpScreenRotationImprovement$you;

    iget-object p2, p2, Lcom/android/server/wm/OpScreenRotationImprovement$you;->sis:Lcom/android/server/wm/OpScreenRotationImprovement;

    invoke-static {p2}, Lcom/android/server/wm/OpScreenRotationImprovement;->access$700(Lcom/android/server/wm/OpScreenRotationImprovement;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " durationMs="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->tsu:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/OpScreenRotationImprovement$you$zta;->zta:J

    return-wide v0
.end method
