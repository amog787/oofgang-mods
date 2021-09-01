.class public Lcom/oneplus/settings/defaultapp/DefaultAppUtils;
.super Ljava/lang/Object;
.source "DefaultAppUtils.java"


# direct methods
.method public static create(Landroid/content/Context;I)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    new-instance p0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeEmail;

    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeEmail;-><init>()V

    return-object p0

    .line 60
    :cond_1
    new-instance p0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeMusic;

    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeMusic;-><init>()V

    return-object p0

    .line 58
    :cond_2
    new-instance p0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeGallery;

    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeGallery;-><init>()V

    return-object p0

    .line 56
    :cond_3
    new-instance p0, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeCamera;

    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeCamera;-><init>()V

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;
    .locals 4

    .line 41
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 43
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 44
    aget-object v3, v0, v2

    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {p0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;I)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 109
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public static getDefaultAppValueList()[Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_H2OS:[Ljava/lang/String;

    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_O2OS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getKeyTypeInt(Ljava/lang/String;)I
    .locals 4

    .line 28
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 30
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 31
    aget-object v3, v0, v2

    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static getKeyTypeString(I)Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 78
    sget-object p0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppValueList()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 80
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 81
    aget-object v2, p0, v1

    .line 82
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    aget-object p0, v0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 129
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public static resetDefaultApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 149
    invoke-static {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 151
    invoke-virtual {v0, p1, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 152
    invoke-static {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-virtual {v0, p1, v2, p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result p0

    .line 154
    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method
