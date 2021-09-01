.class Lcom/oneplus/settings/OPMemberController$1;
.super Ljava/lang/Object;
.source "OPMemberController.java"

# interfaces
.implements Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPMemberController;->getAccessToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPMemberController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPMemberController;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/oneplus/settings/OPMemberController$1;->this$0:Lcom/oneplus/settings/OPMemberController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 202
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public success(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "access_token"

    .line 185
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 187
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 189
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/OPMemberController$1;->this$0:Lcom/oneplus/settings/OPMemberController;

    invoke-static {v0}, Lcom/oneplus/settings/OPMemberController;->access$000(Lcom/oneplus/settings/OPMemberController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    iget-object p0, p0, Lcom/oneplus/settings/OPMemberController$1;->this$0:Lcom/oneplus/settings/OPMemberController;

    invoke-static {p0, p2}, Lcom/oneplus/settings/OPMemberController;->access$100(Lcom/oneplus/settings/OPMemberController;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
