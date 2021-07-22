.class Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;
.super Landroid/os/Handler;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V
    .locals 0

    .line 736
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 739
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 740
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 743
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .line 744
    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 747
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    :cond_2
    :goto_0
    return-void
.end method
