.class Lcom/google/android/material/picker/DayPickerView$2;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/DayPickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/DayPickerView;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/google/android/material/picker/DayPickerView$2;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    float-to-double v0, p2

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpg-double p1, v0, v2

    const/high16 p3, 0x40800000    # 4.0f

    const/high16 v0, 0x3e800000    # 0.25f

    if-gez p1, :cond_0

    sub-float/2addr v0, p2

    .line 424
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :goto_0
    mul-float/2addr p1, p3

    goto :goto_1

    :cond_0
    cmpl-float p1, p2, v0

    const/high16 v0, 0x3f400000    # 0.75f

    if-ltz p1, :cond_1

    cmpg-float p1, p2, v0

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    sub-float/2addr v0, p2

    .line 428
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_0

    .line 430
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerView$2;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {p0}, Lcom/google/android/material/picker/DayPickerView;->access$100(Lcom/google/android/material/picker/DayPickerView;)Lcom/google/android/material/picker/DayPickerPagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/picker/DayPickerPagerAdapter;->getCurrentView()Ljava/util/ArrayList;

    move-result-object p0

    .line 431
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_3

    .line 432
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/picker/SimpleMonthView;

    if-eqz p2, :cond_2

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p3, p1

    float-to-int p3, p3

    .line 434
    invoke-virtual {p2, p3}, Lcom/google/android/material/picker/SimpleMonthView;->setMonthTextAlpha(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerView$2;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {p0, p1}, Lcom/google/android/material/picker/DayPickerView;->access$200(Lcom/google/android/material/picker/DayPickerView;I)V

    return-void
.end method
