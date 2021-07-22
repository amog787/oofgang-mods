.class Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;
.super Ljava/lang/Object;
.source "OPSwitchRecordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/security/OPSwitchRecordList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchRecordInfo"
.end annotation


# instance fields
.field private mModel:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;->mTimeStamp:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;->mModel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;->mModel:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/oneplus/settings/security/OPSwitchRecordList$SwitchRecordInfo;->mTimeStamp:Ljava/lang/String;

    return-object p0
.end method
