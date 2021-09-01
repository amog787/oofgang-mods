.class public Lcom/oneplus/accountsdk/auth/OPAuth;
.super Ljava/lang/Object;


# static fields
.field private static mAuth:Lcom/oneplus/accountsdk/auth/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/accountsdk/auth/e;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/auth/e;-><init>()V

    sput-object v0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    return-void
.end method

.method private static checkContextNotNull(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Please check context, it must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static getAccessAccountPremission(Landroid/app/Activity;I[Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/accountsdk/auth/g;->a(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getAuthToken(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthInfo;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oneplus/accountsdk/auth/OPAuthInfo;",
            "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
            "Lcom/oneplus/accountsdk/entity/UserTokenInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/OPAuth;->checkContextNotNull(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    sget-object p1, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {p1, p0, p2}, Lcom/oneplus/accountsdk/auth/g;->b(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V

    return-void
.end method

.method protected static sendBindResult(Lcom/oneplus/accountsdk/entity/UserBindInfo;)V
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {v0, p0}, Lcom/oneplus/accountsdk/auth/g;->a(Lcom/oneplus/accountsdk/entity/UserBindInfo;)V

    return-void
.end method

.method public static startAccountSettingsActivity(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/OPAuth;->checkContextNotNull(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/accountsdk/auth/OPAuth;->mAuth:Lcom/oneplus/accountsdk/auth/g;

    invoke-interface {v0, p0}, Lcom/oneplus/accountsdk/auth/g;->b(Landroid/content/Context;)V

    return-void
.end method
