.class Lcom/google/android/material/bottomappbar/BottomActionbar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomActionbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomActionbar;
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

    .line 192
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$1;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$1;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$000(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$1;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$100(Lcom/google/android/material/bottomappbar/BottomActionbar;)Z

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$200(Lcom/google/android/material/bottomappbar/BottomActionbar;IZ)V

    return-void
.end method
