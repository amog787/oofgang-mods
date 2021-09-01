.class final Landroidx/appcompat/widget/AppCompatCheckBox$SavedState$1;
.super Ljava/lang/Object;
.source "AppCompatCheckBox.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;
    .locals 1

    .line 538
    new-instance p0, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;-><init>(Landroid/os/Parcel;Landroidx/appcompat/widget/AppCompatCheckBox$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 535
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;
    .locals 0

    .line 542
    new-array p0, p1, [Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 535
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox$SavedState$1;->newArray(I)[Landroidx/appcompat/widget/AppCompatCheckBox$SavedState;

    move-result-object p0

    return-object p0
.end method
