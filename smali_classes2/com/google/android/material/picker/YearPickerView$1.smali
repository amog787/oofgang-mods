.class Lcom/google/android/material/picker/YearPickerView$1;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Lcom/google/android/material/picker/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/YearPickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/YearPickerView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/android/material/picker/YearPickerView$1;->this$0:Lcom/google/android/material/picker/YearPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/google/android/material/picker/NumberPicker;II)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/picker/YearPickerView$1;->this$0:Lcom/google/android/material/picker/YearPickerView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/YearPickerView;->setCurrentYear()V

    return-void
.end method
