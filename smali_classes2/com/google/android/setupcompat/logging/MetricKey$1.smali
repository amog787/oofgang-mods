.class Lcom/google/android/setupcompat/logging/MetricKey$1;
.super Ljava/lang/Object;
.source "MetricKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/logging/MetricKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/setupcompat/logging/MetricKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/setupcompat/logging/MetricKey;
    .locals 2

    .line 109
    new-instance p0, Lcom/google/android/setupcompat/logging/MetricKey;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/setupcompat/logging/MetricKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/setupcompat/logging/MetricKey$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/logging/MetricKey$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/setupcompat/logging/MetricKey;
    .locals 0

    .line 114
    new-array p0, p1, [Lcom/google/android/setupcompat/logging/MetricKey;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/logging/MetricKey$1;->newArray(I)[Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object p0

    return-object p0
.end method
