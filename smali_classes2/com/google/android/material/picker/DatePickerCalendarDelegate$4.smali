.class Lcom/google/android/material/picker/DatePickerCalendarDelegate$4;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/DatePickerCalendarDelegate;->setCurrentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$4;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$4;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    invoke-static {v0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->access$300(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)Lcom/google/android/material/picker/YearPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 367
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerCalendarDelegate$4;->this$0:Lcom/google/android/material/picker/DatePickerCalendarDelegate;

    invoke-static {p0}, Lcom/google/android/material/picker/DatePickerCalendarDelegate;->access$300(Lcom/google/android/material/picker/DatePickerCalendarDelegate;)Lcom/google/android/material/picker/YearPickerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    return-void
.end method
