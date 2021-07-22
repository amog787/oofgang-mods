.class final Lcom/oneplus/accountsdk/auth/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/accountsdk/auth/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/accountsdk/auth/e;->b(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/accountsdk/auth/OPAuthListener;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/e;Lcom/oneplus/accountsdk/auth/OPAuthListener;)V
    .locals 0

    iput-object p2, p0, Lcom/oneplus/accountsdk/auth/e$2;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/UserTokenInfo;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->isLogin:Z

    const-string v1, "1003"

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->resultCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->resultMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/e$2;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/e$2;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {p0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/UserTokenInfo;-><init>()V

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->isLogin:Z

    const-string v2, "6000"

    iput-object v2, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->resultCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->resultMsg:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->token:Ljava/lang/String;

    const-string v1, "oplustoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->heytapToken:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->isLogin:Z

    const-string p1, "1003"

    iput-object p1, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->resultCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oneplus/accountsdk/entity/UserTokenInfo;->resultMsg:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/e$2;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqFinish(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/e$2;->a:Lcom/oneplus/accountsdk/auth/OPAuthListener;

    invoke-interface {p0}, Lcom/oneplus/accountsdk/auth/OPAuthListener;->onReqComplete()V

    :cond_1
    return-void
.end method
