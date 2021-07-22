.class Lcom/android/settings/applications/ProcStatsEntry$1;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settings/applications/ProcStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsEntry;
    .locals 0

    .line 307
    new-instance p0, Lcom/android/settings/applications/ProcStatsEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsEntry;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settings/applications/ProcStatsEntry;
    .locals 0

    .line 311
    new-array p0, p1, [Lcom/android/settings/applications/ProcStatsEntry;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsEntry$1;->newArray(I)[Lcom/android/settings/applications/ProcStatsEntry;

    move-result-object p0

    return-object p0
.end method
