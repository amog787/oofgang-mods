.class Lcom/google/android/material/picker/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/DatePicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/DatePicker;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/android/material/picker/DatePicker$1;->this$0:Lcom/google/android/material/picker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lcom/google/android/material/picker/DatePicker;III)V
    .locals 0

    .line 164
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_0

    .line 165
    iget-object p1, p0, Lcom/google/android/material/picker/DatePicker$1;->this$0:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    .line 166
    iget-object p0, p0, Lcom/google/android/material/picker/DatePicker$1;->this$0:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method
