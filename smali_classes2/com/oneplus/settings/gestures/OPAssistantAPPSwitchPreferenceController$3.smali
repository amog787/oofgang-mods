.class Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;
.super Ljava/lang/Object;
.source "OPAssistantAPPSwitchPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->toSelectAssistantAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;->this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 175
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.oneplus.intent.OPDefaultVoiceAssistPicker"

    .line 176
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "assistntapp"

    const-string v0, "switch"

    .line 177
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;->this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->access$300(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 180
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController$3;->this$0:Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;->access$400(Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "quick_turn_on_voice_assistant"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "off"

    .line 181
    invoke-static {p2, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
