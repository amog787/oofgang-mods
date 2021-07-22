.class public Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;
.super Ljava/lang/Object;
.source "DefaultAppActivityInfo.java"


# instance fields
.field private final mActivityInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->mActivityInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addActivityInfo(Landroid/content/pm/ActivityInfo;)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->mActivityInfoList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActivityInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->mActivityInfoList:Ljava/util/List;

    return-object p0
.end method
