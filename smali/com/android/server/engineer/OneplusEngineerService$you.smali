.class Lcom/android/server/engineer/OneplusEngineerService$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerService;->you(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getPcbNumber"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v2}, Lcom/android/server/engineer/OneplusEngineerService;->ssp(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/engineer/OneplusEngineerService;->rtg(Lcom/android/server/engineer/OneplusEngineerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v2}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/engineer/OneplusEngineerService;->rtg(Lcom/android/server/engineer/OneplusEngineerService;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string p1, "gsm.serial"

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$you;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
