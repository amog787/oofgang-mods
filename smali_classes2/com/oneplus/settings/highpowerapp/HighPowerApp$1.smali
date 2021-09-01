.class Lcom/oneplus/settings/highpowerapp/HighPowerApp$1;
.super Ljava/lang/Object;
.source "HighPowerApp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/highpowerapp/HighPowerApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .locals 0

    .line 73
    new-instance p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/highpowerapp/HighPowerApp$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .locals 0

    .line 77
    new-array p0, p1, [Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/highpowerapp/HighPowerApp$1;->newArray(I)[Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    move-result-object p0

    return-object p0
.end method
