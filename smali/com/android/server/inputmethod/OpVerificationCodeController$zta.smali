.class Lcom/android/server/inputmethod/OpVerificationCodeController$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/OpVerificationCodeController;->initActionIfPossible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/inputmethod/OpVerificationCodeController;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/OpVerificationCodeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$zta;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-static {}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$000()Z

    move-result p1

    const-string v0, "OpVerificationCodeController"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$zta;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    const/16 v1, 0x64

    const-string v2, "commit_interval"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$102(Lcom/android/server/inputmethod/OpVerificationCodeController;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug Interval "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$zta;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$100(Lcom/android/server/inputmethod/OpVerificationCodeController;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "readIntent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const-string v3, "verification_code_str"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "sent_time_mills"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "receive_time_mills"

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object p2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$zta;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p2, v7, v8, v4, v5}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$200(Lcom/android/server/inputmethod/OpVerificationCodeController;JJ)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#######    feedbackIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$zta;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$300(Lcom/android/server/inputmethod/OpVerificationCodeController;)J

    move-result-wide v4

    invoke-static {v0, p1, v4, v5}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$400(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/String;J)V

    :cond_2
    invoke-virtual {p2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$zta;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$300(Lcom/android/server/inputmethod/OpVerificationCodeController;)J

    move-result-wide v3

    const-string p1, "cur_code_time_stamp"

    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$zta;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$500(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/cgv/you;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController$zta;->zta:Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-static {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->access$500(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/cgv/you;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/cgv/you;->oif(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method
