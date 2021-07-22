.class public Lcom/google/android/material/picker/TimePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private final mIs24HourView:Z

.field private final mTimePicker:Lcom/google/android/material/picker/TimePicker;

.field private final mTimeSetListener:Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 0

    .line 109
    invoke-static {p1, p2}, Lcom/google/android/material/picker/TimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 110
    iput-object p3, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimeSetListener:Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;

    .line 111
    iput p4, p0, Lcom/google/android/material/picker/TimePickerDialog;->mInitialHourOfDay:I

    .line 112
    iput p5, p0, Lcom/google/android/material/picker/TimePickerDialog;->mInitialMinute:I

    .line 113
    iput-boolean p6, p0, Lcom/google/android/material/picker/TimePickerDialog;->mIs24HourView:Z

    .line 115
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 116
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 117
    sget p3, Lcom/google/android/material/R$layout;->op_time_picker_dialog:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    .line 118
    invoke-virtual {p0, p3}, Landroidx/appcompat/app/AlertDialog;->setShowInBottom(Z)V

    .line 119
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const p3, 0x104000a

    .line 120
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, -0x1

    invoke-virtual {p0, p4, p3, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p3, 0x1040000

    .line 121
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, -0x2

    invoke-virtual {p0, p3, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
    sget p1, Lcom/google/android/material/R$id;->timePicker:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/TimePicker;

    iput-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    .line 124
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/TimePicker;->setWindow(Landroid/view/Window;)V

    .line 125
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    iget-boolean p2, p0, Lcom/google/android/material/picker/TimePickerDialog;->mIs24HourView:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 126
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    iget p2, p0, Lcom/google/android/material/picker/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 127
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    iget p2, p0, Lcom/google/android/material/picker/TimePickerDialog;->mInitialMinute:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 128
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p1, p0}, Lcom/google/android/material/picker/TimePicker;->setOnTimeChangedListener(Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/picker/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/TimePickerDialog;)Lcom/google/android/material/picker/TimePicker;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/TimePickerDialog;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/TimePickerDialog;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/TimePickerDialog;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/picker/TimePickerDialog;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/picker/TimePickerDialog;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/picker/TimePickerDialog;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/material/picker/TimePickerDialog;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x101049e

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 85
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 153
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$drawable;->op_dialog_material_background_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 155
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/material/R$color;->op_control_bg_color_popup_default:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/InsetDrawable;->setTint(I)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 158
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/material/picker/TimePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerDialog$1;-><init>(Lcom/google/android/material/picker/TimePickerDialog;)V

    invoke-static {v0, v1}, Landroidx/appcompat/app/SoftKeyBoardListener;->setListener(Landroid/app/Activity;Landroidx/appcompat/app/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimeSetListener:Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;

    if-eqz p1, :cond_2

    .line 234
    iget-object p2, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p2}, Lcom/google/android/material/picker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    .line 235
    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 234
    invoke-interface {p1, p2, v0, p0}, Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/google/android/material/picker/TimePicker;II)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 266
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    .line 268
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 269
    iget-object v2, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/material/picker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 270
    iget-object p1, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 271
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 257
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {v1}, Lcom/google/android/material/picker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    iget-object v1, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {v1}, Lcom/google/android/material/picker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    iget-object p0, p0, Lcom/google/android/material/picker/TimePickerDialog;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/TimePicker;->is24HourView()Z

    move-result p0

    const-string v1, "is24hour"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onTimeChanged(Lcom/google/android/material/picker/TimePicker;II)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    .line 214
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    .line 215
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/TimePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/TimePickerDialog$2;-><init>(Lcom/google/android/material/picker/TimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
