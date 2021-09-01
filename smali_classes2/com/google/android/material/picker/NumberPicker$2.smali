.class Lcom/google/android/material/picker/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/NumberPicker;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$2;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 695
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$2;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$000(Lcom/google/android/material/picker/NumberPicker;)V

    .line 696
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$2;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/google/android/material/R$id;->increment:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 698
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$2;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/material/picker/NumberPicker;->access$300(Lcom/google/android/material/picker/NumberPicker;ZJ)V

    goto :goto_0

    .line 700
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$2;->this$0:Lcom/google/android/material/picker/NumberPicker;

    const/4 p1, 0x0

    invoke-static {p0, p1, v2, v3}, Lcom/google/android/material/picker/NumberPicker;->access$300(Lcom/google/android/material/picker/NumberPicker;ZJ)V

    :goto_0
    return v1
.end method
