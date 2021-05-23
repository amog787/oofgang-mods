.class Lcom/oneplus/android/server/iris/you$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/iris/you;->t(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/iris/you;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/iris/you;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/you$zta;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showToast mIrisMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you$zta;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {v1}, Lcom/oneplus/android/server/iris/you;->hmo(Lcom/oneplus/android/server/iris/you;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/android/server/iris/you;->bud(Lcom/oneplus/android/server/iris/you;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you$zta;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {v0}, Lcom/oneplus/android/server/iris/you;->hmo(Lcom/oneplus/android/server/iris/you;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/you$zta;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {v0}, Lcom/oneplus/android/server/iris/you;->hmo(Lcom/oneplus/android/server/iris/you;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you$zta;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {v1}, Lcom/oneplus/android/server/iris/you;->les(Lcom/oneplus/android/server/iris/you;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/oneplus/android/server/iris/you$zta;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {v1}, Lcom/oneplus/android/server/iris/you;->les(Lcom/oneplus/android/server/iris/you;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x50b0077

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x50f0077

    iget-object v4, p0, Lcom/oneplus/android/server/iris/you$zta;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {v4}, Lcom/oneplus/android/server/iris/you;->irq(Lcom/oneplus/android/server/iris/you;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v3, 0x50f0068

    :cond_1
    iget-object v4, p0, Lcom/oneplus/android/server/iris/you$zta;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {v4}, Lcom/oneplus/android/server/iris/you;->les(Lcom/oneplus/android/server/iris/you;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    const/16 v2, 0x30

    iget-object v3, p0, Lcom/oneplus/android/server/iris/you$zta;->zta:Lcom/oneplus/android/server/iris/you;

    invoke-static {v3}, Lcom/oneplus/android/server/iris/you;->les(Lcom/oneplus/android/server/iris/you;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/you$zta;->zta:Lcom/oneplus/android/server/iris/you;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/android/server/iris/you;->vdw(Lcom/oneplus/android/server/iris/you;Z)Z

    :cond_2
    return-void
.end method
