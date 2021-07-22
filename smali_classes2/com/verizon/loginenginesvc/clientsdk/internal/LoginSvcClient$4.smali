.class Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$4;
.super Ljava/lang/Object;
.source "LoginSvcClient.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 157
    iput-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$4;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$4;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    invoke-static {v0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->access$600(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;)V

    .line 161
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$4;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    invoke-virtual {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->handleTimeout()V

    return-void
.end method
