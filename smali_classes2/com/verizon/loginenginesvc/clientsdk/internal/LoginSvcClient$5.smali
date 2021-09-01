.class Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$5;
.super Ljava/lang/Object;
.source "LoginSvcClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->handleServiceResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

.field final synthetic val$jobj:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Lorg/json/JSONObject;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$5;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    iput-object p2, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$5;->val$jobj:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$5;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$5;->val$jobj:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->handleResponse(Lorg/json/JSONObject;)V

    return-void
.end method
