.class Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/NumberPicker;)V
    .locals 0

    .line 2370
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 2374
    iget-object p0, p0, Lcom/google/android/material/picker/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/NumberPicker;->performLongClick()Z

    return-void
.end method
