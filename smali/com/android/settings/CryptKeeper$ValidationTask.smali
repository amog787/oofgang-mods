.class Lcom/android/settings/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 290
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "CryptKeeper"

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "Validating encryption state."

    .line 292
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v1

    iput v1, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->state:I

    const/4 p0, 0x1

    if-ne v1, p0, :cond_0

    const-string p0, "Unexpectedly in CryptKeeper even though there is no encryption."

    .line 295
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 298
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Unable to get encryption state properly"

    .line 300
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 285
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->access$602(Lcom/android/settings/CryptKeeper;Z)Z

    .line 308
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "CryptKeeper"

    if-eqz p1, :cond_1

    const-string p1, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    .line 309
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p1, v1}, Lcom/android/settings/CryptKeeper;->access$702(Lcom/android/settings/CryptKeeper;Z)Z

    .line 311
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    iget v0, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->state:I

    const/4 v2, -0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/android/settings/CryptKeeper;->access$802(Lcom/android/settings/CryptKeeper;Z)Z

    goto :goto_1

    :cond_1
    const-string p1, "Encryption state validated. Proceeding to configure UI"

    .line 313
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_1
    iget-object p0, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {p0}, Lcom/android/settings/CryptKeeper;->access$900(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 285
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
