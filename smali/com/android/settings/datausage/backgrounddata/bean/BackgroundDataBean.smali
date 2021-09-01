.class public Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;
.super Ljava/lang/Object;
.source "BackgroundDataBean.java"


# instance fields
.field private id:I

.field private package_name:Ljava/lang/String;

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->id:I

    .line 22
    iput-object p2, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->package_name:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->uid:I

    .line 24
    iput p4, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->package_name:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->uid:I

    .line 30
    iput p3, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->type:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->id:I

    return p0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->package_name:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->type:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->uid:I

    return p0
.end method
