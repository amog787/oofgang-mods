.class Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;
.super Landroid/os/Handler;
.source "OPPowerOffPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->getNButton()Landroid/widget/Button;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->getPButton()Landroid/widget/Button;

    move-result-object v1

    .line 201
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$300(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result p0

    goto/16 :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result p1

    if-lez p1, :cond_3

    .line 209
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$410(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 212
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Lcom/oneplus/settings/ui/OPTimerDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_a

    .line 220
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 221
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    .line 223
    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 229
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result p1

    if-lez p1, :cond_7

    .line 230
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$610(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    if-eqz v1, :cond_6

    .line 232
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->oneplus_timer_shutdown_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    .line 233
    invoke-static {v6}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    .line 232
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 235
    :cond_6
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 236
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_a

    .line 241
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$700(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 242
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 243
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$800(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    const-string v0, "OPPowerOffPromptActivity"

    if-eqz p1, :cond_8

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel auto shutdown while phone state is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    goto :goto_0

    :cond_8
    const-string p0, "Perform auto shutdown"

    .line 248
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 252
    :cond_9
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_a
    :goto_0
    return-void
.end method
