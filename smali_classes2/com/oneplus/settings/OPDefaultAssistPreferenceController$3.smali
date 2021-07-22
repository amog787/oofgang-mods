.class Lcom/oneplus/settings/OPDefaultAssistPreferenceController$3;
.super Ljava/lang/Object;
.source "OPDefaultAssistPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->toSelectAssistantAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$3;->this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 291
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.oneplus.intent.OPDefaultVoiceAssistPicker"

    .line 292
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "assistntapp"

    const-string v0, "switch"

    .line 293
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$3;->this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->access$500(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 296
    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$3;->this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->access$600(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "quick_turn_on_voice_assistant"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "off"

    .line 297
    invoke-static {p2, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
