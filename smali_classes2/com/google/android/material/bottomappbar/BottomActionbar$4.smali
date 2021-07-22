.class Lcom/google/android/material/bottomappbar/BottomActionbar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomActionbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomActionbar;->maybeAnimateModeChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomActionbar;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$4;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$4;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$1500(Lcom/google/android/material/bottomappbar/BottomActionbar;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$4;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$1400(Lcom/google/android/material/bottomappbar/BottomActionbar;)V

    return-void
.end method
