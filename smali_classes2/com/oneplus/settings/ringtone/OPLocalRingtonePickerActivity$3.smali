.class Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;
.super Ljava/lang/Object;
.source "OPLocalRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 213
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 218
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    .line 219
    iget-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object p3, p1, Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;->mUri:Landroid/net/Uri;

    iput-object p3, p2, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 220
    invoke-static {p2, p3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$200(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Landroid/net/Uri;)V

    .line 221
    iget-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {p2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 222
    iget-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {p2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->stopThread()V

    .line 223
    iget-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$302(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    .line 225
    :cond_0
    iget-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    new-instance p3, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    iget-object p4, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p3, p4, p1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;-><init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)V

    invoke-static {p2, p3}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$302(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    .line 226
    iget-object p0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {p0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$300(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
