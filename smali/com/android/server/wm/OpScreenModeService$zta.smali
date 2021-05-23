.class Lcom/android/server/wm/OpScreenModeService$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/OpScreenModeService;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/wm/OpScreenModeService;

.field you:Z

.field zta:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->sis:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->zta:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->you:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.android.compatibility.common.deviceinfo"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->sis:Lcom/android/server/wm/OpScreenModeService;

    iget p1, p1, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->sis:Lcom/android/server/wm/OpScreenModeService;

    iget p1, p1, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    iput p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->zta:I

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->sis:Lcom/android/server/wm/OpScreenModeService;

    iput p2, p1, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    sget-boolean p1, Lcom/android/server/wm/OpScreenModeService;->sIsResolutionAuto:Z

    iput-boolean p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->you:Z

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/server/wm/OpScreenModeService;->sIsResolutionAuto:Z

    goto :goto_0

    :cond_0
    const-string p2, "com.android.tradefed.utils.wifi"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->zta:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$zta;->sis:Lcom/android/server/wm/OpScreenModeService;

    iget p2, p0, Lcom/android/server/wm/OpScreenModeService$zta;->zta:I

    iput p2, p1, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    iget-boolean p0, p0, Lcom/android/server/wm/OpScreenModeService$zta;->you:Z

    sput-boolean p0, Lcom/android/server/wm/OpScreenModeService;->sIsResolutionAuto:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ScreenModeService"

    const-string p2, "sPkgReceiver error."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
