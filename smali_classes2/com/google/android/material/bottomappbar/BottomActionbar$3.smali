.class Lcom/google/android/material/bottomappbar/BottomActionbar$3;
.super Ljava/lang/Object;
.source "BottomActionbar.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomActionbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 292
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 303
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$500(Lcom/google/android/material/bottomappbar/BottomActionbar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result p3

    invoke-static {p1, p3}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$602(Lcom/google/android/material/bottomappbar/BottomActionbar;I)I

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$700(Lcom/google/android/material/bottomappbar/BottomActionbar;)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 307
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$800(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result p1

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    if-eq p1, v1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, v0

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$802(Lcom/google/android/material/bottomappbar/BottomActionbar;I)I

    goto :goto_1

    :cond_2
    move p1, v0

    .line 310
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$900(Lcom/google/android/material/bottomappbar/BottomActionbar;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$1000(Lcom/google/android/material/bottomappbar/BottomActionbar;)I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move p3, v0

    .line 312
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$1002(Lcom/google/android/material/bottomappbar/BottomActionbar;I)I

    move v0, p3

    :cond_4
    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    .line 318
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$1100(Lcom/google/android/material/bottomappbar/BottomActionbar;)V

    .line 320
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$1200(Lcom/google/android/material/bottomappbar/BottomActionbar;)V

    .line 321
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomActionbar$3;->this$0:Lcom/google/android/material/bottomappbar/BottomActionbar;

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomActionbar;->access$1300(Lcom/google/android/material/bottomappbar/BottomActionbar;)V

    :cond_6
    return-object p2
.end method
