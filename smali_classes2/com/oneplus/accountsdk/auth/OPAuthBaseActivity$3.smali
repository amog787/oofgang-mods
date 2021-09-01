.class final Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->onActivityResult(IILandroid/content/Intent;)V
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

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-static {v0}, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;->access$500(Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;)V

    iget-object p0, p0, Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity$3;->a:Lcom/oneplus/accountsdk/auth/OPAuthBaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
