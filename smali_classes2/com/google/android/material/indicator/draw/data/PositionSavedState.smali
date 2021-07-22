.class public Lcom/google/android/material/indicator/draw/data/PositionSavedState;
.super Landroid/view/View$BaseSavedState;
.source "PositionSavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/indicator/draw/data/PositionSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastSelectedPosition:I

.field private selectedPosition:I

.field private selectingPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/google/android/material/indicator/draw/data/PositionSavedState$1;

    invoke-direct {v0}, Lcom/google/android/material/indicator/draw/data/PositionSavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->selectedPosition:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->selectingPosition:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->lastSelectedPosition:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/material/indicator/draw/data/PositionSavedState$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/material/indicator/draw/data/PositionSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public getLastSelectedPosition()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->lastSelectedPosition:I

    return p0
.end method

.method public getSelectedPosition()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->selectedPosition:I

    return p0
.end method

.method public getSelectingPosition()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->selectingPosition:I

    return p0
.end method

.method public setLastSelectedPosition(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->lastSelectedPosition:I

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->selectedPosition:I

    return-void
.end method

.method public setSelectingPosition(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->selectingPosition:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 51
    iget p2, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->selectedPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget p2, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->selectingPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget p0, p0, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->lastSelectedPosition:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
