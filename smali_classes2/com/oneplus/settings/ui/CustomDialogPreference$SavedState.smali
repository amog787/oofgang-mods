.class Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/CustomDialogPreference;
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
            "Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dialogBundle:Landroid/os/Bundle;

.field isDialogShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 406
    new-instance v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 390
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->isDialogShowing:Z

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 403
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 397
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 398
    iget-boolean p2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->isDialogShowing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-object p0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
