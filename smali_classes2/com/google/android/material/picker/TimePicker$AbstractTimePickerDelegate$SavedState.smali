.class public Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentItemShowing:I

.field private final mHour:I

.field private final mIs24HourMode:Z

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 492
    new-instance v0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 459
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/material/picker/TimePicker$1;)V
    .locals 0

    .line 439
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 446
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIZI)V
    .locals 0

    .line 451
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 452
    iput p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    .line 453
    iput p3, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    .line 454
    iput-boolean p4, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    .line 455
    iput p5, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    return-void
.end method


# virtual methods
.method public getCurrentItemShowing()I
    .locals 0

    .line 479
    iget p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    return p0
.end method

.method public getHour()I
    .locals 0

    .line 467
    iget p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    return p0
.end method

.method public getMinute()I
    .locals 0

    .line 471
    iget p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    return p0
.end method

.method public is24HourMode()Z
    .locals 0

    .line 475
    iget-boolean p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 484
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 485
    iget p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mMinute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-boolean p2, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mIs24HourMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget p0, p0, Lcom/google/android/material/picker/TimePicker$AbstractTimePickerDelegate$SavedState;->mCurrentItemShowing:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
