.class Lcom/android/settingslib/graph/SignalDrawable$1;
.super Ljava/lang/Object;
.source "SignalDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/graph/SignalDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/graph/SignalDrawable;


# direct methods
.method constructor <init>(Lcom/android/settingslib/graph/SignalDrawable;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable$1;->this$0:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable$1;->this$0:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-static {v0}, Lcom/android/settingslib/graph/SignalDrawable;->access$004(Lcom/android/settingslib/graph/SignalDrawable;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable$1;->this$0:Lcom/android/settingslib/graph/SignalDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->access$002(Lcom/android/settingslib/graph/SignalDrawable;I)I

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable$1;->this$0:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    .line 276
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable$1;->this$0:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-static {v0}, Lcom/android/settingslib/graph/SignalDrawable;->access$200(Lcom/android/settingslib/graph/SignalDrawable;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable$1;->this$0:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-static {p0}, Lcom/android/settingslib/graph/SignalDrawable;->access$100(Lcom/android/settingslib/graph/SignalDrawable;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
