.class Lcom/google/android/material/picker/TimePickerClockDelegate$13;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/TimePickerClockDelegate;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1303
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1304
    sget v0, Lcom/google/android/material/R$id;->am_label:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1305
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1900(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 1306
    :cond_0
    sget v0, Lcom/google/android/material/R$id;->pm_label:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 1307
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1900(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 1308
    :cond_1
    sget v0, Lcom/google/android/material/R$id;->hours:I

    if-ne p1, v0, :cond_2

    .line 1309
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v1, v2, v2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1500(Lcom/google/android/material/picker/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    .line 1310
    :cond_2
    sget v0, Lcom/google/android/material/R$id;->minutes:I

    if-ne p1, v0, :cond_3

    .line 1311
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v2, v2, v2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1500(Lcom/google/android/material/picker/TimePickerClockDelegate;IZZ)V

    .line 1317
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$2400(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    :cond_3
    return-void
.end method
