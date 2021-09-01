.class Lcom/google/android/material/picker/TimePickerDialog$2;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/TimePickerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/TimePickerDialog;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TimePickerDialog;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog$2;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 238
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog$2;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-static {p1}, Lcom/google/android/material/picker/TimePickerDialog;->access$000(Lcom/google/android/material/picker/TimePickerDialog;)Lcom/google/android/material/picker/TimePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePicker;->validateInput()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog$2;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, p1, v0}, Lcom/google/android/material/picker/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 240
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerDialog$2;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
