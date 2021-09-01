.class Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;
.super Ljava/lang/Object;
.source "OPPowerOffPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 78
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPTimerDialog;->dismiss()V

    .line 86
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$002(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Lcom/oneplus/settings/ui/OPTimerDialog;)Lcom/oneplus/settings/ui/OPTimerDialog;

    :cond_0
    const/4 p1, 0x0

    const-string p2, "sys.debug.watchdog"

    .line 89
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {p1, p1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$100(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;Landroid/content/Context;)V

    .line 91
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.POWER_CONFIRM_OP_OFF"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x11000000

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$1;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
