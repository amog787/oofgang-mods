.class public final Lcom/oneplus/accountsdk/auth/c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/accountsdk/auth/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/accounts/AccountManagerFuture<",
        "Landroid/os/Bundle;",
        ">;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/oneplus/accountsdk/auth/c$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a([Landroid/accounts/AccountManagerFuture;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    aget-object p0, p0, v0

    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/accounts/AccountManagerFuture;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/c;->a([Landroid/accounts/AccountManagerFuture;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/c;->a:Lcom/oneplus/accountsdk/auth/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "listener is null"

    invoke-static {v1, v0}, Lcom/oneplus/accountsdk/utils/OnePlusAuthLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/c;->a:Lcom/oneplus/accountsdk/auth/c$a;

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lcom/oneplus/accountsdk/auth/c$a;->a(Landroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/oneplus/accountsdk/auth/c$a;->a()V

    return-void
.end method
