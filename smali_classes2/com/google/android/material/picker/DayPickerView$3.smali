.class Lcom/google/android/material/picker/DayPickerView$3;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 450
    iput-object p1, p0, Lcom/google/android/material/picker/DayPickerView$3;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerView$3;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/DayPickerView;->access$300(Lcom/google/android/material/picker/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerView$3;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/DayPickerView;->access$400(Lcom/google/android/material/picker/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    move p1, v1

    .line 464
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/picker/DayPickerView$3;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {v0}, Lcom/google/android/material/picker/DayPickerView;->access$500(Lcom/google/android/material/picker/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 468
    iget-object v1, p0, Lcom/google/android/material/picker/DayPickerView$3;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {v1}, Lcom/google/android/material/picker/DayPickerView;->access$600(Lcom/google/android/material/picker/DayPickerView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, p1

    .line 469
    iget-object p0, p0, Lcom/google/android/material/picker/DayPickerView$3;->this$0:Lcom/google/android/material/picker/DayPickerView;

    invoke-static {p0}, Lcom/google/android/material/picker/DayPickerView;->access$600(Lcom/google/android/material/picker/DayPickerView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method
