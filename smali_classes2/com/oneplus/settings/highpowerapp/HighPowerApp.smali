.class public Lcom/oneplus/settings/highpowerapp/HighPowerApp;
.super Ljava/lang/Object;
.source "HighPowerApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isLocked:Z

.field public isStopped:Z

.field public pkgName:Ljava/lang/String;

.field public powerLevel:I

.field public timeStamp:J

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp$1;

    invoke-direct {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerApp$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZJ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    .line 35
    iput p3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    .line 36
    iput-boolean p4, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isLocked:Z

    .line 37
    iput-boolean p5, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isStopped:Z

    .line 38
    iput-wide p6, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->timeStamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZJ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    .line 27
    iput-boolean p3, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isLocked:Z

    .line 28
    iput-boolean p4, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isStopped:Z

    .line 29
    iput-wide p5, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->timeStamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getState()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    .line 65
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
    iput-boolean v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isLocked:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isStopped:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->timeStamp:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 54
    iget-object p2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget p2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->powerLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-boolean p2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isLocked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-boolean p2, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->isStopped:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-wide v0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget p0, p0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
