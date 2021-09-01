.class Lcom/android/settings/accessibility/ListDialogPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ListDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/accessibility/ListDialogPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 315
    new-instance v0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/ListDialogPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->value:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 306
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 307
    iget p0, p0, Lcom/android/settings/accessibility/ListDialogPreference$SavedState;->value:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
