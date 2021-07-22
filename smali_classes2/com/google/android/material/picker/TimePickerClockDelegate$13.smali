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

    .line 1294
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1298
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1299
    sget v0, Lcom/google/android/material/R$id;->am_label:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1300
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v1}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1800(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 1301
    :cond_0
    sget v0, Lcom/google/android/material/R$id;->pm_label:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 1302
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1800(Lcom/google/android/material/picker/TimePickerClockDelegate;I)V

    goto :goto_0

    .line 1303
    :cond_1
    sget v0, Lcom/google/android/material/R$id;->hours:I

    if-ne p1, v0, :cond_2

    .line 1304
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v1, v2, v2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1400(Lcom/google/android/material/picker/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    .line 1305
    :cond_2
    sget v0, Lcom/google/android/material/R$id;->minutes:I

    if-ne p1, v0, :cond_3

    .line 1306
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p1, v2, v2, v2}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$1400(Lcom/google/android/material/picker/TimePickerClockDelegate;IZZ)V

    .line 1312
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$13;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$2300(Lcom/google/android/material/picker/TimePickerClockDelegate;)V

    :cond_3
    return-void
.end method
