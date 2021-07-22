.class Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;
.super Ljava/lang/Object;
.source "ResetSystemSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->setFontStyle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;I)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->this$1:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    iput p2, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x12c

    .line 761
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 763
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 765
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->this$1:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    invoke-static {v0}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->access$600(Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->val$value:I

    const-string v2, "oem_font_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 768
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 769
    iget v1, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->val$value:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_dynamicfont"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask$1;->this$1:Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;

    invoke-static {p0}, Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;->access$600(Lcom/android/settings/ResetSystemSettings$ResetSystemSettingsTask;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/oneplus/compat/util/OpThemeNative;->enableTheme(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method
