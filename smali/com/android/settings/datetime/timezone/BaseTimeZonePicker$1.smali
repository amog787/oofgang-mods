.class Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BaseTimeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field state:I

.field final synthetic val$mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)V
    .locals 0

    .line 104
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;->val$mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;->state:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 109
    iput p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;->state:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 114
    iget p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;->state:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    if-eqz p2, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;->val$mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_0
    return-void
.end method
