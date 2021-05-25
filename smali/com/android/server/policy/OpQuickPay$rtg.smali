.class Lcom/android/server/policy/OpQuickPay$rtg;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpQuickPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "rtg"
.end annotation


# static fields
.field static final rtg:I = 0x4

.field static final sis:I = 0x2

.field static final tsu:I = 0x3

.field static final you:I = 0x1


# instance fields
.field final synthetic zta:Lcom/android/server/policy/OpQuickPay;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OpQuickPay;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpQuickPay$rtg;->zta:Lcom/android/server/policy/OpQuickPay;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_3

    :cond_0
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/policy/OpQuickPay$rtg;->zta:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mContext:Landroid/content/Context;

    const-string v1, "QuickPay_APPS_Config"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay$rtg;->zta:Lcom/android/server/policy/OpQuickPay;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/policy/OpQuickPay;->access$100(Lcom/android/server/policy/OpQuickPay;Lorg/json/JSONArray;)V

    goto :goto_3

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay$rtg;->zta:Lcom/android/server/policy/OpQuickPay;

    invoke-static {p0}, Lcom/android/server/policy/OpQuickPay;->access$500(Lcom/android/server/policy/OpQuickPay;)V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/IApplicationToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_3

    :try_start_1
    invoke-interface {p1}, Landroid/view/IApplicationToken;->addNoHistory()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    :goto_0
    invoke-static {}, Lcom/android/server/policy/OpQuickPay;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not add NoHistory for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay$rtg;->zta:Lcom/android/server/policy/OpQuickPay;

    invoke-static {p0}, Lcom/android/server/policy/OpQuickPay;->access$600(Lcom/android/server/policy/OpQuickPay;)V

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay$rtg;->zta:Lcom/android/server/policy/OpQuickPay;

    iget v0, p0, Lcom/android/server/policy/OpQuickPay;->mQuickPayDefault:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/policy/OpQuickPay;->access$300(Lcom/android/server/policy/OpQuickPay;IZZ)V

    :goto_3
    return-void
.end method
