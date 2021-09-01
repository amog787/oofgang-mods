.class public Lcom/google/android/material/animation/ShareElementViewAttrs;
.super Ljava/lang/Object;
.source "ShareElementViewAttrs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/animation/ShareElementViewAttrs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alpha:F

.field public height:F

.field public id:I

.field public startX:F

.field public startY:F

.field public width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/google/android/material/animation/ShareElementViewAttrs$1;

    invoke-direct {v0}, Lcom/google/android/material/animation/ShareElementViewAttrs$1;-><init>()V

    sput-object v0, Lcom/google/android/material/animation/ShareElementViewAttrs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->id:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->startX:F

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->startY:F

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->width:F

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->height:F

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->alpha:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget p2, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget p2, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->startX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 41
    iget p2, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->startY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 42
    iget p2, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->width:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    iget p2, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->height:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 44
    iget p0, p0, Lcom/google/android/material/animation/ShareElementViewAttrs;->alpha:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
