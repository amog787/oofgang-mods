.class Lcom/google/android/material/slider/Slider$SliderState;
.super Landroid/view/View$BaseSavedState;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SliderState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/slider/Slider$SliderState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field hasFocus:Z

.field stepSize:F

.field thumbPosition:F

.field ticksCoordinates:[F

.field valueFrom:F

.field valueTo:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 806
    new-instance v0, Lcom/google/android/material/slider/Slider$SliderState$1;

    invoke-direct {v0}, Lcom/google/android/material/slider/Slider$SliderState$1;-><init>()V

    sput-object v0, Lcom/google/android/material/slider/Slider$SliderState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 827
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider$SliderState;->valueFrom:F

    .line 829
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider$SliderState;->valueTo:F

    .line 830
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider$SliderState;->thumbPosition:F

    .line 831
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/Slider$SliderState;->stepSize:F

    .line 832
    iget-object v0, p0, Lcom/google/android/material/slider/Slider$SliderState;->ticksCoordinates:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 833
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    iput-boolean p1, p0, Lcom/google/android/material/slider/Slider$SliderState;->hasFocus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/material/slider/Slider$1;)V
    .locals 0

    .line 797
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/Slider$SliderState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 823
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 838
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 839
    iget p2, p0, Lcom/google/android/material/slider/Slider$SliderState;->valueFrom:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 840
    iget p2, p0, Lcom/google/android/material/slider/Slider$SliderState;->valueTo:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 841
    iget p2, p0, Lcom/google/android/material/slider/Slider$SliderState;->thumbPosition:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 842
    iget p2, p0, Lcom/google/android/material/slider/Slider$SliderState;->stepSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 843
    iget-object p2, p0, Lcom/google/android/material/slider/Slider$SliderState;->ticksCoordinates:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    const/4 p2, 0x1

    new-array p2, p2, [Z

    .line 845
    iget-boolean p0, p0, Lcom/google/android/material/slider/Slider$SliderState;->hasFocus:Z

    const/4 v0, 0x0

    aput-boolean p0, p2, v0

    .line 846
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
