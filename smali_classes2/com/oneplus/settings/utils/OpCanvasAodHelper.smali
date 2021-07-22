.class public Lcom/oneplus/settings/utils/OpCanvasAodHelper;
.super Ljava/lang/Object;
.source "OpCanvasAodHelper.java"


# static fields
.field private static final mCanvasAodUri:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://net.oneplus.launcher.canvas.CanvasProvider/canvasAODEnabled"

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OpCanvasAodHelper;->mCanvasAodUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oneplus/settings/utils/OpCanvasAodHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getConfirmDialogIntent()Landroid/content/Intent;
    .locals 3

    .line 34
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oneplus.canvasresources"

    const-string v2, "com.oneplus.canvasresources.canvaswallpaper.CanvasAodMessageDialog"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "action_code"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public isCanvasAodEnabled()Z
    .locals 7

    const-string v0, "canvasAODEnabled"

    const-string v1, "OpCanvasAodHelper"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/settings/utils/OpCanvasAodHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/oneplus/settings/utils/OpCanvasAodHelper;->mCanvasAodUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    .line 53
    :try_start_1
    iget-object p0, p0, Lcom/oneplus/settings/utils/OpCanvasAodHelper;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "canvas_aod_enabled"

    .line 57
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 53
    invoke-static {p0, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v2, :cond_1

    move p0, v2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    move p0, v3

    move v0, p0

    goto :goto_1

    :catch_1
    move-exception p0

    move v0, v3

    .line 61
    :goto_0
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_1

    const-string v4, "isCanvasAodEnabled: occur error"

    .line 62
    invoke-static {v1, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move p0, v3

    .line 65
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCanvasAodEnabled: enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", systemUIEnableCanvas= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method
