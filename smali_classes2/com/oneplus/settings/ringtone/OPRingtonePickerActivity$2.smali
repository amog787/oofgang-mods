.class Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "OPRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 511
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 512
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 513
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    iget p2, p1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 514
    invoke-virtual {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 515
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->access$000(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 516
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->access$000(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-virtual {p2}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSim1Enable()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->access$100(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 519
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->access$100(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getSim2Enable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
