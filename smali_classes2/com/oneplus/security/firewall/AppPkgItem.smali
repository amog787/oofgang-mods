.class Lcom/oneplus/security/firewall/AppPkgItem;
.super Ljava/lang/Object;
.source "AppPkgItem.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/String;

.field private appSortKey:Ljava/lang/String;

.field private isSystemApp:Z

.field private pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/security/firewall/AppPkgItem;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/oneplus/security/firewall/AppPkgItem;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppSortKey()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oneplus/security/firewall/AppPkgItem;->appSortKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oneplus/security/firewall/AppPkgItem;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public isSystemApp()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/oneplus/security/firewall/AppPkgItem;->isSystemApp:Z

    return p0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/oneplus/security/firewall/AppPkgItem;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/oneplus/security/firewall/AppPkgItem;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppSortKey(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/oneplus/security/firewall/AppPkgItem;->appSortKey:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/oneplus/security/firewall/AppPkgItem;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setSystemApp(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/oneplus/security/firewall/AppPkgItem;->isSystemApp:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppPkgItem [appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/security/firewall/AppPkgItem;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/security/firewall/AppPkgItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/security/firewall/AppPkgItem;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appSortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/security/firewall/AppPkgItem;->appSortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSystemApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/security/firewall/AppPkgItem;->isSystemApp:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
