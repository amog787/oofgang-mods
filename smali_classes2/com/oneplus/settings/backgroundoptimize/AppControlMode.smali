.class public Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
.super Ljava/lang/Object;
.source "AppControlMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/settings/backgroundoptimize/AppControlMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mode:I

.field public packageName:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode$1;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/settings/backgroundoptimize/AppControlMode$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->packageName:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->mode:I

    .line 49
    iput p3, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->packageName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->mode:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 71
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mode="

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget p1, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->mode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value="

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget p0, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23
    iget-object p2, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget p2, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->mode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget p0, p0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
