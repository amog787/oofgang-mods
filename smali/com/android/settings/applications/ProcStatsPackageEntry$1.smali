.class Lcom/android/settings/applications/ProcStatsPackageEntry$1;
.super Ljava/lang/Object;
.source "ProcStatsPackageEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsPackageEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 0

    .line 157
    new-instance p0, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsPackageEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 0

    .line 161
    new-array p0, p1, [Lcom/android/settings/applications/ProcStatsPackageEntry;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsPackageEntry$1;->newArray(I)[Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object p0

    return-object p0
.end method
