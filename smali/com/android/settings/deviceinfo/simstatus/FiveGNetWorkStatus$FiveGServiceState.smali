.class public Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
.super Ljava/lang/Object;
.source "FiveGNetWorkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FiveGServiceState"
.end annotation


# instance fields
.field private mBearerAllocationStatus:I

.field private mCampOnFiveGService:Z

.field private mDcnr:I

.field private mLevel:I

.field private mNrConfigType:I

.field private mNrIconType:I

.field private mPlmn:I

.field private mRsrp:I

.field private mShowFiveGService:Z

.field private mSnr:I

.field private mUpperLayerInd:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mBearerAllocationStatus:I

    .line 75
    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    const/4 v1, -0x1

    .line 76
    iput v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrIconType:I

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mDcnr:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mLevel:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mRsrp:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mSnr:I

    return p1
.end method

.method static synthetic access$2002(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mPlmn:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mCampOnFiveGService:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mUpperLayerInd:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrIconType:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrIconType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mBearerAllocationStatus:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mBearerAllocationStatus:I

    return p1
.end method


# virtual methods
.method getNrConfigType()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    return p0
.end method

.method public getRsrp()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mRsrp:I

    return p0
.end method

.method public getShowFiveGService()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    return p0
.end method

.method public getSnr()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mSnr:I

    return p0
.end method

.method public isConnectedOnNsaMode()Z
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnectedOnSaMode()Z
    .locals 2

    .line 83
    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
