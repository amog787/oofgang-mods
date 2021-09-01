.class Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;
.super Ljava/lang/Object;
.source "LoginSvcClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;


# direct methods
.method constructor <init>(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    const-string p1, "binding died"

    invoke-static {p0, p1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->access$400(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Ljava/lang/String;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    const-string p1, "null binding"

    invoke-static {p0, p1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->access$400(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    invoke-static {p1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->access$100(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    invoke-static {v0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->access$000(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iget-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    invoke-static {p2}, Lcom/verizon/loginenginesvc/ILoginEngineService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/verizon/loginenginesvc/ILoginEngineService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->access$202(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Lcom/verizon/loginenginesvc/ILoginEngineService;)Lcom/verizon/loginenginesvc/ILoginEngineService;

    .line 115
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    invoke-static {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->access$300(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$1;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    const-string p1, "service disconnected"

    invoke-static {p0, p1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->access$400(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Ljava/lang/String;)V

    return-void
.end method
