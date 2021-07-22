.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 571
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 572
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$602(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 574
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$702(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 575
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 576
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$802(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z

    .line 578
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 579
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 582
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSeekBar()V

    :cond_1
    return-void
.end method

.method public postUpdateSlider(IIZ)V
    .locals 1

    .line 588
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
