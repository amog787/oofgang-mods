.class Lcom/android/settings/notification/VolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarPreference.java"

# interfaces
.implements Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$202(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)Z

    .line 155
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$302(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)Z

    .line 156
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings/notification/VolumeSeekBarPreference;)I

    move-result p3

    invoke-interface {p1, p3, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 145
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    :cond_0
    return-void
.end method

.method public onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-static {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    :cond_0
    return-void
.end method
