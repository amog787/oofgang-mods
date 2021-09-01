.class Lcom/oneplus/settings/ui/OPTimerDialog$2;
.super Landroid/os/Handler;
.source "OPTimerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPTimerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPTimerDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPTimerDialog;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 144
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$100(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result p1

    if-lez p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$110(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    .line 148
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v2}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v4}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$100(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Lcom/oneplus/settings/ui/OPTimerDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$300(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 158
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 159
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    .line 161
    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$400(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result p1

    if-lez p1, :cond_6

    .line 168
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$410(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    .line 169
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 170
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 171
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u7ecf\u8fbe\u5230\u5b9a\u65f6\u5173\u673a\u65f6\u95f4,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    .line 172
    invoke-static {v4}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$400(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "s\u540e\u786e\u8ba4\u5173\u673a?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {p1, v3}, Lcom/oneplus/settings/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    .line 174
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$300(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 175
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$300(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 180
    :cond_6
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$600(Lcom/oneplus/settings/ui/OPTimerDialog;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 181
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 182
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 184
    :cond_7
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    :goto_0
    return-void
.end method
