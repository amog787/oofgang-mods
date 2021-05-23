.class Lcom/android/server/cgv/sis$cno;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cgv/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cno"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/cgv/sis;


# direct methods
.method constructor <init>(Lcom/android/server/cgv/sis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cgv/sis$cno;->zta:Lcom/android/server/cgv/sis;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v0, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-string v3, "onFling Event_1 = %s, \n Event_2 = %s, \nvelocityX = %s, \nvelocityY = %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cgv/sis;->bud(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cgv/sis$cno;->zta:Lcom/android/server/cgv/sis;

    invoke-static {v0}, Lcom/android/server/cgv/sis;->tsu(Lcom/android/server/cgv/sis;)Lcom/android/server/cgv/sis$kth;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v0, v3

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpg-float v0, p3, v3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    cmpg-float v0, p4, v3

    if-gtz v0, :cond_2

    move v1, v5

    :cond_2
    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/android/server/cgv/sis$cno;->zta:Lcom/android/server/cgv/sis;

    invoke-static {v0}, Lcom/android/server/cgv/sis;->tsu(Lcom/android/server/cgv/sis;)Lcom/android/server/cgv/sis$kth;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/cgv/sis$kth;->zta(I)V

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/cgv/sis$cno;->zta:Lcom/android/server/cgv/sis;

    invoke-static {v0}, Lcom/android/server/cgv/sis;->tsu(Lcom/android/server/cgv/sis;)Lcom/android/server/cgv/sis$kth;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cgv/sis$cno;->zta:Lcom/android/server/cgv/sis;

    invoke-static {v0}, Lcom/android/server/cgv/sis;->tsu(Lcom/android/server/cgv/sis;)Lcom/android/server/cgv/sis$kth;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/cgv/sis$kth;->you(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
