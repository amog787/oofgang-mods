.class Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OPDefaultAssistPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDefaultAssistPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;->this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;

    .line 158
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 171
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 172
    invoke-static {}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->access$000()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;->this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;

    invoke-static {p1}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->access$100(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "quick_turn_on_voice_assistant"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 175
    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;->this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->access$200(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    goto :goto_1

    .line 177
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/OPDefaultAssistPreferenceController$SettingObserver;->this$0:Lcom/oneplus/settings/OPDefaultAssistPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->access$200(Lcom/oneplus/settings/OPDefaultAssistPreferenceController;)Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPCustomTwoTargetPreference;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 163
    invoke-static {}, Lcom/oneplus/settings/OPDefaultAssistPreferenceController;->access$000()Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
