.class Lcom/oneplus/settings/utils/OPOkHttpUtils$1;
.super Ljava/lang/Object;
.source "OPOkHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPOkHttpUtils;->postDataAsyn(Ljava/lang/String;Ljava/util/Map;Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$netCall:Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/utils/OPOkHttpUtils;Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;)V
    .locals 0

    .line 95
    iput-object p2, p0, Lcom/oneplus/settings/utils/OPOkHttpUtils$1;->val$netCall:Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oneplus/settings/utils/OPOkHttpUtils$1;->val$netCall:Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;

    invoke-interface {p0, p1, p2}, Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;->failed(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/oneplus/settings/utils/OPOkHttpUtils$1;->val$netCall:Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;

    invoke-interface {p0, p1, p2}, Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;->success(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method
