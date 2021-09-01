.class Lcom/google/android/material/slider/Slider$1;
.super Ljava/lang/Object;
.source "Slider.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/slider/Slider;


# direct methods
.method constructor <init>(Lcom/google/android/material/slider/Slider;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/google/android/material/slider/Slider$1;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/google/android/material/slider/Slider$1;->this$0:Lcom/google/android/material/slider/Slider;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
