.class Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;
.super Landroid/os/CountDownTimer;
.source "OPShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;JJ)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const-string v1, "ShutdownActivity"

    if-eqz v0, :cond_0

    const-string v0, "phone is incall, countdown end"

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "count down timer arrived, shutdown phone"

    .line 72
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {p0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$300(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)V

    const/4 p0, 0x0

    .line 74
    sput-object p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->sCountDownTimer:Landroid/os/CountDownTimer;

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int v1, p1

    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$002(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;I)I

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    sget v3, Lcom/android/settings/R$string;->oneplus_shutdown_message:I

    new-array v4, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 53
    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$102(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    sget v3, Lcom/android/settings/R$string;->oneplus_shutdown_message_second:I

    new-array v4, v2, [Ljava/lang/Object;

    .line 58
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 56
    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;->access$102(Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDialog time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShutdownActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPShutdownActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPShutdownActivity;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    return-void
.end method
