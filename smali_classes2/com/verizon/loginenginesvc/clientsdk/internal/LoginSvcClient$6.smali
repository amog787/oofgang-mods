.class Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$6;
.super Ljava/lang/Object;
.source "LoginSvcClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->postError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

.field final synthetic val$err:Ljava/lang/String;

.field final synthetic val$ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$6;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    iput-object p2, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$6;->val$err:Ljava/lang/String;

    iput-object p3, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$6;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$6;->this$0:Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;

    iget-object v1, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$6;->val$err:Ljava/lang/String;

    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient$6;->val$ex:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->handleError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
