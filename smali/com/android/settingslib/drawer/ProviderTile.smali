.class public Lcom/android/settingslib/drawer/ProviderTile;
.super Lcom/android/settingslib/drawer/Tile;
.source "ProviderTile.java"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/ProviderInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/drawer/Tile;-><init>(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p3}, Lcom/android/settingslib/drawer/Tile;->setMetaData(Landroid/os/Bundle;)V

    .line 48
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/drawer/ProviderTile;->mAuthority:Ljava/lang/String;

    const-string p1, "com.android.settings.keyhint"

    .line 49
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/ProviderTile;->mKey:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/Tile;-><init>(Landroid/os/Parcel;)V

    .line 54
    iget-object p1, p0, Lcom/android/settingslib/drawer/Tile;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    check-cast p1, Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/drawer/ProviderTile;->mAuthority:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.android.settings.keyhint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/ProviderTile;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getComponentIcon(Landroid/content/pm/ComponentInfo;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getComponentInfo(Landroid/content/Context;)Landroid/content/pm/ComponentInfo;
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    if-nez v0, :cond_1

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 78
    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    .line 79
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/drawer/ProviderTile;->mKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getSwitchDataFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->setMetaData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find package info for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProviderTile"

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->mComponentInfo:Landroid/content/pm/ComponentInfo;

    return-object p0
.end method

.method protected getComponentLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/drawer/ProviderTile;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/drawer/ProviderTile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
