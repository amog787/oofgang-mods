.class Lcom/google/android/material/indicator/PageIndicator$1;
.super Ljava/lang/Object;
.source "PageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/indicator/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/indicator/PageIndicator;


# direct methods
.method constructor <init>(Lcom/google/android/material/indicator/PageIndicator;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/google/android/material/indicator/PageIndicator$1;->this$0:Lcom/google/android/material/indicator/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicator$1;->this$0:Lcom/google/android/material/indicator/PageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/indicator/PageIndicator;->access$002(Lcom/google/android/material/indicator/PageIndicator;Z)Z

    .line 237
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicator$1;->this$0:Lcom/google/android/material/indicator/PageIndicator;

    invoke-static {v0}, Lcom/google/android/material/indicator/PageIndicator;->access$100(Lcom/google/android/material/indicator/PageIndicator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicator$1;->this$0:Lcom/google/android/material/indicator/PageIndicator;

    invoke-static {p0}, Lcom/google/android/material/indicator/PageIndicator;->access$100(Lcom/google/android/material/indicator/PageIndicator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/material/indicator/PageIndicator;->access$200(Lcom/google/android/material/indicator/PageIndicator;I)V

    :cond_0
    return-void
.end method
