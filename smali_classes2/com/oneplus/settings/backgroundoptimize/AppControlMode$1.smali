.class Lcom/oneplus/settings/backgroundoptimize/AppControlMode$1;
.super Ljava/lang/Object;
.source "AppControlMode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/settings/backgroundoptimize/AppControlMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
    .locals 1

    .line 37
    new-instance p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;-><init>(Landroid/os/Parcel;Lcom/oneplus/settings/backgroundoptimize/AppControlMode$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
    .locals 0

    .line 42
    new-array p0, p1, [Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode$1;->newArray(I)[Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    move-result-object p0

    return-object p0
.end method
