.class public Lcom/oneplus/settings/better/OPAppModel;
.super Ljava/lang/Object;
.source "OPAppModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appLabel:Ljava/lang/String;

.field private appopsMode:I

.field private disable:Z

.field private editMode:Z

.field private isGameAPP:Z

.field private isSelected:Z

.field private label:Ljava/lang/String;

.field private lockMode:I

.field private pkgName:Ljava/lang/String;

.field private shortCutIcon:Landroid/graphics/drawable/Drawable;

.field private shortCutId:Ljava/lang/String;

.field private type:I

.field private uid:I

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel$1;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPAppModel$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPAppModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPAppModel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/oneplus/settings/better/OPAppModel;->shortCutId:Ljava/lang/String;

    .line 54
    iput p4, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    .line 55
    iput-boolean p5, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 207
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 211
    :cond_2
    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    .line 212
    iget-object p1, p1, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppModel;->appLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getAppopsMode()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oneplus/settings/better/OPAppModel;->appopsMode:I

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getShortCutIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppModel;->shortCutIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getShortCutId()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/oneplus/settings/better/OPAppModel;->shortCutId:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/oneplus/settings/better/OPAppModel;->type:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    return p0
.end method

.method public getVersionCode()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/oneplus/settings/better/OPAppModel;->versionCode:I

    return p0
.end method

.method public isDisable()Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPAppModel;->disable:Z

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPAppModel;->editMode:Z

    return p0
.end method

.method public isGameAPP()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/better/OPAppModel;->lockMode:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP:Z

    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->appLabel:Ljava/lang/String;

    return-void
.end method

.method public setAppopsMode(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/oneplus/settings/better/OPAppModel;->appopsMode:I

    return-void
.end method

.method public setDisable(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPAppModel;->disable:Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPAppModel;->editMode:Z

    return-void
.end method

.method public setGameAPP(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    return-void
.end method

.method public setShortCutIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->shortCutIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/oneplus/settings/better/OPAppModel;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 171
    iget-object p2, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget p2, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget p2, p0, Lcom/oneplus/settings/better/OPAppModel;->lockMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-boolean p2, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-boolean p0, p0, Lcom/oneplus/settings/better/OPAppModel;->isGameAPP:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
