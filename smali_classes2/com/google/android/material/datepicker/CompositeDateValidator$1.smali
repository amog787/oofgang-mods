.class final Lcom/google/android/material/datepicker/CompositeDateValidator$1;
.super Ljava/lang/Object;
.source "CompositeDateValidator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CompositeDateValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/CompositeDateValidator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/CompositeDateValidator;
    .locals 1

    .line 50
    const-class p0, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p0

    .line 52
    new-instance p1, Lcom/google/android/material/datepicker/CompositeDateValidator;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/datepicker/CompositeDateValidator;-><init>(Ljava/util/List;Lcom/google/android/material/datepicker/CompositeDateValidator$1;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/CompositeDateValidator$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/CompositeDateValidator;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/CompositeDateValidator;
    .locals 0

    .line 58
    new-array p0, p1, [Lcom/google/android/material/datepicker/CompositeDateValidator;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/CompositeDateValidator$1;->newArray(I)[Lcom/google/android/material/datepicker/CompositeDateValidator;

    move-result-object p0

    return-object p0
.end method
