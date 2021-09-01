.class public Lcom/google/android/material/picker/DatePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/material/picker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mDatePicker:Lcom/google/android/material/picker/DatePicker;

.field private mDateSetListener:Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

.field private final mValidationCallback:Lcom/google/android/material/picker/DatePicker$ValidationCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V
    .locals 3

    .line 103
    invoke-static {p1, p2}, Lcom/google/android/material/picker/DatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 259
    new-instance p1, Lcom/google/android/material/picker/DatePickerDialog$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/picker/DatePickerDialog$2;-><init>(Lcom/google/android/material/picker/DatePickerDialog;)V

    iput-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mValidationCallback:Lcom/google/android/material/picker/DatePicker$ValidationCallback;

    .line 105
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 107
    sget v0, Lcom/google/android/material/R$layout;->op_control_date_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setShowInBottom(Z)V

    .line 109
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x104000a

    .line 111
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v1, 0x1040000

    .line 112
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x2

    invoke-virtual {p0, v1, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p4, :cond_0

    .line 115
    invoke-virtual {p4, v0}, Ljava/util/Calendar;->get(I)I

    move-result p5

    const/4 p1, 0x2

    .line 116
    invoke-virtual {p4, p1}, Ljava/util/Calendar;->get(I)I

    move-result p6

    const/4 p1, 0x5

    .line 117
    invoke-virtual {p4, p1}, Ljava/util/Calendar;->get(I)I

    move-result p7

    .line 120
    :cond_0
    sget p1, Lcom/google/android/material/R$id;->datePicker:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/DatePicker;

    iput-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    .line 121
    invoke-virtual {p1, p5, p6, p7, p0}, Lcom/google/android/material/picker/DatePicker;->init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0x801

    const/16 p4, 0xb

    const/16 p5, 0x1f

    .line 124
    invoke-virtual {p1, p2, p4, p5}, Ljava/util/Calendar;->set(III)V

    .line 125
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/google/android/material/picker/DatePicker;->setMaxDate(J)V

    .line 126
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    const/16 p2, 0x76d

    const/4 p4, 0x0

    .line 127
    invoke-virtual {p1, p2, p4, v0}, Ljava/util/Calendar;->set(III)V

    .line 128
    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/google/android/material/picker/DatePicker;->setMinDate(J)V

    .line 130
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerDialog;->mValidationCallback:Lcom/google/android/material/picker/DatePicker$ValidationCallback;

    invoke-virtual {p1, p2}, Lcom/google/android/material/picker/DatePicker;->setValidationCallback(Lcom/google/android/material/picker/DatePicker$ValidationCallback;)V

    .line 132
    iput-object p3, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDateSetListener:Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;III)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 78
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/picker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;III)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDateSetListener:Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/DatePickerDialog;)Lcom/google/android/material/picker/DatePicker;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    return-object p0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 137
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x10104ac

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 139
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public getDatePicker()Lcom/google/android/material/picker/DatePicker;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 147
    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog;->onAttachedToWindow()V

    .line 148
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 150
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 153
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/SmoothRoundLayout;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SmoothRoundLayout;

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SmoothRoundLayout;->setCornerRadius(F)V

    .line 158
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$drawable;->op_dialog_material_background_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 160
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$color;->op_control_bg_color_popup_default:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->setTint(I)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDateSetListener:Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

    if-eqz p1, :cond_2

    .line 208
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 209
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDateSetListener:Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;

    iget-object p2, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p2}, Lcom/google/android/material/picker/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    .line 210
    invoke-virtual {v1}, Lcom/google/android/material/picker/DatePicker;->getMonth()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->getDayOfMonth()I

    move-result p0

    .line 209
    invoke-interface {p1, p2, v0, v1, p0}, Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/google/android/material/picker/DatePicker;III)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDateChanged(Lcom/google/android/material/picker/DatePicker;III)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/google/android/material/picker/DatePicker;->init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 252
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 253
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    .line 254
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    .line 255
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 256
    iget-object v2, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {v2, v0, v1, p1, p0}, Lcom/google/android/material/picker/DatePicker;->init(IIILcom/google/android/material/picker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 243
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {v1}, Lcom/google/android/material/picker/DatePicker;->getYear()I

    move-result v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    iget-object v1, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {v1}, Lcom/google/android/material/picker/DatePicker;->getMonth()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    iget-object p0, p0, Lcom/google/android/material/picker/DatePickerDialog;->mDatePicker:Lcom/google/android/material/picker/DatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/picker/DatePicker;->getDayOfMonth()I

    move-result p0

    const-string v1, "day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public show()V
    .locals 2

    .line 166
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, -0x1

    .line 167
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/picker/DatePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/picker/DatePickerDialog$1;-><init>(Lcom/google/android/material/picker/DatePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
