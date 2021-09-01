.class Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;
.super Landroid/os/AsyncTask;
.source "AutoCalibrateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/network/calibrate/AutoCalibrateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountDayUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oneplus/security/network/calibrate/AutoCalibrateService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/security/network/calibrate/AutoCalibrateService;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;

    invoke-static {p0, p1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->access$000(Lcom/oneplus/security/network/calibrate/AutoCalibrateService;[Ljava/lang/Integer;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    iget-object p0, p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;

    invoke-static {p0, p1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService;->access$100(Lcom/oneplus/security/network/calibrate/AutoCalibrateService;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateService$AccountDayUpdateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
