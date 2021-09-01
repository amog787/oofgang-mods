.class public Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;
.super Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;
.source "MhsAuthorizedClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;Ljava/lang/Integer;Landroid/os/Looper;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p3, p4}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;-><init>(Landroid/content/Context;Ljava/lang/Integer;Landroid/os/Looper;)V

    .line 32
    iput-object p2, p0, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;->mCallback:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    return-void
.end method


# virtual methods
.method protected buildJsonRequest()Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    invoke-super {p0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->buildJsonRequest()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method protected getOperationName()Ljava/lang/String;
    .locals 0

    const-string p0, "MobileHotspotAuthorized"

    return-object p0
.end method

.method protected handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;->mCallback:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    const/16 p2, 0x64

    invoke-interface {p0, p2, p1}, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method protected handleResponse(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "result-code"

    const/16 v1, -0x63

    .line 48
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "message"

    .line 49
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile-hotspot-authorized"

    const/4 v3, 0x0

    .line 50
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v0, :cond_0

    .line 53
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;->mCallback:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    invoke-interface {p0, v0, v1}, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 55
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;->mCallback:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    const/16 p1, 0x64

    const-string v0, "missing mobile hotspot status"

    invoke-interface {p0, p1, v0}, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;->mCallback:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    invoke-interface {p0, v3}, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;->onSuccess(Z)V

    :goto_0
    return-void
.end method

.method protected handleTimeout()V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;->mCallback:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    invoke-interface {p0}, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;->onTimeout()V

    return-void
.end method
