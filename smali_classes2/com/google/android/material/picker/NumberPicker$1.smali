.class Lcom/google/android/material/picker/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 679
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$1;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$1;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$000(Lcom/google/android/material/picker/NumberPicker;)V

    .line 683
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$1;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$100(Lcom/google/android/material/picker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/google/android/material/R$id;->increment:I

    if-ne p1, v0, :cond_0

    .line 685
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$1;->this$0:Lcom/google/android/material/picker/NumberPicker;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->access$200(Lcom/google/android/material/picker/NumberPicker;Z)V

    goto :goto_0

    .line 687
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$1;->this$0:Lcom/google/android/material/picker/NumberPicker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/material/picker/NumberPicker;->access$200(Lcom/google/android/material/picker/NumberPicker;Z)V

    :goto_0
    return-void
.end method
