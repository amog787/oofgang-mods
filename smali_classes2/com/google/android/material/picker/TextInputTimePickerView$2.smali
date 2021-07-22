.class Lcom/google/android/material/picker/TextInputTimePickerView$2;
.super Ljava/lang/Object;
.source "TextInputTimePickerView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/TextInputTimePickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TextInputTimePickerView;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 136
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$100(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setActivated(Z)V

    .line 137
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$000(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setActivated(Z)V

    .line 138
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    sget v2, Lcom/google/android/material/R$style;->OPTextAppearance_Material_TimePicker_InputFieldUnActive:I

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$000(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$200(Lcom/google/android/material/picker/TextInputTimePickerView;ILandroid/widget/TextView;)V

    .line 139
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    sget v2, Lcom/google/android/material/R$style;->OPTextAppearance_Material_TimePicker_InputField:I

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$100(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$200(Lcom/google/android/material/picker/TextInputTimePickerView;ILandroid/widget/TextView;)V

    .line 140
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$100(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {v2}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$300(Lcom/google/android/material/picker/TextInputTimePickerView;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 141
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$000(Lcom/google/android/material/picker/TextInputTimePickerView;)Landroid/widget/EditText;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {v2}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$300(Lcom/google/android/material/picker/TextInputTimePickerView;)[I

    move-result-object v2

    aget v0, v2, v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 142
    iget-object p2, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p2, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$400(Lcom/google/android/material/picker/TextInputTimePickerView;Z)V

    .line 144
    iget-object p0, p0, Lcom/google/android/material/picker/TextInputTimePickerView$2;->this$0:Lcom/google/android/material/picker/TextInputTimePickerView;

    invoke-static {p0, p1}, Lcom/google/android/material/picker/TextInputTimePickerView;->access$500(Lcom/google/android/material/picker/TextInputTimePickerView;Landroid/view/View;)V

    :cond_0
    return-void
.end method
