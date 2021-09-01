.class public Lcom/oneplus/accountsdk/auth/OPAuthOperateReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "5000"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oneplus.account.bind.info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    const-string p1, "extra_bind_result"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "extra_error_code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oneplus/accountsdk/entity/UserBindInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/UserBindInfo;-><init>()V

    iput-boolean p1, v0, Lcom/oneplus/accountsdk/entity/UserBindInfo;->bindSuccess:Z

    if-eqz p1, :cond_0

    iput-object p0, v0, Lcom/oneplus/accountsdk/entity/UserBindInfo;->resultCode:Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, v0, Lcom/oneplus/accountsdk/entity/UserBindInfo;->resultMsg:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iput-object p2, v0, Lcom/oneplus/accountsdk/entity/UserBindInfo;->resultCode:Ljava/lang/String;

    invoke-static {p2}, Lcom/oneplus/accountsdk/auth/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/OPAuth;->sendBindResult(Lcom/oneplus/accountsdk/entity/UserBindInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
