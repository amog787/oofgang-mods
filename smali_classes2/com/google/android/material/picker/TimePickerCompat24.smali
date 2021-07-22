.class public final Lcom/google/android/material/picker/TimePickerCompat24;
.super Ljava/lang/Object;
.source "TimePickerCompat24.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public static setHourFormat(Lcom/google/android/material/picker/TextInputTimePickerView;Ljava/util/Locale;)V
    .locals 3

    .line 14
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 18
    aget-char v2, p1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 21
    invoke-virtual {p0, v1}, Lcom/google/android/material/picker/TextInputTimePickerView;->setHourFormat(I)V

    return-void
.end method
