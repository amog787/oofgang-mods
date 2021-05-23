.class Lcom/oneplus/android/server/openid/rtg$zta$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/openid/rtg$zta;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rtg:Landroid/content/Intent;

.field final synthetic sis:Ljava/lang/String;

.field final synthetic ssp:Lcom/oneplus/android/server/openid/rtg$zta;

.field final synthetic tsu:Z

.field final synthetic you:Landroid/os/Bundle;

.field final synthetic zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/openid/rtg$zta;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->ssp:Lcom/oneplus/android/server/openid/rtg$zta;

    iput-object p2, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->zta:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->you:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->sis:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->tsu:Z

    iput-object p6, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->rtg:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    iget-object v1, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.intent.extra.UID"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->you:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->you:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const-string v0, "OpenIdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive multi app removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->sis:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->tsu:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->ssp:Lcom/oneplus/android/server/openid/rtg$zta;

    iget-object v0, v0, Lcom/oneplus/android/server/openid/rtg$zta;->zta:Lcom/oneplus/android/server/openid/rtg;

    iget-object v1, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->sis:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/oneplus/android/server/openid/rtg;->zta(Lcom/oneplus/android/server/openid/rtg;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    iget-object v2, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->zta:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->rtg:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->ssp:Lcom/oneplus/android/server/openid/rtg$zta;

    iget-object v1, v1, Lcom/oneplus/android/server/openid/rtg$zta;->zta:Lcom/oneplus/android/server/openid/rtg;

    iget-object v2, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->sis:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->ssp:Lcom/oneplus/android/server/openid/rtg$zta;

    iget-object v3, v3, Lcom/oneplus/android/server/openid/rtg$zta;->zta:Lcom/oneplus/android/server/openid/rtg;

    iget-object v4, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->sis:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/oneplus/android/server/openid/rtg;->you(Lcom/oneplus/android/server/openid/rtg;Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/oneplus/android/server/openid/rtg;->zta(Lcom/oneplus/android/server/openid/rtg;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$zta$zta;->ssp:Lcom/oneplus/android/server/openid/rtg$zta;

    iget-object p0, p0, Lcom/oneplus/android/server/openid/rtg$zta;->zta:Lcom/oneplus/android/server/openid/rtg;

    invoke-static {p0}, Lcom/oneplus/android/server/openid/rtg;->sis(Lcom/oneplus/android/server/openid/rtg;)V

    return-void
.end method
