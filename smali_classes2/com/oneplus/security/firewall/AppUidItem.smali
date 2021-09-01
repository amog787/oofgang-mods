.class public Lcom/oneplus/security/firewall/AppUidItem;
.super Ljava/lang/Object;
.source "AppUidItem.java"


# instance fields
.field private appUid:I

.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppPkgItem;",
            ">;"
        }
    .end annotation
.end field

.field private dataEnable:Z

.field private wlanEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppUid()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/oneplus/security/firewall/AppUidItem;->appUid:I

    return p0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/security/firewall/AppPkgItem;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/oneplus/security/firewall/AppUidItem;->apps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/firewall/AppUidItem;->apps:Ljava/util/List;

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/oneplus/security/firewall/AppUidItem;->apps:Ljava/util/List;

    return-object p0
.end method

.method public isDataEnable()Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oneplus/security/firewall/AppUidItem;->dataEnable:Z

    return p0
.end method

.method public isWlanEnable()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/oneplus/security/firewall/AppUidItem;->wlanEnable:Z

    return p0
.end method

.method public setAppUid(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/oneplus/security/firewall/AppUidItem;->appUid:I

    return-void
.end method

.method public setDataEnable(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/oneplus/security/firewall/AppUidItem;->dataEnable:Z

    return-void
.end method

.method public setWlanEnable(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oneplus/security/firewall/AppUidItem;->wlanEnable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppUidItem [appUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/security/firewall/AppUidItem;->appUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/security/firewall/AppUidItem;->dataEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wlanEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/security/firewall/AppUidItem;->wlanEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", apps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/security/firewall/AppUidItem;->apps:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
