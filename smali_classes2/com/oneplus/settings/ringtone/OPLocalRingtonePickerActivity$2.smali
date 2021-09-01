.class Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "OPLocalRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 176
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$000(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 177
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {p0, p2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$002(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Z)Z

    return-void

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->stopAnyPlayingRingtone()V

    .line 181
    const-class p1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "mOnItemSelectedListener position = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {p0, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$100(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;I)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {p0, p2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$100(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;I)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
