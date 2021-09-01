.class Lcom/google/android/material/edgeeffect/FilmstripView$1;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/edgeeffect/FilmstripView;


# direct methods
.method constructor <init>(Lcom/google/android/material/edgeeffect/FilmstripView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$1;->this$0:Lcom/google/android/material/edgeeffect/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$1;->this$0:Lcom/google/android/material/edgeeffect/FilmstripView;

    invoke-static {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->access$200(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$1;->this$0:Lcom/google/android/material/edgeeffect/FilmstripView;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/material/edgeeffect/FilmstripView;->access$100(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$1;->this$0:Lcom/google/android/material/edgeeffect/FilmstripView;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/material/edgeeffect/FilmstripView;->access$000(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
