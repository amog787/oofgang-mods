.class public final Lcom/oneplus/accountsdk/auth/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/accountsdk/auth/g;


# static fields
.field private static b:I = -0x1


# instance fields
.field private c:Lcom/oneplus/accountsdk/auth/OPAuthListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserBindInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Landroid/content/Context;)I
    .locals 3

    const-string v0, "com.oneplus.account"

    sget v1, Lcom/oneplus/accountsdk/auth/e;->b:I

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/oneplus/accountsdk/auth/e;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "versionCode: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/oneplus/accountsdk/auth/e;->b:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/oneplus/accountsdk/auth/e;->b:I

    return p0
.end method


# virtual methods
.method public final a(Lcom/oneplus/accountsdk/entity/UserBindInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/e;->c:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/e;->c:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {p0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    return-void

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "listener is null"

    invoke-static {p1, p0}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;I[Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x2

    if-ne p2, p0, :cond_2

    :try_start_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string p0, "flag"

    const-string v1, ""

    invoke-virtual {v7, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_bind_info_array"

    invoke-virtual {v7, p0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string p0, "com.oneplus.account"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p3, p1, p2}, Lcom/oneplus/accountsdk/auth/a;->a([Ljava/lang/String;Landroid/content/Context;I)V

    :goto_0
    return v0

    :cond_3
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    invoke-static {p3, p1, p2}, Lcom/oneplus/accountsdk/auth/a;->a([Ljava/lang/String;Landroid/content/Context;I)V

    :cond_5
    return v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "OPAccountSDK"

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oneplus/accountsdk/auth/e;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/a;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/e;->e(Landroid/content/Context;)I

    move-result p0

    const/16 v1, 0x14a

    if-lt p0, v1, :cond_1

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/a;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    const-string p0, "Account versioncode is lower than 330"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string p0, "OnePlus Account is not existed. Please check the phone has OnePlus Account"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserTokenInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqStart()V

    invoke-interface {p2}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqLoading()V

    :cond_0
    new-instance v0, Lcom/oneplus/accountsdk/auth/e$2;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/accountsdk/auth/e$2;-><init>(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    invoke-static {p1, v0}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/c$a;)V

    return-void
.end method
