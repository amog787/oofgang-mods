.class Lcom/android/server/OnePlusExService$zta;
.super Landroid/util/Singleton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/os/IOnePlusExService;",
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

    invoke-virtual {p0}, Lcom/android/server/OnePlusExService$zta;->zta()Lcom/oneplus/os/IOnePlusExService;

    move-result-object p0

    return-object p0
.end method

.method protected zta()Lcom/oneplus/os/IOnePlusExService;
    .locals 2

    const-string p0, "OnePlusExService"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "can\'t get service binder: OnePlusExServiceManager"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/oneplus/os/IOnePlusExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusExService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "can\'t get service interface: OnePlusExServiceManager"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method
