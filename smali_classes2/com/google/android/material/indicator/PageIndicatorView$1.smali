.class Lcom/google/android/material/indicator/PageIndicatorView$1;
.super Landroid/database/DataSetObserver;
.source "PageIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/indicator/PageIndicatorView;->registerSetObserver()V
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

    .line 624
    iput-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView$1;->this$0:Lcom/google/android/material/indicator/PageIndicatorView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView$1;->this$0:Lcom/google/android/material/indicator/PageIndicatorView;

    invoke-static {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->access$000(Lcom/google/android/material/indicator/PageIndicatorView;)V

    return-void
.end method
