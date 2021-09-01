.class Lcom/oneplus/settings/OPMemberController$2;
.super Ljava/lang/Object;
.source "OPMemberController.java"

# interfaces
.implements Lcom/oneplus/accountsdk/auth/OPAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPMemberController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/accountsdk/auth/OPAuthListener<",
        "Lcom/oneplus/accountsdk/entity/UserTokenInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPMemberController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPMemberController;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/oneplus/settings/OPMemberController$2;->this$0:Lcom/oneplus/settings/OPMemberController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReqComplete()V
    .locals 0

    return-void
.end method

.method public onReqFinish(Lcom/oneplus/accountsdk/entity/UserTokenInfo;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController$2;->this$0:Lcom/oneplus/settings/OPMemberController;

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPMemberController;->access$202(Lcom/oneplus/settings/OPMemberController;Lcom/oneplus/accountsdk/entity/UserTokenInfo;)Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    .line 315
    iget-object p1, p0, Lcom/oneplus/settings/OPMemberController$2;->this$0:Lcom/oneplus/settings/OPMemberController;

    invoke-static {p1}, Lcom/oneplus/settings/OPMemberController;->access$000(Lcom/oneplus/settings/OPMemberController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 316
    iget-object p0, p0, Lcom/oneplus/settings/OPMemberController$2;->this$0:Lcom/oneplus/settings/OPMemberController;

    const-string v0, "access_token"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/OPMemberController;->access$100(Lcom/oneplus/settings/OPMemberController;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onReqFinish(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Lcom/oneplus/accountsdk/entity/UserTokenInfo;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPMemberController$2;->onReqFinish(Lcom/oneplus/accountsdk/entity/UserTokenInfo;)V

    return-void
.end method

.method public onReqLoading()V
    .locals 0

    return-void
.end method

.method public onReqStart()V
    .locals 0

    return-void
.end method
