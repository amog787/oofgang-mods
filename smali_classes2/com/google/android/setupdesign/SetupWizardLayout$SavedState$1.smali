.class Lcom/google/android/setupdesign/SetupWizardLayout$SavedState$1;
.super Ljava/lang/Object;
.source "SetupWizardLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;
    .locals 0

    .line 420
    new-instance p0, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 416
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;
    .locals 0

    .line 425
    new-array p0, p1, [Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 416
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState$1;->newArray(I)[Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    move-result-object p0

    return-object p0
.end method
