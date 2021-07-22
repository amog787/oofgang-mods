.class Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$2;
.super Lcom/verizon/loginenginesvc/IResponseCallback$Stub;
.source "LoginSvcClient.java"


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

    .line 137
    iput-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$2;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    invoke-direct {p0}, Lcom/verizon/loginenginesvc/IResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$2;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    invoke-static {p0, p1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->access$500(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Ljava/lang/String;)V

    return-void
.end method
