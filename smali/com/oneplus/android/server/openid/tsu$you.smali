.class Lcom/oneplus/android/server/openid/tsu$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/openid/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/openid/tsu;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/openid/tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/tsu$you;->zta:Lcom/oneplus/android/server/openid/tsu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "OpenIdManager"

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive user change broadcast, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle broadcast for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7ad942ef    # -7.8400085E-36f

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x392cb822

    if-eq v2, v3, :cond_1

    const v3, 0x42dd01f1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v5

    goto :goto_0

    :cond_1
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/oneplus/android/server/openid/tsu$you;->zta:Lcom/oneplus/android/server/openid/tsu;

    invoke-static {p0, p2}, Lcom/oneplus/android/server/openid/tsu;->ssp(Lcom/oneplus/android/server/openid/tsu;I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/oneplus/android/server/openid/tsu$you;->zta:Lcom/oneplus/android/server/openid/tsu;

    invoke-static {v0}, Lcom/oneplus/android/server/openid/tsu;->tsu(Lcom/oneplus/android/server/openid/tsu;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/tsu$you;->zta:Lcom/oneplus/android/server/openid/tsu;

    invoke-static {p0, p2, v0}, Lcom/oneplus/android/server/openid/tsu;->rtg(Lcom/oneplus/android/server/openid/tsu;ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/oneplus/android/server/openid/tsu$you;->zta:Lcom/oneplus/android/server/openid/tsu;

    invoke-static {p0, p2}, Lcom/oneplus/android/server/openid/tsu;->sis(Lcom/oneplus/android/server/openid/tsu;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p2, "Error while handling user changed broadcast"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
