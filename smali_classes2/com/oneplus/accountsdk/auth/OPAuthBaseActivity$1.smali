.class final Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->access$000()Ljava/lang/String;

    const-string p2, "com.onplus.account.login.broadcast"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->access$100(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    const/4 p2, 0x2

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->access$200(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/oneplus/accountsdk/auth/OPAuth;->getAccessAccountPremission(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-static {p2}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->access$300(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)Lcom/oneplus/accountsdk/auth/c$a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oneplus/accountsdk/auth/b;->a(Landroid/content/Context;Lcom/oneplus/accountsdk/auth/c$a;)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->access$102(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;Z)Z

    return-void

    :cond_1
    const-string p2, "com.onplus.account.cancel.broadcast"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->access$400(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->access$400(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)Lcom/oneplus/accountsdk/auth/OPAuthResponse;

    move-result-object p1

    iget-object p1, p1, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a:Lcom/oneplus/accountsdk/a;

    invoke-static {p1}, Lcom/oneplus/accountsdk/auth/OPAuthResponse;->a(Lcom/oneplus/accountsdk/a;)V

    :cond_2
    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$1;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
