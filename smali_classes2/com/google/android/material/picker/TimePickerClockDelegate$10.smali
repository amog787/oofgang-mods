.class Lcom/google/android/material/picker/TimePickerClockDelegate$10;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1263
    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$10;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1266
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerClockDelegate$10;->this$0:Lcom/google/android/material/picker/TimePickerClockDelegate;

    invoke-static {p0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->access$2000(Lcom/google/android/material/picker/TimePickerClockDelegate;)Lcom/google/android/material/picker/NumericTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/picker/NumericTextView;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/picker/TimePickerClockDelegate;->setHour(I)V

    return-void
.end method
