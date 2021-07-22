.class Lcom/google/android/material/picker/TimePickerDialog$1$1$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/TimePickerDialog$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/material/picker/TimePickerDialog$1$1;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TimePickerDialog$1$1;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1$1;->this$2:Lcom/google/android/material/picker/TimePickerDialog$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1$1;->this$2:Lcom/google/android/material/picker/TimePickerDialog$1$1;

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerDialog$1$1;->this$1:Lcom/google/android/material/picker/TimePickerDialog$1;

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerDialog$1;->this$0:Lcom/google/android/material/picker/TimePickerDialog;

    invoke-static {p0}, Lcom/google/android/material/picker/TimePickerDialog;->access$000(Lcom/google/android/material/picker/TimePickerDialog;)Lcom/google/android/material/picker/TimePicker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->setSoftInputFocus()V

    return-void
.end method
