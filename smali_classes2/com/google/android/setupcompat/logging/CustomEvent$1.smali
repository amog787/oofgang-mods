.class Lcom/google/android/setupcompat/logging/CustomEvent$1;
.super Ljava/lang/Object;
.source "CustomEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/logging/CustomEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/setupcompat/logging/CustomEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/setupcompat/logging/CustomEvent;
    .locals 7

    .line 100
    new-instance p0, Lcom/google/android/setupcompat/logging/CustomEvent;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const-class v0, Lcom/google/android/setupcompat/logging/MetricKey;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/setupcompat/logging/MetricKey;

    const-class v0, Lcom/google/android/setupcompat/logging/MetricKey;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v4

    const-class v0, Lcom/google/android/setupcompat/logging/MetricKey;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/setupcompat/logging/CustomEvent;-><init>(JLcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Lcom/google/android/setupcompat/logging/CustomEvent$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/logging/CustomEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/setupcompat/logging/CustomEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/setupcompat/logging/CustomEvent;
    .locals 0

    .line 109
    new-array p0, p1, [Lcom/google/android/setupcompat/logging/CustomEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/logging/CustomEvent$1;->newArray(I)[Lcom/google/android/setupcompat/logging/CustomEvent;

    move-result-object p0

    return-object p0
.end method
