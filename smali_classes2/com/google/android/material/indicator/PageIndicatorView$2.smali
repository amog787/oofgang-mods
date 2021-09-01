.class Lcom/google/android/material/indicator/PageIndicatorView$2;
.super Ljava/lang/Object;
.source "PageIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/indicator/PageIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/indicator/PageIndicatorView;


# direct methods
.method constructor <init>(Lcom/google/android/material/indicator/PageIndicatorView;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView$2;->this$0:Lcom/google/android/material/indicator/PageIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView$2;->this$0:Lcom/google/android/material/indicator/PageIndicatorView;

    invoke-static {v0}, Lcom/google/android/material/indicator/PageIndicatorView;->access$100(Lcom/google/android/material/indicator/PageIndicatorView;)Lcom/google/android/material/indicator/IndicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setIdle(Z)V

    .line 808
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView$2;->this$0:Lcom/google/android/material/indicator/PageIndicatorView;

    invoke-static {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->access$200(Lcom/google/android/material/indicator/PageIndicatorView;)V

    return-void
.end method
