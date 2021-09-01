.class Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate$1;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;
    .locals 0

    .line 88
    new-instance p0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;
    .locals 0

    .line 92
    new-array p0, p1, [Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate$1;->newArray(I)[Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    move-result-object p0

    return-object p0
.end method
