.class Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/google/android/material/picker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/NumberPicker;)V
    .locals 0

    .line 2337
    iput-object p1, p0, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2337
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    .line 2341
    iput-boolean p1, p0, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2346
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/google/android/material/picker/NumberPicker;

    iget-boolean v1, p0, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/google/android/material/picker/NumberPicker;->access$200(Lcom/google/android/material/picker/NumberPicker;Z)V

    .line 2347
    iget-object v0, p0, Lcom/google/android/material/picker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/google/android/material/picker/NumberPicker;

    invoke-static {v0}, Lcom/google/android/material/picker/NumberPicker;->access$1600(Lcom/google/android/material/picker/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
