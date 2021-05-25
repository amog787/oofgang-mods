.class Lcom/oneplus/android/server/iris/OpIrisService$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/iris/OpIrisService;->setUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/iris/OpIrisService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/iris/OpIrisService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService$sis;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$sis;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$200(Lcom/oneplus/android/server/iris/OpIrisService;)Lcom/oneplus/android/server/iris/cno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/cno;->zgw()V

    goto :goto_1

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$sis;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$200(Lcom/oneplus/android/server/iris/OpIrisService;)Lcom/oneplus/android/server/iris/cno;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->vdb(Z)V

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$sis;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$200(Lcom/oneplus/android/server/iris/OpIrisService;)Lcom/oneplus/android/server/iris/cno;

    move-result-object p0

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
