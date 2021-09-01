.class public Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;
.super Landroid/os/AsyncTask;
.source "ExtendedNetworkList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ExtendedNetworkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtenderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/settings/network/ExtendedNetworkList;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ExtendedNetworkList;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;->this$0:Lcom/android/settings/network/ExtendedNetworkList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 196
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 191
    check-cast p1, [[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;->doInBackground([[Ljava/lang/String;)[Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([[Ljava/lang/String;)[Ljava/lang/Long;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;->this$0:Lcom/android/settings/network/ExtendedNetworkList;

    invoke-static {p0}, Lcom/android/settings/network/ExtendedNetworkList;->access$100(Lcom/android/settings/network/ExtendedNetworkList;)[Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;->onPostExecute([Ljava/lang/Long;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Long;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;->this$0:Lcom/android/settings/network/ExtendedNetworkList;

    invoke-static {v0, p1}, Lcom/android/settings/network/ExtendedNetworkList;->access$200(Lcom/android/settings/network/ExtendedNetworkList;[Ljava/lang/Long;)V

    .line 215
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 216
    iget-object p0, p0, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;->this$0:Lcom/android/settings/network/ExtendedNetworkList;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/network/ExtendedNetworkList;->access$302(Lcom/android/settings/network/ExtendedNetworkList;Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;)Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 201
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 202
    iget-object p0, p0, Lcom/android/settings/network/ExtendedNetworkList$ExtenderTask;->this$0:Lcom/android/settings/network/ExtendedNetworkList;

    invoke-static {p0}, Lcom/android/settings/network/ExtendedNetworkList;->access$000(Lcom/android/settings/network/ExtendedNetworkList;)V

    return-void
.end method
