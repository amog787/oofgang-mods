.class Lcom/oneplus/settings/OPDefaultAssistPreferenceController$4;
.super Ljava/lang/Object;
.source "OPDefaultAssistPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 302
    iput-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$4;->this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 305
    iget-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$4;->this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->access$200(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$4;->this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->access$700(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "quick_turn_on_voice_assistant"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    return-void
.end method
