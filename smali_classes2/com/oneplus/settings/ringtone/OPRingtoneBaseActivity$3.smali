.class Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;
.super Ljava/lang/Object;
.source "OPRingtoneBaseActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 274
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->access$100(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    :cond_0
    return-void
.end method
