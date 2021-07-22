.class abstract Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

.field protected final mContext:Landroid/content/Context;

.field protected final mDelegator:Lcom/google/android/material/picker/TimePicker;

.field protected final mLocale:Ljava/util/Locale;

.field protected mOnTimeChangedListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/material/picker/TimePicker;Landroid/content/Context;)V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/google/android/material/picker/TimePicker;

    .line 403
    iput-object p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 404
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 428
    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 429
    invoke-interface {p0}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->getMinute()I

    move-result p0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 430
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAutoFillChangeListener(Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public setDate(J)V
    .locals 1

    .line 419
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xb

    .line 421
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->setHour(I)V

    const/16 p1, 0xc

    .line 422
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/material/picker/TimePicker$TimePickerDelegate;->setMinute(I)V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/google/android/material/picker/TimePicker$OnTimeChangedListener;

    return-void
.end method
