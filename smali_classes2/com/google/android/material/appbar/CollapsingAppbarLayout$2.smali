.class Lcom/google/android/material/appbar/CollapsingAppbarLayout$2;
.super Ljava/lang/Object;
.source "CollapsingAppbarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$2;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 346
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$2;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 347
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$2;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;->onClick()V

    :cond_0
    return-void
.end method
