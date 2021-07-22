.class Lcom/android/settingslib/drawer/Tile$1;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/Tile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settingslib/drawer/Tile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settingslib/drawer/Tile;
    .locals 1

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    if-eqz p0, :cond_0

    .line 367
    new-instance p0, Lcom/android/settingslib/drawer/ProviderTile;

    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/ProviderTile;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/settingslib/drawer/ActivityTile;

    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/ActivityTile;-><init>(Landroid/os/Parcel;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settingslib/drawer/Tile;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settingslib/drawer/Tile;
    .locals 0

    .line 371
    new-array p0, p1, [Lcom/android/settingslib/drawer/Tile;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile$1;->newArray(I)[Lcom/android/settingslib/drawer/Tile;

    move-result-object p0

    return-object p0
.end method
