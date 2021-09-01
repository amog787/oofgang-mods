.class public Lcom/verizon/loginenginesvc/clientsdk/internal/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final SVC_COMPONENTS:[Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/ComponentName;

    .line 21
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.verizon.mips.services"

    const-string v3, "com.verizon.loginenginesvc.LoginEngineService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.verizon.loginengine.unbranded"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.motricity.verizon.ssoengine"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/verizon/loginenginesvc/clientsdk/internal/Settings;->SVC_COMPONENTS:[Landroid/content/ComponentName;

    return-void
.end method

.method public static findService(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5

    .line 35
    sget-object v0, Lcom/verizon/loginenginesvc/clientsdk/internal/Settings;->SVC_COMPONENTS:[Landroid/content/ComponentName;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 36
    invoke-static {p0, v3}, Lcom/verizon/loginenginesvc/clientsdk/internal/Settings;->isAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 49
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez p1, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length p1, p0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, p0, v1

    const-string v3, "com.verizon.loginenginesvc.LoginEngineService"

    .line 52
    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    iget-boolean p0, v2, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return v0
.end method
