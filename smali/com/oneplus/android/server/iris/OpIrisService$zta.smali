.class Lcom/oneplus/android/server/iris/OpIrisService$zta;
.super Landroid/util/Singleton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/iris/OpIrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/iris/IOnePlusIris;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/OpIrisService$zta;->zta()Lcom/oneplus/iris/IOnePlusIris;

    move-result-object p0

    return-object p0
.end method

.method protected zta()Lcom/oneplus/iris/IOnePlusIris;
    .locals 2

    const-string p0, "op_iris_service"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "OpIrisService"

    if-nez p0, :cond_0

    const-string v1, "can\'t get service binder: IOnePlusIris"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/oneplus/iris/IOnePlusIris$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/iris/IOnePlusIris;

    move-result-object p0

    if-nez p0, :cond_1

    const-string v1, "can\'t get service interface: IOnePlusIris"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method
