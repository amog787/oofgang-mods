.class public final Lcom/oneplus/accountsdk/auth/b;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/accounts/AccountManagerFuture;Lcom/oneplus/accountsdk/auth/c$a;)V
    .locals 4

    new-instance v0, Lcom/oneplus/accountsdk/auth/c;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/auth/c;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/accounts/AccountManagerFuture;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-object p1, v0, Lcom/oneplus/accountsdk/auth/c;->a:Lcom/oneplus/accountsdk/auth/c$a;

    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/c$a;)V
    .locals 9

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/c$a;->a()V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.oneplus.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    if-gtz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/oneplus/accountsdk/auth/c$a;->a()V

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 p0, 0x0

    aget-object v3, v0, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "com.oneplus.account"

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/accounts/AccountManagerFuture;Lcom/oneplus/accountsdk/auth/c$a;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 1

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.oneplus.account"

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method
