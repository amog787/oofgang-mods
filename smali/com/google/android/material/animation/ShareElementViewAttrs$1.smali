.class final Lcom/google/android/material/animation/ShareElementViewAttrs$1;
.super Ljava/lang/Object;
.source "ShareElementViewAttrs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/animation/ShareElementViewAttrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/animation/ShareElementViewAttrs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/animation/ShareElementViewAttrs;
    .locals 0

    .line 59
    new-instance p0, Lcom/google/android/material/animation/ShareElementViewAttrs;

    invoke-direct {p0, p1}, Lcom/google/android/material/animation/ShareElementViewAttrs;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/ShareElementViewAttrs$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/animation/ShareElementViewAttrs;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/material/animation/ShareElementViewAttrs;
    .locals 0

    .line 64
    new-array p0, p1, [Lcom/google/android/material/animation/ShareElementViewAttrs;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/ShareElementViewAttrs$1;->newArray(I)[Lcom/google/android/material/animation/ShareElementViewAttrs;

    move-result-object p0

    return-object p0
.end method
